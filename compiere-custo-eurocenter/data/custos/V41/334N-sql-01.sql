insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'334N','334N - Import OA',
'',
'',
'Y',
'',
'',
'',
'N',
'A',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '334N' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '334N - Import OA', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = 'A', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '334N' ;

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'Import OA','Import OA',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'',
'334N',
'',
'M',
0,
0,
'Y',
'N',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Window where Value = 'Import OA' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Import OA', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = '', entitytype = '334N', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'Import OA' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Import OA'), 'fr_FR', 'Y', '','','Import OA'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Import OA') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Import OA' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Import OA') and ad_language = 'fr_FR';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Import OA'), 'nl_NL', 'Y', '','','Import OA'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Import OA') and ad_language = 'nl_NL');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Import OA' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Import OA') and ad_language = 'nl_NL';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'ImportOrder2','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'org.compiere.process.ImportOrder2',
'',
'334N',
'',
'',
'',
'ImportOrder2',
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
where not exists (select 1 from AD_Process where Value = 'ImportOrder2' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'org.compiere.process.ImportOrder2', description = '', entitytype = '334N', help = '', jasperreport = '', procedurename = '', name = 'ImportOrder2', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'ImportOrder2' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ImportOrder2'), 'fr_FR', 'Y', 'ImportOrder2','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ImportOrder2') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ImportOrder2',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ImportOrder2') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ImportOrder2'), 'nl_NL', 'Y', 'ImportOrder2','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ImportOrder2') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ImportOrder2',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ImportOrder2') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Processing2',(select AD_Element_ID from AD_Element where ColumnName = 'Processing2'),
(select AD_Process_ID from AD_Process where Value = 'ImportOrder2'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'334N',
1,
'',
'Process Now',
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
where not exists (select 1 from AD_Column where ColumnName = 'Processing2'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Processing2'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ImportOrder2'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '334N', fieldlength = 1, help = '', name = 'Process Now', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Processing2'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')), 'fr_FR', 'Y', 'Traiter maintenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Traiter maintenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')), 'nl_NL', 'Y', 'Process now'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process now' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_TypeOA_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_TypeOA_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'334N',
10,
'',
'Type OA',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_TypeOA_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_TypeOA_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '334N', fieldlength = 10, help = '', name = 'Type OA', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_TypeOA_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_TypeOA_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')), 'fr_FR', 'Y', 'Type OA'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_TypeOA_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type OA' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_TypeOA_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_TypeOA_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')), 'nl_NL', 'Y', 'Type OA'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_TypeOA_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type OA' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_TypeOA_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_language = 'nl_NL';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Import OA','Import OA',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Order')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Order')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Order')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Order'),
(select AD_Window_ID from AD_Window where Value = 'Import OA'),
'',
'',
'334N',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'',
10,
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'',
'N',
'Y',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'Y',
(select AD_Tab_ID from AD_Tab where Value = '')
 from dual  
