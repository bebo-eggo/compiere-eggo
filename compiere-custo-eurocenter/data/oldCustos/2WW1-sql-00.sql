insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2WW1','2WW1 - Simpli OA',
'',
'',
'Y',
'',
'',
'',
'Y',
'33',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '2WW1' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2WW1 - Simpli OA', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '33', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2WW1' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'GrandLivreV2_S','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'ru.compiere.report.RusReportStarter',
'-',
'2WW1',
'',
'Y_grand_livre_detail_S.jasper',
'',
'Export Grand Livre Général Simple',
'',
'Y',
'N',
'N',
'Y',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
(select AD_BView_ID from AD_BView where Name = ''),
(select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Process where Value = 'GrandLivreV2_S' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'ru.compiere.report.RusReportStarter', description = '-', entitytype = '2WW1', help = '', jasperreport = 'Y_grand_livre_detail_S.jasper', procedurename = '', name = 'Export Grand Livre Général Simple', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'Y', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'GrandLivreV2_S' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='GrandLivreV2_S'), 'fr_FR', 'Y', 'Export Grand Livre Général Simple','','-'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='GrandLivreV2_S') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Export Grand Livre Général Simple',Help = '',Description = '-' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='GrandLivreV2_S') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='GrandLivreV2_S'), 'nl_NL', 'Y', 'Export Grand Livre Général Simple','','-'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='GrandLivreV2_S') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Export Grand Livre Général Simple',Help = '',Description = '-' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='GrandLivreV2_S') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ToComplete','',
'2WW1',
'',
'Traiter les OA automatiquement',
'',
'',
'',
'',
'Traiter les OA automatiquement',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ToComplete' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2WW1', help = '', name = 'Traiter les OA automatiquement', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Traiter les OA automatiquement', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ToComplete' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ToComplete'), 'fr_FR', 'Y', '','Traiter les OA automatiquement','','','Traiter les OA automatiquement','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ToComplete') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Traiter les OA automatiquement',Help = '',PO_PrintName = '',PrintName = 'Traiter les OA automatiquement',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ToComplete') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ToComplete'), 'nl_NL', 'Y', '','Traiter les OA automatiquement','','','Traiter les OA automatiquement','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ToComplete') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Traiter les OA automatiquement',Help = '',PO_PrintName = '',PrintName = 'Traiter les OA automatiquement',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ToComplete') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_CompletOA','',
'2WW1',
'',
'Traiter les OA générés automatiquement',
'',
'',
'',
'',
'Traiter les OA générés automatiquement',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_CompletOA' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2WW1', help = '', name = 'Traiter les OA générés automatiquement', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Traiter les OA générés automatiquement', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_CompletOA' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_CompletOA'), 'fr_FR', 'Y', '','Traiter les OA générés automatiquement','','','Traiter les OA générés automatiquement','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CompletOA') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Traiter les OA générés automatiquement',Help = '',PO_PrintName = '',PrintName = 'Traiter les OA générés automatiquement',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CompletOA') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_CompletOA'), 'nl_NL', 'Y', '','Traiter les OA générés automatiquement','','','Traiter les OA générés automatiquement','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CompletOA') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Traiter les OA générés automatiquement',Help = '',PO_PrintName = '',PrintName = 'Traiter les OA générés automatiquement',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CompletOA') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_CompletOA',(select AD_Element_ID from AD_Element where ColumnName = 'Z_CompletOA'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_DocTypeInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'2WW1',
1,
'',
'Traiter les OA générés automatiquement',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_CompletOA'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_CompletOA'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_DocTypeInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = '2WW1', fieldlength = 1, help = '', name = 'Traiter les OA générés automatiquement', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_CompletOA'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')), 'fr_FR', 'Y', 'Traiter les OA générés automatiquement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Traiter les OA générés automatiquement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')), 'nl_NL', 'Y', 'Traiter les OA générés automatiquement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Traiter les OA générés automatiquement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BP_Group_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BP_Group_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_EGGOPJ'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Business Partner Group',
'2WW1',
10,
'The Business Partner Group provides a method of defining defaults to be used for individual Business Partners.',
'Business Partner Group',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_BP_Group_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BP_Group_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_EGGOPJ'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Business Partner Group', entitytype = '2WW1', fieldlength = 10, help = 'The Business Partner Group provides a method of defining defaults to be used for individual Business Partners.', name = 'Business Partner Group', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BP_Group_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ')), 'fr_FR', 'Y', 'Groupe de tiers'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Groupe de tiers' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ')), 'nl_NL', 'Y', 'Relatie Categorie'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Relatie Categorie' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001682' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Paramétrage pièces jointes')),
'Business Partner Group',
'Business Partner Group',
0,
'',
'2WW1',
'The Business Partner Group provides a method of defining defaults to be used for individual Business Partners.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
40
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001682' and ad_window_id in (select ad_window_id from ad_window where value = 'Paramétrage pièces jointes')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001682' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Paramétrage pièces jointes')), name = 'Business Partner Group', description = 'Business Partner Group', displaylength = 0, displaylogic = '', entitytype = '2WW1', help = 'The Business Partner Group provides a method of defining defaults to be used for individual Business Partners.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 40 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001682' and ad_window_id in (select ad_window_id from ad_window where value = 'Paramétrage pièces jointes'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001682' and ad_window_id in (select ad_window_id from ad_window where value = 'Paramétrage pièces jointes'))), 'fr_FR', 'Y', 'Définit des paramètres par défaut appliqués ensuite aux tiers appartenant à ce groupe.','Groupe de tiers','Groupe de tiers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001682' and ad_window_id in (select ad_window_id from ad_window where value = 'Paramétrage pièces jointes'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Définit des paramètres par défaut appliqués ensuite aux tiers appartenant à ce groupe.',Description = 'Groupe de tiers',Name = 'Groupe de tiers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001682' and ad_window_id in (select ad_window_id from ad_window where value = 'Paramétrage pièces jointes'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001682' and ad_window_id in (select ad_window_id from ad_window where value = 'Paramétrage pièces jointes'))), 'nl_NL', 'Y', 'Het releatie catagorie kenmerk biedt de mogelijkheid standaarden te definieren voor indivuele relaties.','Relatie categorie kenmerk','Relatie Categorie'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001682' and ad_window_id in (select ad_window_id from ad_window where value = 'Paramétrage pièces jointes'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Het releatie catagorie kenmerk biedt de mogelijkheid standaarden te definieren voor indivuele relaties.',Description = 'Relatie categorie kenmerk',Name = 'Relatie Categorie' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BP_Group_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_EGGOPJ')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001682' and ad_window_id in (select ad_window_id from ad_window where value = 'Paramétrage pièces jointes'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types de document Info' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Document Type_135')),
'Traiter les OA générés automatiquement',
'',
0,
'',
'2WW1',
'',
'',
320,
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
320
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types de document Info' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Document Type_135')), name = 'Traiter les OA générés automatiquement', description = '', displaylength = 0, displaylogic = '', entitytype = '2WW1', help = '', obscuretype = '', seqno = 320, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 320 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))), 'fr_FR', 'Y', '','','Traiter les OA générés automatiquement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Traiter les OA générés automatiquement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))), 'nl_NL', 'Y', '','','Traiter les OA générés automatiquement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Traiter les OA générés automatiquement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CompletOA' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Organization',
'',
'',
'Organizational entity within Tenant',
'2WW1',
0,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
20,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Organization', defaultvalue = '', defaultvalue2 = '', description = 'Organizational entity within Tenant', entitytype = '2WW1', fieldlength = 0, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'fr_FR', 'Y', 'Etablissement au sein d''une société','une unité est une partie d''une société, (établissement, succursale, bureau, etc...).','Organisation'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Etablissement au sein d''une société',Help = 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).',Name = 'Organisation' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'nl_NL', 'Y', 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Organisatie'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Help = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Name = 'Organisatie' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Trx Security validation'),
'Tenant',
'',
'',
'Identifies the Client/Tenant for this installation.',
'2WW1',
0,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
10,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Trx Security validation'), name = 'Tenant', defaultvalue = '', defaultvalue2 = '', description = 'Identifies the Client/Tenant for this installation.', entitytype = '2WW1', fieldlength = 0, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'fr_FR', 'Y', 'Nom de l''entreprise titulaire de la base de données (DB)','','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Help = '',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'nl_NL', 'Y', 'Client voor deze installatie.','Een client is een bedrijf of een rechtspersoon.','Client'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Client voor deze installatie.',Help = 'Een client is een bedrijf of een rechtspersoon.',Name = 'Client' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'DateFrom',(select AD_Element_ID from AD_Element where ColumnName = 'DateFrom'),
(select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Date From',
'@SQL=select to_date(''01'' || to_char(sysdate,''MMYYYY''),''DDMMYYYY'') from dual ',
'',
'Starting date for a range',
'2WW1',
0,
'The Date From indicates the starting date of a range.',
30,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'DateFrom'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DateFrom'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Date From', defaultvalue = '@SQL=select to_date(''01'' || to_char(sysdate,''MMYYYY''),''DDMMYYYY'') from dual ', defaultvalue2 = '', description = 'Starting date for a range', entitytype = '2WW1', fieldlength = 0, help = 'The Date From indicates the starting date of a range.', seqno = 30, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'DateFrom'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'fr_FR', 'Y', 'Date de début de période','Indique le début d''une période (incluse).','Date début'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date de début de période',Help = 'Indique le début d''une période (incluse).',Name = 'Date début' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'nl_NL', 'Y', 'Start datum voor een periode.','De vanaf datum geeft de startdatum van een periode aan.','Vanaf Datum'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Start datum voor een periode.',Help = 'De vanaf datum geeft de startdatum van een periode aan.',Name = 'Vanaf Datum' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'DateTo',(select AD_Element_ID from AD_Element where ColumnName = 'DateTo'),
(select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Date To',
'@#Date@',
'',
'End date of a date range',
'2WW1',
0,
'The Date To indicates the end date of a range (inclusive)',
40,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'DateTo'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DateTo'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Date To', defaultvalue = '@#Date@', defaultvalue2 = '', description = 'End date of a date range', entitytype = '2WW1', fieldlength = 0, help = 'The Date To indicates the end date of a range (inclusive)', seqno = 40, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'DateTo'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateTo' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'fr_FR', 'Y', 'Fin de la période','Indique la date de la fin de la période (incluse)','Date fin'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateTo' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Fin de la période',Help = 'Indique la date de la fin de la période (incluse)',Name = 'Date fin' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateTo' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateTo' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'nl_NL', 'Y', 'Eind datum van een periode.','De einddatum geeft de einddatum van een periode aan (inclusief zichzelf).','Eind Datum'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateTo' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Eind datum van een periode.',Help = 'De einddatum geeft de einddatum van een periode aan (inclusief zichzelf).',Name = 'Eind Datum' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateTo' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Account_From',(select AD_Element_ID from AD_Element where ColumnName = 'Account_From'),
(select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'Account_ID'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Account From',
'',
'',
'Account used',
'2WW1',
0,
'The (natural) account used',
50,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'Account_From'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Account_From'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Account_ID'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Account From', defaultvalue = '', defaultvalue2 = '', description = 'Account used', entitytype = '2WW1', fieldlength = 0, help = 'The (natural) account used', seqno = 50, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Account_From'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_From' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'fr_FR', 'Y', 'Compte utilisé','Le compte (naturel) à utiliser','Compte de'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_From' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Compte utilisé',Help = 'Le compte (naturel) à utiliser',Name = 'Compte de' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_From' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_From' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'nl_NL', 'Y', 'Account used','The (natural) account used','Account From'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_From' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account used',Help = 'The (natural) account used',Name = 'Account From' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_From' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Currency',(select AD_Element_ID from AD_Element where ColumnName = 'Currency'),
(select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Currency',
'''N''',
'',
'',
'2WW1',
0,
' ',
80,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'Currency'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Currency'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Currency', defaultvalue = '''N''', defaultvalue2 = '', description = '', entitytype = '2WW1', fieldlength = 0, help = ' ', seqno = 80, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Currency'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Currency' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'fr_FR', 'Y', '',' ','Devise'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Currency' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = ' ',Name = 'Devise' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Currency' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Currency' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'nl_NL', 'Y', '',' ','Currency'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Currency' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = ' ',Name = 'Currency' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Currency' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Account_To',(select AD_Element_ID from AD_Element where ColumnName = 'Account_To'),
(select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'Account_ID'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Account To',
'',
'',
'Account used',
'2WW1',
0,
'The (natural) account used',
60,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'Account_To'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Account_To'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Account_ID'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Account To', defaultvalue = '', defaultvalue2 = '', description = 'Account used', entitytype = '2WW1', fieldlength = 0, help = 'The (natural) account used', seqno = 60, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Account_To'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_To' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'fr_FR', 'Y', 'Compte utilisé','Le compte (naturel) utilisé','Compte à'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_To' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Compte utilisé',Help = 'Le compte (naturel) utilisé',Name = 'Compte à' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_To' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_To' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'nl_NL', 'Y', 'Account used','The (natural) account used','Account To'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_To' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account used',Help = 'The (natural) account used',Name = 'Account To' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_To' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'ISDETAIL',(select AD_Element_ID from AD_Element where ColumnName = 'ISDETAIL'),
(select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Detail',
'',
'',
'',
'2WW1',
0,
'',
70,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'ISDETAIL'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ISDETAIL'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Detail', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '2WW1', fieldlength = 0, help = '', seqno = 70, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'ISDETAIL'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ISDETAIL' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'fr_FR', 'Y', '','','Détail'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ISDETAIL' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Détail' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ISDETAIL' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ISDETAIL' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'nl_NL', 'Y', '','','Detail'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ISDETAIL' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Detail' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ISDETAIL' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_AcctSchema_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_AcctSchema_ID'),
(select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_AcctSchema Org'),
'Accounting Schema',
'-1',
'',
'Rules for accounting',
'2WW1',
0,
'An Accounting Schema defines the rules used in accounting such as costing method, currency and calendar',
25,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_AcctSchema_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_AcctSchema_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_AcctSchema Org'), name = 'Accounting Schema', defaultvalue = '-1', defaultvalue2 = '', description = 'Rules for accounting', entitytype = '2WW1', fieldlength = 0, help = 'An Accounting Schema defines the rules used in accounting such as costing method, currency and calendar', seqno = 25, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_AcctSchema_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'fr_FR', 'Y', 'Définit les paramètres d''une écriture comptable','Définit les paramètres d''une écriture comptable tels que devises, dates, comptes etc...','Plan comptable'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Définit les paramètres d''une écriture comptable',Help = 'Définit les paramètres d''une écriture comptable tels que devises, dates, comptes etc...',Name = 'Plan comptable' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'nl_NL', 'Y', 'Stelsel van grootboekrekeningen','Een rekening stelsel geeft de boekhoudregels zoals costing method, valuta en kalenderjaar aan.','Rekening Stelsel'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Stelsel van grootboekrekeningen',Help = 'Een rekening stelsel geeft de boekhoudregels zoals costing method, valuta en kalenderjaar aan.',Name = 'Rekening Stelsel' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Z_IsResume',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Affichage montants lettrés',
'Y',
'',
'',
'2WW1',
0,
'',
90,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Z_IsResume'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Affichage montants lettrés', defaultvalue = 'Y', defaultvalue2 = '', description = '', entitytype = '2WW1', fieldlength = 0, help = '', seqno = 90, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Z_IsResume'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_IsResume' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'fr_FR', 'Y', '','','Affichage montants lettrés'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_IsResume' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Affichage montants lettrés' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_IsResume' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_IsResume' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'nl_NL', 'Y', '','','Affichage montants lettrés'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_IsResume' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Affichage montants lettrés' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_IsResume' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Z_IsAllocated',(select AD_Element_ID from AD_Element where ColumnName = 'Z_IsAllocated'),
(select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Afficher Répartition',
'Y',
'',
'',
'2WW1',
0,
'',
100,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Z_IsAllocated'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_IsAllocated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Afficher Répartition', defaultvalue = 'Y', defaultvalue2 = '', description = '', entitytype = '2WW1', fieldlength = 0, help = '', seqno = 100, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Z_IsAllocated'  and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_IsAllocated' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'fr_FR', 'Y', '','','Afficher Répartition'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_IsAllocated' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Afficher Répartition' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_IsAllocated' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_IsAllocated' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')), 'nl_NL', 'Y', '','','Allocated'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_IsAllocated' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Allocated' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_IsAllocated' and ad_process_id in (select ad_process_id from ad_process where value = 'GrandLivreV2_S')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'ToComplete',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Générer OA'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Traiter les OA automatiquement',
'Y',
'',
'',
'2WW1',
0,
'',
10,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'ToComplete'  and ad_process_id in (select ad_process_id from ad_process where value = 'Générer OA'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Générer OA'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Traiter les OA automatiquement', defaultvalue = 'Y', defaultvalue2 = '', description = '', entitytype = '2WW1', fieldlength = 0, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'ToComplete'  and ad_process_id in (select ad_process_id from ad_process where value = 'Générer OA');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ToComplete' and ad_process_id in (select ad_process_id from ad_process where value = 'Générer OA')), 'fr_FR', 'Y', '','','Traiter les OA automatiquement'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ToComplete' and ad_process_id in (select ad_process_id from ad_process where value = 'Générer OA')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Traiter les OA automatiquement' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ToComplete' and ad_process_id in (select ad_process_id from ad_process where value = 'Générer OA')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ToComplete' and ad_process_id in (select ad_process_id from ad_process where value = 'Générer OA')), 'nl_NL', 'Y', '','','Traiter les OA automatiquement'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ToComplete' and ad_process_id in (select ad_process_id from ad_process where value = 'Générer OA')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Traiter les OA automatiquement' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ToComplete' and ad_process_id in (select ad_process_id from ad_process where value = 'Générer OA')) and ad_language = 'nl_NL';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Export Grand Livre Général Simple','Export Grand Livre Général Simple',
'R',
'-',
'2WW1',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Export Grand Livre Général Simple' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Export Grand Livre Général Simple', action = 'R', description = '-', entitytype = '2WW1', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'GrandLivreV2_S'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Export Grand Livre Général Simple' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Export Grand Livre Général Simple'), 'fr_FR', 'Y', 'Grand Livre Général Simple sans solde de départ','Grand Livre Général Simple'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Export Grand Livre Général Simple') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Grand Livre Général Simple sans solde de départ',Name = 'Grand Livre Général Simple' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Export Grand Livre Général Simple') and ad_language = 'fr_FR';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Export Grand Livre Général Simple'), 'nl_NL', 'Y', 'Grand Livre Général Simple sans solde de départ','Grand Livre Général Simple'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Export Grand Livre Général Simple') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Grand Livre Général Simple sans solde de départ',Name = 'Grand Livre Général Simple' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Export Grand Livre Général Simple') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2WW1 - Simpli OA', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '33', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2WW1' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Export Grand Livre Général Simple') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Export Grand Livre Général Simple')); 

