insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG05','EG05 - Cr�ation OA � partir ODV',
'',
'',
'Y',
'',
'',
'',
'Y',
'361',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'EG05' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG05 - Cr�ation OA � partir ODV', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG05' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'EG_CreatePO','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.OrderPOCreateEggo',
'',
'EG05',
'',
'',
'',
'Cr�ation Ordre d''achat Eggo',
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
where not exists (select 1 from AD_Process where Value = 'EG_CreatePO' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.OrderPOCreateEggo', description = '', entitytype = 'EG05', help = '', jasperreport = '', procedurename = '', name = 'Cr�ation Ordre d''achat Eggo', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'EG_CreatePO' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='EG_CreatePO'), 'nl_BE', 'Y', '','','Cr�ation Ordre d''achat Eggo'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='EG_CreatePO') and ad_language = 'nl_BE');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cr�ation Ordre d''achat Eggo' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='EG_CreatePO') and ad_language = 'nl_BE';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='EG_CreatePO'), 'fr_FR', 'Y', '','','Cr�ation Ordre d''achat Eggo'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='EG_CreatePO') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cr�ation Ordre d''achat Eggo' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='EG_CreatePO') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'isSelectedPO','',
'EG05',
'',
'isSelectedPO',
'',
'',
'',
'',
'isSelectedPO',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'isSelectedPO' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG05', help = '', name = 'isSelectedPO', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'isSelectedPO', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'isSelectedPO' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='isSelectedPO'), 'nl_BE', 'Y', '','','isSelectedPO','','','','','isSelectedPO'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='isSelectedPO') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'isSelectedPO',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'isSelectedPO' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='isSelectedPO') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='isSelectedPO'), 'fr_FR', 'Y', '','','isSelectedPO','','','','','isSelectedPO'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='isSelectedPO') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'isSelectedPO',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'isSelectedPO' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='isSelectedPO') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'isSelectedPO',(select AD_Element_ID from AD_Element where ColumnName = 'isSelectedPO'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_OrderLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EG05',
1,
'',
'isSelectedPO',
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
where not exists (select 1 from AD_Column where ColumnName = 'isSelectedPO'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'isSelectedPO'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_OrderLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EG05', fieldlength = 1, help = '', name = 'isSelectedPO', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'isSelectedPO'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')), 'nl_BE', 'Y', 'isSelectedPO'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'isSelectedPO' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')), 'fr_FR', 'Y', 'isSelectedPO'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'isSelectedPO' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Order Line_187' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'isSelectedPO',
'',
1,
'',
'EG05',
'',
'',
480,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Order Line_187' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'isSelectedPO', description = '', displaylength = 1, displaylogic = '', entitytype = 'EG05', help = '', obscuretype = '', seqno = 480, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', '','','isSelectedPO'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'isSelectedPO' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', '','','isSelectedPO'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'isSelectedPO' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'isSelectedPO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Form (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,Name,accesslevel, classname, description, entitytype, help, isactive, isbetafunctionality,JSPURL,AD_CTXAREA_ID, WebClassname) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Form'),'Cr�ation OA � partir d''ODV','3',
'',
'Cr�ation OA � partir d''ODV',
'EG05',
'',
'Y',
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'org.compiere.gwt.server.window.GeneratePoWindowImpl'
 from dual  
where not exists (select 1 from AD_Form where Name = 'Cr�ation OA � partir d''ODV' );

update AD_Form set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', classname = '', description = 'Cr�ation OA � partir d''ODV', entitytype = 'EG05', help = '', isactive = 'Y', isbetafunctionality = 'N', JSPURL = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), WebClassname = 'org.compiere.gwt.server.window.GeneratePoWindowImpl' 
where Name = 'Cr�ation OA � partir d''ODV' ;

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Cr�ation OA � partir d''ODV'), 'nl_BE', 'Y', '','','Cr�ation OA � partir d''ODV'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Cr�ation OA � partir d''ODV') and ad_language = 'nl_BE');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cr�ation OA � partir d''ODV' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Cr�ation OA � partir d''ODV') and ad_language = 'nl_BE';

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Cr�ation OA � partir d''ODV'), 'fr_FR', 'Y', '','','Cr�ation OA � partir d''ODV'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Cr�ation OA � partir d''ODV') and ad_language = 'fr_FR');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cr�ation OA � partir d''ODV' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Cr�ation OA � partir d''ODV') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'CreateOAODV','Cr�ation d''OA � partir d''ODV',
'X',
'',
'EG05',
(select AD_Form_ID from AD_Form where Name = 'Cr�ation OA � partir d''ODV'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'CreateOAODV' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Cr�ation d''OA � partir d''ODV', action = 'X', description = '', entitytype = 'EG05', ad_form_id = (select AD_Form_ID from AD_Form where Name = 'Cr�ation OA � partir d''ODV'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'CreateOAODV' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='CreateOAODV'), 'nl_BE', 'Y', '','Cr�ation d''OA � partir d''ODV'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='CreateOAODV') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Cr�ation d''OA � partir d''ODV' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='CreateOAODV') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='CreateOAODV'), 'fr_FR', 'Y', '','Cr�ation d''OA � partir d''ODV'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='CreateOAODV') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Cr�ation d''OA � partir d''ODV' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='CreateOAODV') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG05 - Cr�ation OA � partir ODV', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG05' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'CreateOAODV') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'CreateOAODV')); 