where not exists (select 1 from AD_Tab where Value = 'Import OA'  and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Import OA', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Order')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Order')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Order')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Order'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Import OA'), commitwarning = '', description = '', entitytype = '334N', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Import OA'  and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')), 'fr_FR', 'Y', '','','','Import OA'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Help = '',Description = '',Name = 'Import OA' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')) and ad_language = 'fr_FR';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')), 'nl_NL', 'Y', '','','','Import OA'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')) and ad_language = 'nl_NL');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Help = '',Description = '',Name = 'Import OA' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'AD_User_ID',
'',
22,
'',
'334N',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'AD_User_ID', description = '', displaylength = 22, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','','Contact'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Contact' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Het gebruiker veld geeft een unieke gebruiker aan binnen het systeem.','Gebruikers kenmerk binnen het systeem','Gebruiker'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Het gebruiker veld geeft een unieke gebruiker aan binnen het systeem.',Description = 'Gebruikers kenmerk binnen het systeem',Name = 'Gebruiker' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Account Date',
'General Ledger Date',
7,
'',
'334N',
'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Account Date', description = 'General Ledger Date', displaylength = 7, displaylogic = '', entitytype = '334N', help = 'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique la date utilisée en comptabilité pour les écritures générées par ce document.','Date comptable','Date comptable'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique la date utilisée en comptabilité pour les écritures générées par ce document.',Description = 'Date comptable',Name = 'Date comptable' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De boekstuk datum geeft aan welke datum er wordt gebruikt voor het de grootboek mutaties die gegenereerd worden door dit document.','Boekstuk Datum.','Boekstuk Datum'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De boekstuk datum geeft aan welke datum er wordt gebruikt voor het de grootboek mutaties die gegenereerd worden door dit document.',Description = 'Boekstuk Datum.',Name = 'Boekstuk Datum' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Active',
'The record is active in the system',
1,
'',
'334N',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = '334N', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.','L''enregistrement est actif dans le système','Actif'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.',Description = 'L''enregistrement est actif dans le système',Name = 'Actif' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but availabe for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Geeft aan of het record aktief is in het systeem','Aktief'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but availabe for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Description = 'Geeft aan of het record aktief is in het systeem',Name = 'Aktief' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Activity',
'Business Activity',
22,
'',
'334N',
'Activities indicate tasks that are performed and used to utilize Activity based Costing',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Activity', description = 'Business Activity', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'Activities indicate tasks that are performed and used to utilize Activity based Costing', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Désigné les tâches utilisées dans le cadre de la comptabilité analytique.','Fiscalité','Fiscalité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Désigné les tâches utilisées dans le cadre de la comptabilité analytique.',Description = 'Fiscalité',Name = 'Fiscalité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Activiteit geeft de taken aan die zijn uitgevoerd en gebruikt zijn voor Activity Based Costing','Fiscalité','Fiscalité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Activiteit geeft de taken aan die zijn uitgevoerd en gebruikt zijn voor Activity Based Costing',Description = 'Fiscalité',Name = 'Fiscalité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Address',
'Location or Address',
22,
'',
'334N',
'The Location / Address field defines the location of an entity.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Address', description = 'Location or Address', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Location / Address field defines the location of an entity.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Définit l''adresse du tiers','Adresse','Adresse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Définit l''adresse du tiers',Description = 'Adresse',Name = 'Adresse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Het vestigingsadres veld geeft de locatie van een entiteit aan.','Vestigingsadres','Vestigingsadres'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Het vestigingsadres veld geeft de locatie van een entiteit aan.',Description = 'Vestigingsadres',Name = 'Vestigingsadres' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Address1' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Address 1',
'Address line 1 for this location',
60,
'',
'334N',
'The Address 1 identifies the address for an entity''s location',
'',
260,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Address1' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Address 1', description = 'Address line 1 for this location', displaylength = 60, displaylogic = '', entitytype = '334N', help = 'The Address 1 identifies the address for an entity''s location', obscuretype = '', seqno = 260, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Address1' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Address1' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Rue, N°','Rue, N°'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Address1' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Rue, N°',Name = 'Rue, N°' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Address1' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Address1' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','Straat + N°','Straat + N°'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Address1' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Straat + N°',Name = 'Straat + N°' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Address1' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Address2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Address 2',
'Address line 2 for this location',
60,
'',
'334N',
'The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Address2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Address 2', description = 'Address line 2 for this location', displaylength = 60, displaylogic = '', entitytype = '334N', help = 'The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Address2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Address2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'L''adresse 2 permet de complï¿½ter l''adresse, si besoin. Cela peut ï¿½tre un immeuble, un numï¿½ro d''appartement ou toute information dï¿½taillant ','Ligne 2','Ligne 2'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Address2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'L''adresse 2 permet de complï¿½ter l''adresse, si besoin. Cela peut ï¿½tre un immeuble, un numï¿½ro d''appartement ou toute information dï¿½taillant ',Description = 'Ligne 2',Name = 'Ligne 2' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Address2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Address2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Infos 2','Infos 2','Infos 2'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Address2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Infos 2',Description = 'Infos 2',Name = 'Infos 2' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Address2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Business Partner',
'Identifies a Business Partner',
22,
'',
'334N',
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
20
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Business Partner', description = 'Identifies a Business Partner', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 20 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.','Identifie un tiers','Tiers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.',Description = 'Identifie un tiers',Name = 'Tiers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Een relatie is iedereen met wie u interactie heeft. Dit omvat bijvoorbeeld leveranciers, klanten, peroneelsleden en verkopers.','Geeft een relatie aan.','Relatie'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Een relatie is iedereen met wie u interactie heeft. Dit omvat bijvoorbeeld leveranciers, klanten, peroneelsleden en verkopers.',Description = 'Geeft een relatie aan.',Name = 'Relatie' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Business Partner Key',
'Key of the Business Partner',
40,
'',
'334N',
'',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
30
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Business Partner Key', description = 'Key of the Business Partner', displaylength = 40, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 30 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Clé du tiers','Clé tiers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Clé du tiers',Name = 'Clé tiers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','Zoeksleutel van deze relatie','Relatie Zoeksleutel'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Zoeksleutel van deze relatie',Name = 'Relatie Zoeksleutel' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Campaign',
'Marketing Campaign',
22,
'',
'334N',
'The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Campaign', description = 'Marketing Campaign', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Identifie une campagne marketing.  Les projets peuvent être associés à des campagnes et les éditions permettent de faire des sélections par campagne.','Campagne marketing','Campagne'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identifie une campagne marketing.  Les projets peuvent être associés à des campagnes et les éditions permettent de faire des sélections par campagne.',Description = 'Campagne marketing',Name = 'Campagne' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De campagne geeft een uniek marketing programma aan. Projecten kunnen worden geassocieerd met een van te voren bepaald marketing campagne. Daarna kunt u rapporteren gebaseerd op een een unieke campagne.','Marketing Campagne','Campagne'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De campagne geeft een uniek marketing programma aan. Projecten kunnen worden geassocieerd met een van te voren bepaald marketing campagne. Daarna kunt u rapporteren gebaseerd op een een unieke campagne.',Description = 'Marketing Campagne',Name = 'Campagne' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Campaign_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Charge',
'Additional document charges',
22,
'',
'334N',
'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Charge', description = 'Additional document charges', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique les types de charge supplémentaires tels que l''emballage, la manutention, le stockage, etc.','Charge supplémentaires du document','Charge'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique les types de charge supplémentaires tels que l''emballage, la manutention, le stockage, etc.',Description = 'Charge supplémentaires du document',Name = 'Charge' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De kosten geeft een type van kosten aan (handling, verzenden, etc.)','Extra documentkosten.','Kosten'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De kosten geeft een type van kosten aan (handling, verzenden, etc.)',Description = 'Extra documentkosten.',Name = 'Kosten' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ChargeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Charge Name',
'Name of the Charge',
60,
'',
'334N',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ChargeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Charge Name', description = 'Name of the Charge', displaylength = 60, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ChargeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ChargeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Nom de la charge','Nom charge'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ChargeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Nom de la charge',Name = 'Nom charge' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ChargeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ChargeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','Naam van deze kost','Kosten Naam'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ChargeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Naam van deze kost',Name = 'Kosten Naam' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ChargeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'City' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'City',
'Identifies a City',
60,
'',
'334N',
'The City identifies a unique City for this Country or Region.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'City' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'City', description = 'Identifies a City', displaylength = 60, displaylogic = '', entitytype = '334N', help = 'The City identifies a unique City for this Country or Region.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'City' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'City' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Identifie une ville unique pour un pays donnï¿½ ou une rï¿½gion donnï¿½e.','Identifie une ville','Ville'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'City' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identifie une ville unique pour un pays donnï¿½ ou une rï¿½gion donnï¿½e.',Description = 'Identifie une ville',Name = 'Ville' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'City' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'City' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Geeft een woonplaats aan.','Geeft een woonplaats aan.','Woonplaats'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'City' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Geeft een woonplaats aan.',Description = 'Geeft een woonplaats aan.',Name = 'Woonplaats' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'City' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ContactValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Contact Key',
'Key of the Contact',
60,
'',
'334N',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ContactValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Contact Key', description = 'Key of the Contact', displaylength = 60, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ContactValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ContactValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Clé du contact','Clé contact'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ContactValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Clé du contact',Name = 'Clé contact' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ContactValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ContactValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','Key of the Contact','Contact Key'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ContactValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Key of the Contact',Name = 'Contact Key' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ContactValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ContactName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Contact Name',
'Business Partner Contact Name',
60,
'',
'334N',
'',
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
40
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ContactName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Contact Name', description = 'Business Partner Contact Name', displaylength = 60, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 40 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ContactName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ContactName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Nom du contact tiers','Nom contact'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ContactName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Nom du contact tiers',Name = 'Nom contact' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ContactName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ContactName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','Relatie contactpersoon naam.','Contact Persoon Naam'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ContactName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Relatie contactpersoon naam.',Name = 'Contact Persoon Naam' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ContactName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Country',
'Country',
22,
'',
'334N',
'The Country defines a Country.  Each Country must be defined before it can be used in any document.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Country', description = 'Country', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Country defines a Country.  Each Country must be defined before it can be used in any document.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique le pays.  le code d''un pays doit être créé avant d''être utilisé sur un document','Pays','Pays'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique le pays.  le code d''un pays doit être créé avant d''être utilisé sur un document',Description = 'Pays',Name = 'Pays' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Het land geeft een land aan. Elk land moet gedefinieerd zijn voordat het kan worden gebruikt in een document.','Land','Land'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Het land geeft een land aan. Elk land moet gedefinieerd zijn voordat het kan worden gebruikt in een document.',Description = 'Land',Name = 'Land' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Currency',
'The Currency for this record',
22,
'',
'334N',
'Indicates the Currency to be used when processing or reporting on this record',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Currency', description = 'The Currency for this record', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'Indicates the Currency to be used when processing or reporting on this record', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique la devise utilisée pour valoriser cet enregistrement','Devise utilisée dans cet enregistrement','Devise'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique la devise utilisée pour valoriser cet enregistrement',Description = 'Devise utilisée dans cet enregistrement',Name = 'Devise' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Geeft aan welke valuta moet worden gebruikt bij het verwerken van of het rapporteren over dit document.','De valuta voor dit document.','Valuta'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Geeft aan welke valuta moet worden gebruikt bij het verwerken van of het rapporteren over dit document.',Description = 'De valuta voor dit document.',Name = 'Valuta' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Date Ordered',
'Date of Order',
7,
'',
'334N',
'Indicates the Date an item was ordered.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Date Ordered', description = 'Date of Order', displaylength = 7, displaylogic = '', entitytype = '334N', help = 'Indicates the Date an item was ordered.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique la date à laquelle la commande a été établie','Date de la commande','Date commande'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique la date à laquelle la commande a été établie',Description = 'Date de la commande',Name = 'Date commande' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Geeft aan wanneer een order is geplaatst.','Bestel Datum.','Bestel Datum'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Geeft aan wanneer een order is geplaatst.',Description = 'Bestel Datum.',Name = 'Bestel Datum' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DatePromised' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Date Promised',
'Date Order was promised',
7,
'',
'334N',
'The Date Promised indicates the date, if any, that an Order was promised for.',
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
50
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DatePromised' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Date Promised', description = 'Date Order was promised', displaylength = 7, displaylogic = '', entitytype = '334N', help = 'The Date Promised indicates the date, if any, that an Order was promised for.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 50 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DatePromised' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DatePromised' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Spécifie la date à laquelle on a promis la livraison de la commande','Date à laquelle la livraison est prévue','Date de livraison prévue'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DatePromised' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Spécifie la date à laquelle on a promis la livraison de la commande',Description = 'Date à laquelle la livraison est prévue',Name = 'Date de livraison prévue' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DatePromised' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DatePromised' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De datum waarop de levering van de order is toegezegd.','De datum waarop de levering van de order is toegezegd.','Lever Datum'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DatePromised' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De datum waarop de levering van de order is toegezegd.',Description = 'De datum waarop de levering van de order is toegezegd.',Name = 'Lever Datum' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DatePromised' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Description',
'Optional short description of the record',
255,
'',
'334N',
'A description is limited to 255 characters.',
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
60
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Description', description = 'Optional short description of the record', displaylength = 255, displaylogic = '', entitytype = '334N', help = 'A description is limited to 255 characters.', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 60 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Description limitée à 255 caractères.','Description courte et optionnelle de l''enregistrement','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Description limitée à 255 caractères.',Description = 'Description courte et optionnelle de l''enregistrement',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Een omschrijving mag maximaal 255 karakters lang zijn.','Optionele korte omschrijving van dit document.','Omschrijving'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Een omschrijving mag maximaal 255 karakters lang zijn.',Description = 'Optionele korte omschrijving van dit document.',Name = 'Omschrijving' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Document No',
'Document sequence number of the document',
30,
'',
'334N',
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Document No', description = 'Document sequence number of the document', displaylength = 30, displaylogic = '', entitytype = '334N', help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Numéros du document','N° Pièces'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Numéros du document',Name = 'N° Pièces' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Het documentnummer is gewoonlijk gegenereerd door het systeem en bepaald door het documenttype. Als het document nog niet is opgeslagen, is het voorlopige nummer weergegeven tussen "<>".  Als het documenttype geen automatische documentnummer volgorde heeft en u creeert een nieuw document, dan is het veld document nr leeg. Dit is voor documenten die gewoonlijk een extern nummer hebben (zoals facturen van leveranciers). Als u het veld leeg laat, zal het systeem zelf een documentnummer genereren. De document nr volgorde dat wordt gebruikt voor dit reservenummer wordt beheerd in het scherm "Document nr. onderhouden".','Het volgnummer van het document.','Document Nr'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Het documentnummer is gewoonlijk gegenereerd door het systeem en bepaald door het documenttype. Als het document nog niet is opgeslagen, is het voorlopige nummer weergegeven tussen "<>".  Als het documenttype geen automatische documentnummer volgorde heeft en u creeert een nieuw document, dan is het veld document nr leeg. Dit is voor documenten die gewoonlijk een extern nummer hebben (zoals facturen van leveranciers). Als u het veld leeg laat, zal het systeem zelf een documentnummer genereren. De document nr volgorde dat wordt gebruikt voor dit reservenummer wordt beheerd in het scherm "Document nr. onderhouden".',Description = 'Het volgnummer van het document.',Name = 'Document Nr' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Document Status',
'The current status of the document',
2,
'',
'334N',
'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Document Status', description = 'The current status of the document', displaylength = 2, displaylogic = '', entitytype = '334N', help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Pour changer le statut du document, utiliser le bouton changement de statut document','Statut actuel du document','Statut document'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Pour changer le statut du document, utiliser le bouton changement de statut document',Description = 'Statut actuel du document',Name = 'Statut document' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De document status geeft de huidige status van een document weer. Als u de document status wilt wijzigen gebruikt u het gewenst document veld.','De huidige status van het document.','Document Status'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De document status geeft de huidige status van een document weer. Als u de document status wilt wijzigen gebruikt u het gewenst document veld.',Description = 'De huidige status van het document.',Name = 'Document Status' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Document Type',
'Document type or rules',
22,
'',
'334N',
'The Document Type determines document sequence and processing rules',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
70
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Document Type', description = 'Document type or rules', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 70 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Détermine la séquence du document  et le mode de traitement.','Type Document','Type document'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Détermine la séquence du document  et le mode de traitement.',Description = 'Type Document',Name = 'Type document' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Het document type geeft de document volgnummering en verwerkingsregels aan.','Document type of verwerekingsregels','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Het document type geeft de document volgnummering en verwerkingsregels aan.',Description = 'Document type of verwerekingsregels',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocTypeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Document Type Name',
'Name of the Document Type',
60,
'',
'334N',
'',
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
80
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocTypeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Document Type Name', description = 'Name of the Document Type', displaylength = 60, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 80 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocTypeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocTypeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Nom du type de document','Nom type de document'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocTypeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Nom du type de document',Name = 'Nom type de document' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocTypeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocTypeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','Naam van het document type','Document Type Naam'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocTypeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Naam van het document type',Name = 'Document Type Naam' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocTypeName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'EMail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'EMail',
'',
255,
'',
'334N',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'EMail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'EMail', description = '', displaylength = 255, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'EMail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EMail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','','EMail'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EMail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'EMail' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EMail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EMail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Email adres van deze relatie','Email','Email'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EMail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Email adres van deze relatie',Description = 'Email',Name = 'Email' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'EMail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'FreightAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Freight Amount',
'Freight Amount',
22,
'',
'334N',
'The Freight Amount indicates the amount charged for Freight in the document currency.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'FreightAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Freight Amount', description = 'Freight Amount', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Freight Amount indicates the amount charged for Freight in the document currency.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'FreightAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'FreightAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique le montant des frais de transport dans la devise du document..','Montant transport','Montant transport'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'FreightAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique le montant des frais de transport dans la devise du document..',Description = 'Montant transport',Name = 'Montant transport' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'FreightAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'FreightAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Geeft aan welke transportkosten in rekening worden gebracht in de valuta van het document.','Transportkosten.','Transportkosten'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'FreightAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Geeft aan welke transportkosten in rekening worden gebracht in de valuta van het document.',Description = 'Transportkosten.',Name = 'Transportkosten' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'FreightAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Shipper_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Freight Carrier',
'Method or manner of product delivery',
22,
'',
'334N',
'The Freight Carrier indicates the method of delivering product',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Shipper_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Freight Carrier', description = 'Method or manner of product delivery', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Freight Carrier indicates the method of delivering product', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Shipper_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Shipper_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Le transporteur indique la méthode de livraison des articles','Méthode d''expédition ','Transporteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Shipper_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Le transporteur indique la méthode de livraison des articles',Description = 'Méthode d''expédition ',Name = 'Transporteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Shipper_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Shipper_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De transporteur geeft de wijze of methode van zenden aan.','Wijze of methode van product zending.','Transporteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Shipper_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De transporteur geeft de wijze of methode van zenden aan.',Description = 'Wijze of methode van product zending.',Name = 'Transporteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Shipper_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CountryCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'ISO Country Code',
'Upper-case two-letter alphabetic ISO Country code according to ISO 3166-1 - http://www.chemie.fu-berlin.de/diverse/doc/ISO_3166.html',
2,
'',
'334N',
'For details - http://www.din.de/gremien/nas/nabd/iso3166ma/codlstp1.html or - http://www.unece.org/trade/rec/rec03en.htm',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CountryCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'ISO Country Code', description = 'Upper-case two-letter alphabetic ISO Country code according to ISO 3166-1 - http://www.chemie.fu-berlin.de/diverse/doc/ISO_3166.html', displaylength = 2, displaylogic = '', entitytype = '334N', help = 'For details - http://www.din.de/gremien/nas/nabd/iso3166ma/codlstp1.html or - http://www.unece.org/trade/rec/rec03en.htm', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CountryCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CountryCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Pour plus d''information veuillez consulter - http://www.din.de/gremien/nas/nabd/iso3166ma/codlstp1.html ou - http://www.unece.org/trade/rec/rec03en.htm','Code ISO Pays composï¿½ de 2 lettres majuscule selon le standard ISO 3166-1 - http://www.chemie.fu-berlin.de/diverse/doc/ISO_3166.html','ISO Pays'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CountryCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Pour plus d''information veuillez consulter - http://www.din.de/gremien/nas/nabd/iso3166ma/codlstp1.html ou - http://www.unece.org/trade/rec/rec03en.htm',Description = 'Code ISO Pays composï¿½ de 2 lettres majuscule selon le standard ISO 3166-1 - http://www.chemie.fu-berlin.de/diverse/doc/ISO_3166.html',Name = 'ISO Pays' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CountryCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CountryCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Voor details - http://www.din.de/gremien/nas/nabd/iso3166ma/codlstp1.html of - http://www.unece.org/trade/rec/rec03en.htm','Twee hoofdletters alpha-numerieke ISO landen code volgens ISO 3166-1 - http://www.chemie.fu-berlin.de/diverse/doc/ISO_3166.html','ISO Land'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CountryCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Voor details - http://www.din.de/gremien/nas/nabd/iso3166ma/codlstp1.html of - http://www.unece.org/trade/rec/rec03en.htm',Description = 'Twee hoofdletters alpha-numerieke ISO landen code volgens ISO 3166-1 - http://www.chemie.fu-berlin.de/diverse/doc/ISO_3166.html',Name = 'ISO Land' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CountryCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'I_IsImported',
'',
1,
'',
'334N',
'',
'',
240,
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
90
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'I_IsImported', description = '', displaylength = 1, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 240, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 90 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','','Importé'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Importé' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De geimporteerd checkbox geeft aan of deze import is verwerkt.','Deze import is verwerkt.','Geimporteerd'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De geimporteerd checkbox geeft aan of deze import is verwerkt.',Description = 'Deze import is verwerkt.',Name = 'Geimporteerd' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Import Error Message',
'Messages generated from import process',
2000,
'',
'334N',
'The Import Error Message displays any error messages generated during the import process.',
'',
250,
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
100
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Import Error Message', description = 'Messages generated from import process', displaylength = 2000, displaylogic = '', entitytype = '334N', help = 'The Import Error Message displays any error messages generated during the import process.', obscuretype = '', seqno = 250, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 100 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Affiche les messages d''erreurs générés lors de l''import des données','Message généré lors de l''import des données','Message d''erreur lié à l''import'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Affiche les messages d''erreurs générés lors de l''import des données',Description = 'Message généré lors de l''import des données',Name = 'Message d''erreur lié à l''import' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Het import fout melding veld geeft foutmeldingen die gedurende het import proces worden gegenereerd.','Melding uit het import proces.','Import Fout Melding'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Het import fout melding veld geeft foutmeldingen die gedurende het import proces worden gegenereerd.',Description = 'Melding uit het import proces.',Name = 'Import Fout Melding' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'I_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Import Order',
'Import Orders',
22,
'',
'334N',
'The identifier of the Import Order',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Import Order', description = 'Import Orders', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The identifier of the Import Order', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Importer les ordres','Importer les ordres'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Importer les ordres',Name = 'Importer les ordres' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','Importeer Orders','Importeer Orders'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Importeer Orders',Name = 'Importeer Orders' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'BillTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Invoice To',
'Bill to Address',
22,
'',
'334N',
'The Bill/Invoice To indicates the address to use when remitting bills',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'BillTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Invoice To', description = 'Bill to Address', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Bill/Invoice To indicates the address to use when remitting bills', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'BillTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BillTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique l''adresse où sera envoyée la facture','Adresse de facturation','Adr. Facturation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BillTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique l''adresse où sera envoyée la facture',Description = 'Adresse de facturation',Name = 'Adr. Facturation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BillTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BillTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Het factuur adres geeft aan welk adres moeten worden gebruikt voor het versturen van facturen.','Factuur Adres.','Factuur Adres'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BillTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Het factuur adres geeft aan welk adres moeten worden gebruikt voor het versturen van facturen.',Description = 'Factuur Adres.',Name = 'Factuur Adres' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BillTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'LineDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Line Description',
'Description of the Line',
255,
'',
'334N',
'',
'',
190,
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
110
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'LineDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Line Description', description = 'Description of the Line', displaylength = 255, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 190, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 110 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'LineDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'LineDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Description de la ligne','Description ligne'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'LineDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Description de la ligne',Name = 'Description ligne' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'LineDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'LineDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','Omschrijving van de regel','Regel Omschrijving'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'LineDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Omschrijving van de regel',Name = 'Regel Omschrijving' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'LineDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Line No',
'Unique line for this document',
10,
'',
'334N',
'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Line No', description = 'Unique line for this document', displaylength = 10, displaylogic = '', entitytype = '334N', help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Définit l''ordre d''affichage des lignes du document.','N° de ligne unique pour ce document','N° ligne'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Définit l''ordre d''affichage des lignes du document.',Description = 'N° de ligne unique pour ce document',Name = 'N° ligne' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Een uniek order regel nummer voor dit document. Tevens geeft het regel nummer de volgorde van weergave binnen een document aan.','Een uniek order regel nummer voor dit document','Regel nr.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Een uniek order regel nummer voor dit document. Tevens geeft het regel nummer de volgorde van weergave binnen een document aan.',Description = 'Een uniek order regel nummer voor dit document',Name = 'Regel nr.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Name',
'Alphanumeric identifier of the entity',
60,
'',
'334N',
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Name', description = 'Alphanumeric identifier of the entity', displaylength = 60, displaylogic = '', entitytype = '334N', help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Le nom de l''entitï¿½ (enregistrement) est utilisï¿½ comme clï¿½ de recherche par dï¿½faut en complï¿½ment de la clï¿½ de recherche. La longueur maximale permise est de 60 caractï¿½res.','Identification alphanumï¿½rique de l''entitï¿½','Nom'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Le nom de l''entitï¿½ (enregistrement) est utilisï¿½ comme clï¿½ de recherche par dï¿½faut en complï¿½ment de la clï¿½ de recherche. La longueur maximale permise est de 60 caractï¿½res.',Description = 'Identification alphanumï¿½rique de l''entitï¿½',Name = 'Nom' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De naam van een entiteit (record) wordt gebruikt als een standaard zoek optio naast de zoeksleutel. De naam is maximaal 60 karakters lang.','Alphanumerieke identificering van de entiteit.','Naam'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De naam van een entiteit (record) wordt gebruikt als een standaard zoek optio naast de zoeksleutel. De naam is maximaal 60 karakters lang.',Description = 'Alphanumerieke identificering van de entiteit.',Name = 'Naam' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Ordre d''achat'),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Order',
'Order',
22,
'',
'334N',
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
'',
200,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Ordre d''achat'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Order', description = 'Order', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', obscuretype = '', seqno = 200, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Identificateur unique d''une commande. Contrôlé via les documents, et dépendant du type de ceux-ci (compteur différent par type de document)','Ordre de vente','Ordre de vente'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identificateur unique d''une commande. Contrôlé via les documents, et dépendant du type de ceux-ci (compteur différent par type de document)',Description = 'Ordre de vente',Name = 'Ordre de vente' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'The Sales Order ID is a unique identifier of a Sales Order.  This is controlled by the document sequence for this document type.','Verkoop Order','Verkoop Order'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Sales Order ID is a unique identifier of a Sales Order.  This is controlled by the document sequence for this document type.',Description = 'Verkoop Order',Name = 'Verkoop Order' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Order Line',
'Order Line',
22,
'',
'334N',
'The line on an order',
'',
210,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Order Line', description = 'Order Line', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The line on an order', obscuretype = '', seqno = 210, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Identifie de manière unique la ligne de la commande de vente.','Ligne commande de vente','Ligne commande de vente'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identifie de manière unique la ligne de la commande de vente.',Description = 'Ligne commande de vente',Name = 'Ligne commande de vente' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De verkoop order regel is een uniek kenmerk voor een regel in een order.','Verkoop Order Regel','Verkoop Order Regel'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De verkoop order regel is een uniek kenmerk voor een regel in een order.',Description = 'Verkoop Order Regel',Name = 'Verkoop Order Regel' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Order Reference',
'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner',
60,
'',
'334N',
'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',
'',
110,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Order Reference', description = 'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner', displaylength = 60, displaylogic = '', entitytype = '334N', help = 'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)','Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)','Référence commande'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)',Description = 'Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)',Name = 'Référence commande' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De order referentie is de order referentie van de relatie voor deze specifieke transactie. Vaak worden er inkoop order nummers gegeven om af te drukken op facturen voor makkelijke herkenning. Een standaard nummer kan worden ingesteld in het relatie scherm.','Transactie referentie nummer (verkoop order, inkoop order) van uw relatie.','Order Referentie'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De order referentie is de order referentie van de relatie voor deze specifieke transactie. Vaak worden er inkoop order nummers gegeven om af te drukken op facturen voor makkelijke herkenning. Een standaard nummer kan worden ingesteld in het relatie scherm.',Description = 'Transactie referentie nummer (verkoop order, inkoop order) van uw relatie.',Name = 'Order Referentie' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'334N',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'',
30,
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
120
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 120 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).','Etablissement au sein d''une société','Organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).',Description = 'Etablissement au sein d''une société',Name = 'Organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Organisatie'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Description = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Name = 'Organisatie' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Organization Key',
'Key of the Organization',
40,
'',
'334N',
'',
'',
20,
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
130
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Organization Key', description = 'Key of the Organization', displaylength = 40, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 130 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Clé de l''organisation','Clé Org'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Clé de l''organisation',Name = 'Clé Org' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','Sleutel van de organisatie','Organisatie Sleutel'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Sleutel van de organisatie',Name = 'Organisatie Sleutel' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Partner Location',
'Identifies the (ship to) address for this Business Partner',
22,
'',
'334N',
'The Partner address indicates the location of a Business Partner',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Partner Location', description = 'Identifies the (ship to) address for this Business Partner', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Partner address indicates the location of a Business Partner', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Définit l''adresse du tiers','Identifie l''adresse du tiers','Adresse du tiers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Définit l''adresse du tiers',Description = 'Identifie l''adresse du tiers',Name = 'Adresse du tiers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Geeft het adres aan waar deze relatie is gevestigd.','Geeft het adres aan waar deze relatie is gevestigd.','Relatie Adres'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Geeft het adres aan waar deze relatie is gevestigd.',Description = 'Geeft het adres aan waar deze relatie is gevestigd.',Name = 'Relatie Adres' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Payment Method',
'How you pay the invoice',
1,
'',
'334N',
'The Payment Method indicates the method of invoice payment.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Payment Method', description = 'How you pay the invoice', displaylength = 1, displaylogic = '', entitytype = '334N', help = 'The Payment Method indicates the method of invoice payment.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique le mode de paiement pour cette facture','Mode de paiement pour cette facture','Mode de paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique le mode de paiement pour cette facture',Description = 'Mode de paiement pour cette facture',Name = 'Mode de paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De betaal wijze geeft aan op welke methode een factuur wordt betaald.','Wijze van betalen aan u.','Betaal WIjze'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De betaal wijze geeft aan op welke methode een factuur wordt betaald.',Description = 'Wijze van betalen aan u.',Name = 'Betaal WIjze' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PaymentRuleName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Payment Rule Name',
'Name of the Payment Rule',
60,
'',
'334N',
'If you enter/provide the Payment Rule directly, this name will be ignored; otherwise the Name is used to lookup the correct Payment Rule.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PaymentRuleName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Payment Rule Name', description = 'Name of the Payment Rule', displaylength = 60, displaylogic = '', entitytype = '334N', help = 'If you enter/provide the Payment Rule directly, this name will be ignored; otherwise the Name is used to lookup the correct Payment Rule.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PaymentRuleName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentRuleName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Nom de la règle de paiement','Nom règle de paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentRuleName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Nom de la règle de paiement',Name = 'Nom règle de paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentRuleName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentRuleName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'If you enter/provide the Payment Rule directly, this name will be ignored, otherwise the Name is used  to lookup the correct Payment Rule.','Name of the Payment Rule','Payment Rule Name'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentRuleName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'If you enter/provide the Payment Rule directly, this name will be ignored, otherwise the Name is used  to lookup the correct Payment Rule.',Description = 'Name of the Payment Rule',Name = 'Payment Rule Name' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentRuleName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_PaymentTerm_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Payment Term',
'The terms of Payment (timing, discount)',
22,
'',
'334N',
'Payment Terms identify the method and timing of payment.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_PaymentTerm_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Payment Term', description = 'The terms of Payment (timing, discount)', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'Payment Terms identify the method and timing of payment.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_PaymentTerm_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_PaymentTerm_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Identifie la méthode et le délai de paiement pour cette transaction.','Délai de paiement pour cette transaction','Délai de paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_PaymentTerm_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identifie la méthode et le délai de paiement pour cette transaction.',Description = 'Délai de paiement pour cette transaction',Name = 'Délai de paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_PaymentTerm_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_PaymentTerm_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De betalingsconditie geeft de timing en wijze van betalen aan voor deze transactie.','De betalingsconditie voor deze transactie.','Betalingsconditie'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_PaymentTerm_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De betalingsconditie geeft de timing en wijze van betalen aan voor deze transactie.',Description = 'De betalingsconditie voor deze transactie.',Name = 'Betalingsconditie' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_PaymentTerm_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PaymentTermValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Payment Term Key',
'Key of the Payment Term',
40,
'',
'334N',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PaymentTermValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Payment Term Key', description = 'Key of the Payment Term', displaylength = 40, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PaymentTermValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentTermValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Clé terme de paiement','Clé terme de paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentTermValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Clé terme de paiement',Name = 'Clé terme de paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentTermValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentTermValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','Zoeksleutel van de betalingsconditie','Betaling Conditie Zoeksleutel'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentTermValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Zoeksleutel van de betalingsconditie',Name = 'Betaling Conditie Zoeksleutel' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PaymentTermValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Phone' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Phone',
'Identifies a telephone number',
40,
'',
'334N',
'The Phone field identifies a telephone number',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Phone' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Phone', description = 'Identifies a telephone number', displaylength = 40, displaylogic = '', entitytype = '334N', help = 'The Phone field identifies a telephone number', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Phone' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Phone' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique le numéro de téléphone','Indique le numéro de téléphone','Téléphone'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Phone' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique le numéro de téléphone',Description = 'Indique le numéro de téléphone',Name = 'Téléphone' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Phone' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Phone' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Geeft een telefoonnummer aan.','Geeft een telefoonnummer aan.','Telefoon'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Phone' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Geeft een telefoonnummer aan.',Description = 'Geeft een telefoonnummer aan.',Name = 'Telefoon' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Phone' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Price List',
'Unique identifier of a Price List',
22,
'',
'334N',
'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Price List', description = 'Unique identifier of a Price List', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Les tarifs sont utilisés pour déterminer les prix de vente, d''achats et les marges','Identifiant unique du tarif','Tarif'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Les tarifs sont utilisés pour déterminer les prix de vente, d''achats et les marges',Description = 'Identifiant unique du tarif',Name = 'Tarif' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Prijslijsten worden gebruikt om prijzen, marges en kosten voor ingekochte en verkochte items vast te leggen.','Geeft een prijslijst aan.','Prijslijst'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Prijslijsten worden gebruikt om prijzen, marges en kosten voor ingekochte en verkochte items vast te leggen.',Description = 'Geeft een prijslijst aan.',Name = 'Prijslijst' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Data processing'),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'ImportOrder2',
'',
1,
'',
'334N',
'',
'',
220,
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
140
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Data processing'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'ImportOrder2', description = '', displaylength = 1, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 220, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 140 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','','Importer'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Importer' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Processed',
'The document has been processed',
1,
'',
'334N',
'The Processed checkbox indicates that a document has been processed.',
'',
230,
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
150
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Processed', description = 'The document has been processed', displaylength = 1, displaylogic = '', entitytype = '334N', help = 'The Processed checkbox indicates that a document has been processed.', obscuretype = '', seqno = 230, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 150 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique que ce document a été traité.','Ce document a été traité','Traité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique que ce document a été traité.',Description = 'Ce document a été traité',Name = 'Traité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'The Processed checkbox indicates that a document has been processed. De verwerkt checkbox geeft aan dat een document is verwerkt.','Het document is verwerkt.','Verwerkt'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Processed checkbox indicates that a document has been processed. De verwerkt checkbox geeft aan dat een document is verwerkt.',Description = 'Het document is verwerkt.',Name = 'Verwerkt' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Product',
'Product, Service, Item',
22,
'',
'334N',
'Identifies an item which is either purchased or sold in this organization.',
'',
160,
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
160
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Product', description = 'Product, Service, Item', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'Identifies an item which is either purchased or sold in this organization.', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 160 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Identifie un article vendu ou acheté par cette organisation.','Produit service etc?','Article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identifie un article vendu ou acheté par cette organisation.',Description = 'Produit service etc?',Name = 'Article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Geeft een item aan dat  ofwel gekocht, ofwel verkocht wordt binnen deze organisatie.','Product, service of item.','Product'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Geeft een item aan dat  ofwel gekocht, ofwel verkocht wordt binnen deze organisatie.',Description = 'Product, service of item.',Name = 'Product' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Product Key',
'Key of the Product',
40,
'',
'334N',
'',
'',
150,
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
170
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Product Key', description = 'Key of the Product', displaylength = 40, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 170 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Générer une liste de comptage uniquement pour les valeurs (vous pouvez utiliser %)','Seulement avec les valeurs'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Générer une liste de comptage uniquement pour les valeurs (vous pouvez utiliser %)',Name = 'Seulement avec les valeurs' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','Genereer een tellijst voor alleen deze product waarde (u kunt % gebruiken).','Alleen Product Waarde'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Genereer een tellijst voor alleen deze product waarde (u kunt % gebruiken).',Name = 'Alleen Product Waarde' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Project',
'Financial Project',
22,
'',
'334N',
'A Project allows you to track and control internal or external activities.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Project', description = 'Financial Project', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'A Project allows you to track and control internal or external activities.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Project ID is a user defined identifier for a Project','Code d''un projet unique','Projet'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Project ID is a user defined identifier for a Project',Description = 'Code d''un projet unique',Name = 'Projet' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Geeft een project aan.','Geeft een project aan.','Project'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Geeft een project aan.',Description = 'Geeft een project aan.',Name = 'Project' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Project_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Quantity Delivered',
'Quantity Delivered',
10,
'',
'334N',
'The Quantity Delivered indicates the quantity of a product that has been delivered.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Quantity Delivered', description = 'Quantity Delivered', displaylength = 10, displaylogic = '', entitytype = '334N', help = 'The Quantity Delivered indicates the quantity of a product that has been delivered.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique la quantité d''un article qui a été livrée','Quantité livrée','Quantité livrée'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique la quantité d''un article qui a été livrée',Description = 'Quantité livrée',Name = 'Quantité livrée' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Bestelde hoeveelheid geeft aan hoeveel er van een product is geleverd.','Geleverde Hoeveelheid.','Geleverde Hoeveelheid'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Bestelde hoeveelheid geeft aan hoeveel er van een product is geleverd.',Description = 'Geleverde Hoeveelheid.',Name = 'Geleverde Hoeveelheid' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Quantity Invoiced',
'Invoiced Quantity',
10,
'',
'334N',
'The Invoiced Quantity indicates the quantity of a product that has been invoiced.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Quantity Invoiced', description = 'Invoiced Quantity', displaylength = 10, displaylogic = '', entitytype = '334N', help = 'The Invoiced Quantity indicates the quantity of a product that has been invoiced.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique la quantité d''un article qui a été facturée.','Quantité facturée','Quantité facturée'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique la quantité d''un article qui a été facturée.',Description = 'Quantité facturée',Name = 'Quantité facturée' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Geeft aan hoeveel er van een product al gefactureerd is.','Gefactureerde Hoeveelheid.','Gefactureerde Hoeveelheid'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Geeft aan hoeveel er van een product al gefactureerd is.',Description = 'Gefactureerde Hoeveelheid.',Name = 'Gefactureerde Hoeveelheid' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Quantity Ordered',
'Ordered Quantity',
22,
'',
'334N',
'The Ordered Quantity indicates the quantity of a product that was ordered.',
'',
170,
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
180
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Quantity Ordered', description = 'Ordered Quantity', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Ordered Quantity indicates the quantity of a product that was ordered.', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 180 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique la quantité commandée pour un article.','Quantité commandée','Quantité commandée'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique la quantité commandée pour un article.',Description = 'Quantité commandée',Name = 'Quantité commandée' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Bestelde hoeveelheid geeft aan hoeveel er van een product is besteld.','Bestelde Hoeveelheid.','Bestelde Hoeveelheid'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Bestelde hoeveelheid geeft aan hoeveel er van een product is besteld.',Description = 'Bestelde Hoeveelheid.',Name = 'Bestelde Hoeveelheid' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Referenced Order',
'Reference to corresponding Sales/Purchase Order',
10,
'',
'334N',
'This provides a reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa. Used by Counter Document functionality',
'',
0,
0,
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
10
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Referenced Order', description = 'Reference to corresponding Sales/Purchase Order', displaylength = 10, displaylogic = '', entitytype = '334N', help = 'This provides a reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa. Used by Counter Document functionality', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 10 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Référence de la ligne de commande client correspondant à l''ordre d''achat ou vice versa.','Référence à la commande / ordre d''achat correspondant','Référence commande'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Référence de la ligne de commande client correspondant à l''ordre d''achat ou vice versa.',Description = 'Référence à la commande / ordre d''achat correspondant',Name = 'Référence commande' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Referentie naar de corresponderende VO / IO regels en vice versa','Referentie naar de corresponderende VO / IO','Bijbehorende Order'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Referentie naar de corresponderende VO / IO regels en vice versa',Description = 'Referentie naar de corresponderende VO / IO',Name = 'Bijbehorende Order' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Region_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Region',
'Identifies a geographical Region',
22,
'',
'334N',
'The Region identifies a unique Region for this Country.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Region_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Region', description = 'Identifies a geographical Region', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Region identifies a unique Region for this Country.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Region_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Region_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Identifie une région géographique d''un pays','Région géographique','Région'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Region_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identifie une région géographique d''un pays',Description = 'Région géographique',Name = 'Région' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Region_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Region_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De regio geeft een unieke regio aan voor dit land.','Geeft een geografische regio aan.','Regio'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Region_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De regio geeft een unieke regio aan voor dit land.',Description = 'Geeft een geografische regio aan.',Name = 'Regio' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Region_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'RegionName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Region Name',
'Name of the Region',
60,
'',
'334N',
'The Region Name defines the name that will print when this region is used in a document.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'RegionName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Region Name', description = 'Name of the Region', displaylength = 60, displaylogic = '', entitytype = '334N', help = 'The Region Name defines the name that will print when this region is used in a document.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'RegionName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RegionName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Défini le nom qui sera imprimé lorsque la région est utilisée dans un document','Nom de la région','Nom région'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RegionName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Défini le nom qui sera imprimé lorsque la région est utilisée dans un document',Description = 'Nom de la région',Name = 'Nom région' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RegionName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RegionName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De regio naam geeft de naam aan van de regio die wordt gebruikt bij het afdrukken van documenten','Naam van deze regio','Regio Naam'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RegionName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De regio naam geeft de naam aan van de regio die wordt gebruikt bij het afdrukken van documenten',Description = 'Naam van deze regio',Name = 'Regio Naam' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RegionName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Representative',
'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...',
22,
'',
'334N',
'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.',
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
190
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Representative', description = 'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 190 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.','Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...','Representative'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.',Description = 'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...',Name = 'Representative' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De verkoper geeft aan welke gebruiker binnen het systeem hier verkoper is.','Verkoper of vertegenwoordiger','Verkoper'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De verkoper geeft aan welke gebruiker binnen het systeem hier verkoper is.',Description = 'Verkoper of vertegenwoordiger',Name = 'Verkoper' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'SKU' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'SKU',
'Stock Keeping Unit',
30,
'',
'334N',
'The SKU indicates a user defined stock keeping unit.  It may be used for an additional bar code symbols or your own schema.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'SKU' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'SKU', description = 'Stock Keeping Unit', displaylength = 30, displaylogic = '', entitytype = '334N', help = 'The SKU indicates a user defined stock keeping unit.  It may be used for an additional bar code symbols or your own schema.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'SKU' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SKU' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Identifie une unité de stockage utilisateur. Cette unité de stockage peut être utilisée pour la gestion des barre code ou pour votre propre utilisation.','Unité de stockage','SKU'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SKU' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identifie une unité de stockage utilisateur. Cette unité de stockage peut être utilisée pour la gestion des barre code ou pour votre propre utilisation.',Description = 'Unité de stockage',Name = 'SKU' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SKU' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SKU' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Deze code geeft een artikelnummer aan dat door de gebruiker gefinieerd is. Het kan gebruikt worden voor aditionele barcode informatie of een eigen schema.','Eenheid waarin de voorraad wordt geadministreerd','Voorraad Eenheid'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SKU' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Deze code geeft een artikelnummer aan dat door de gebruiker gefinieerd is. Het kan gebruikt worden voor aditionele barcode informatie of een eigen schema.',Description = 'Eenheid waarin de voorraad wordt geadministreerd',Name = 'Voorraad Eenheid' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SKU' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsSOTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Sales Transaction',
'This is a Sales Transaction',
1,
'',
'334N',
'The Sales Transaction checkbox indicates if this item is a Sales Transaction.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsSOTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Sales Transaction', description = 'This is a Sales Transaction', displaylength = 1, displaylogic = '', entitytype = '334N', help = 'The Sales Transaction checkbox indicates if this item is a Sales Transaction.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsSOTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSOTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique que cet enregistrement est une transaction de vente.','Ceci est une transaction de vente','Transaction vente'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSOTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique que cet enregistrement est une transaction de vente.',Description = 'Ceci est une transaction de vente',Name = 'Transaction vente' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSOTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSOTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De checkbox verkoop transactie geeft aan of dit item een verkoop transactie is.','Dit is een verkoop transactie','Verkoop Transactie'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSOTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De checkbox verkoop transactie geeft aan of dit item een verkoop transactie is.',Description = 'Dit is een verkoop transactie',Name = 'Verkoop Transactie' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSOTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Tax',
'Tax identifier',
22,
'',
'334N',
'The Tax indicates the type of tax used in document line.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Tax', description = 'Tax identifier', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Tax indicates the type of tax used in document line.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique le type de  tva pour la ligne du document.','Code TVA','TVA'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique le type de  tva pour la ligne du document.',Description = 'Code TVA',Name = 'TVA' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Geeft aan welk BTW niveau geldt voor een order regel.','BTW','BTW'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Geeft aan welk BTW niveau geldt voor een order regel.',Description = 'BTW',Name = 'BTW' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TaxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Tax Amount',
'Tax Amount for a document',
22,
'',
'334N',
'The Tax Amount displays the total tax amount for a document.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TaxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Tax Amount', description = 'Tax Amount for a document', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Tax Amount displays the total tax amount for a document.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TaxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Affiche le montant total de TVA pour le document','Montant TVA pour le document','Montant TVA'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Affiche le montant total de TVA pour le document',Description = 'Montant TVA pour le document',Name = 'Montant TVA' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Het BTW bedrag geeft het totale btw bedrag voor een document aan.','BTW bedrag voor een document.','BTW Bedrag'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Het BTW bedrag geeft het totale btw bedrag voor een document aan.',Description = 'BTW bedrag voor een document.',Name = 'BTW Bedrag' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TaxIndicator' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Tax Indicator',
'Short form for Tax to be printed on documents',
5,
'',
'334N',
'The Tax Indicator identifies the short name that will print on documents referencing this tax.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TaxIndicator' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Tax Indicator', description = 'Short form for Tax to be printed on documents', displaylength = 5, displaylogic = '', entitytype = '334N', help = 'The Tax Indicator identifies the short name that will print on documents referencing this tax.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TaxIndicator' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxIndicator' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique le texte court pour l''impression du code TVA sur les documents.','Texte court pour l''impression','Texte TVA'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxIndicator' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique le texte court pour l''impression du code TVA sur les documents.',Description = 'Texte court pour l''impression',Name = 'Texte TVA' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxIndicator' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxIndicator' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Deze indicator geeft aan welke BTW code er op formulieren wordt afgedrukt','Code voor Belasting tarief','BTW indicator'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxIndicator' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Deze indicator geeft aan welke BTW code er op formulieren wordt afgedrukt',Description = 'Code voor Belasting tarief',Name = 'BTW indicator' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxIndicator' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'334N',
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
200
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 200 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Nom de l''entreprise titulaire de la base de données (DB)','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Een client is een bedrijf of een rechtspersoon.','Client voor deze installatie.','Client'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Een client is een bedrijf of een rechtspersoon.',Description = 'Client voor deze installatie.',Name = 'Client' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Trx Organization',
'Performing or initiating organization',
22,
'',
'334N',
'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Trx Organization', description = 'Performing or initiating organization', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'C''est l''organisation qui traite ou qui initie la transaction pour le compte d''une autre organisation. L''organisation peut ne pas être l''organisation pour laquelle la transaction est effectuée dans un environnement de service bureautique, avec des services centralisés et des transactions entre organisations.','Organisation transactionnelle','Organisation Trx'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'C''est l''organisation qui traite ou qui initie la transaction pour le compte d''une autre organisation. L''organisation peut ne pas être l''organisation pour laquelle la transaction est effectuée dans un environnement de service bureautique, avec des services centralisés et des transactions entre organisations.',Description = 'Organisation transactionnelle',Name = 'Organisation Trx' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Organisatie waardoor de transactie is geinitieerd. Dit kan een andere organisatie zijn dan de de organisatie waar het betreffende record toe behoord.','Organisatie waarin de transactie wordt uitgevoerd.','Trx Organizatie'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Organisatie waardoor de transactie is geinitieerd. Dit kan een andere organisatie zijn dan de de organisatie waar het betreffende record toe behoord.',Description = 'Organisatie waarin de transactie wordt uitgevoerd.',Name = 'Trx Organizatie' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'UOM',
'Unit of Measure',
22,
'',
'334N',
'The UOM defines a unique non monetary Unit of Measure',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'UOM', description = 'Unit of Measure', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The UOM defines a unique non monetary Unit of Measure', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'L''unité de mesure défini un unité de mesure non monétaire','Unité de mesure','Unité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'L''unité de mesure défini un unité de mesure non monétaire',Description = 'Unité de mesure',Name = 'Unité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De eenheid geeft een eenheidsomschrijving van het product aan die niet op geld is gebaseerd.','Eenheid.','Eenheid'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De eenheid geeft een eenheidsomschrijving van het product aan die niet op geld is gebaseerd.',Description = 'Eenheid.',Name = 'Eenheid' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'UPC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'UPC/EAN',
'Bar Code (Universal Product Code or its superset European Article Number)',
30,
'',
'334N',
'Use this field to enter the bar code for the product in any of the bar code symbol definitions (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode)',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'UPC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'UPC/EAN', description = 'Bar Code (Universal Product Code or its superset European Article Number)', displaylength = 30, displaylogic = '', entitytype = '334N', help = 'Use this field to enter the bar code for the product in any of the bar code symbol definitions (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode)', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'UPC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'UPC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Champ utilisé pour affecter un code barre à un article  (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, et Pharmacode) ','Code barre EAN','Code barre / EAN'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'UPC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Champ utilisé pour affecter un code barre à un article  (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, et Pharmacode) ',Description = 'Code barre EAN',Name = 'Code barre / EAN' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'UPC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'UPC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','Bar Code (European Article Number)','Bar Code (EAN)'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'UPC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Bar Code (European Article Number)',Name = 'Bar Code (EAN)' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'UPC' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PriceActual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Unit Price',
'Actual Price',
22,
'',
'334N',
'The Actual or Unit Price indicates the Price for a product in source currency.',
'',
180,
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
210
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PriceActual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Unit Price', description = 'Actual Price', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Actual or Unit Price indicates the Price for a product in source currency.', obscuretype = '', seqno = 180, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 210 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PriceActual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceActual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique le prix unitaire d''un article en devise système.','Prix unitaire','Prix unitaire'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceActual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique le prix unitaire d''un article en devise système.',Description = 'Prix unitaire',Name = 'Prix unitaire' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceActual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceActual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De verkoop prijs geeft aan wat de verkoopprijs voor een product is in de prijslijst valuta.','Verkoop Prijs','Verkoop Prijs'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceActual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De verkoop prijs geeft aan wat de verkoopprijs voor een product is in de prijslijst valuta.',Description = 'Verkoop Prijs',Name = 'Verkoop Prijs' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceActual' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Warehouse',
'Storage Warehouse and Service Point',
22,
'',
'334N',
'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
220
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Warehouse', description = 'Storage Warehouse and Service Point', displaylength = 22, displaylogic = '', entitytype = '334N', help = 'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 220 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Indique un lieu où sont stockés de la marchandise ou fournis des services','Magasin ou dépôt','Magasin / dépôt'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Indique un lieu où sont stockés de la marchandise ou fournis des services',Description = 'Magasin ou dépôt',Name = 'Magasin / dépôt' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Het magazijn c.q. service locatie geeft aan waar producten worder opgelsagen of waar vanuit services worden geleverd.','Stock of locatie','Stock'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Het magazijn c.q. service locatie geeft aan waar producten worder opgelsagen of waar vanuit services worden geleverd.',Description = 'Stock of locatie',Name = 'Stock' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'WarehouseValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Warehouse Key',
'Key of the Warehouse',
40,
'',
'334N',
'Key to identify the Warehouse',
'',
40,
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
230
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'WarehouseValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Warehouse Key', description = 'Key of the Warehouse', displaylength = 40, displaylogic = '', entitytype = '334N', help = 'Key to identify the Warehouse', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 230 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'WarehouseValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'WarehouseValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Clé qui permet d''identifier le magasin','Clé du magasin','Clé Magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'WarehouseValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Clé qui permet d''identifier le magasin',Description = 'Clé du magasin',Name = 'Clé Magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'WarehouseValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'WarehouseValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'Key to identify the Warehouse','Key of the Warehouse','Warehouse Key'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'WarehouseValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Key to identify the Warehouse',Description = 'Key of the Warehouse',Name = 'Warehouse Key' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'WarehouseValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Postal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'ZIP',
'Postal code',
10,
'',
'334N',
'The Postal Code or ZIP identifies the postal code for this entity''s address.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Postal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'ZIP', description = 'Postal code', displaylength = 10, displaylogic = '', entitytype = '334N', help = 'The Postal Code or ZIP identifies the postal code for this entity''s address.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Postal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Postal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', 'Identifie le code postal de cette adresse','Code Postal','ZIP'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Postal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identifie le code postal de cette adresse',Description = 'Code Postal',Name = 'ZIP' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Postal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Postal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', 'De postcode geeft voor deze entiteit de postcode van het adres weer.','Postcode','Postcode'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Postal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'De postcode geeft voor deze entiteit de postcode van het adres weer.',Description = 'Postcode',Name = 'Postcode' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Postal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_SoldeGI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')),
'Z_SoldeGI',
'Z_SoldeGI',
10,
'',
'334N',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_SoldeGI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import OA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import OA')), name = 'Z_SoldeGI', description = 'Z_SoldeGI', displaylength = 10, displaylogic = '', entitytype = '334N', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_SoldeGI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_SoldeGI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'fr_FR', 'Y', '','Z_SoldeGI','Z_SoldeGI'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_SoldeGI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Z_SoldeGI',Name = 'Z_SoldeGI' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_SoldeGI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_SoldeGI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))), 'nl_NL', 'Y', '','Z_SoldeGI','Z_SoldeGI'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_SoldeGI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Z_SoldeGI',Name = 'Z_SoldeGI' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_SoldeGI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import OA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import OA'))) and ad_language = 'nl_NL';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Import OA','Import OA',
'W',
'',
'334N',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'Import OA'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Import OA' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Import OA', action = 'W', description = '', entitytype = '334N', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Import OA'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Import OA' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Import OA'), 'fr_FR', 'Y', '','Import OA'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import OA') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Import OA' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import OA') and ad_language = 'fr_FR';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Import OA'), 'nl_NL', 'Y', '','Import OA'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import OA') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Import OA' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import OA') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '334N - Import OA', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = 'A', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '334N' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Import OA') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Import OA')); 

