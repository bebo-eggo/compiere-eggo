insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC16','EC16 - Import prix',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EC16' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC16 - Import prix', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC16' ;

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'1000445','Import des prix',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'',
'EC16',
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
where not exists (select 1 from AD_Window where Value = '1000445' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Import des prix', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = '', entitytype = 'EC16', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = '1000445' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='1000445'), 'nl_BE', 'Y', '','','Import des prix'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='1000445') and ad_language = 'nl_BE');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import des prix' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='1000445') and ad_language = 'nl_BE';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='1000445'), 'nl_NL', 'Y', '','','Import des prix'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='1000445') and ad_language = 'nl_NL');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import des prix' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='1000445') and ad_language = 'nl_NL';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='1000445'), 'fr_FR', 'Y', '','','Import des prix'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='1000445') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import des prix' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='1000445') and ad_language = 'fr_FR';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'I_ProductPrice','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'EC16',
'',
'N',
0,
'Import des listes de prix',
'L',
'Y',
'Y',
'N',
'N',
'N',
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'I_ProductPrice' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'EC16', help = '', importtable = 'N', loadseq = 0, name = 'Import des listes de prix', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'I_ProductPrice' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='I_ProductPrice'), 'nl_BE', 'Y', 'Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_ProductPrice') and ad_language = 'nl_BE');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import des listes de prix' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_ProductPrice') and ad_language = 'nl_BE';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='I_ProductPrice'), 'nl_NL', 'Y', 'Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_ProductPrice') and ad_language = 'nl_NL');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import des listes de prix' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_ProductPrice') and ad_language = 'nl_NL';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='I_ProductPrice'), 'fr_FR', 'Y', 'Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_ProductPrice') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import des listes de prix' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_ProductPrice') and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Import_M_ProductPrice','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.ImportProductPrice',
'',
'EC16',
'',
'',
'',
'Import prix article',
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
where not exists (select 1 from AD_Process where Value = 'Import_M_ProductPrice' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.ImportProductPrice', description = '', entitytype = 'EC16', help = '', jasperreport = '', procedurename = '', name = 'Import prix article', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Import_M_ProductPrice' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Import_M_ProductPrice'), 'nl_BE', 'Y', '','','Import prix article'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_M_ProductPrice') and ad_language = 'nl_BE');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import prix article' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_M_ProductPrice') and ad_language = 'nl_BE';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Import_M_ProductPrice'), 'nl_NL', 'Y', '','','Import prix article'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_M_ProductPrice') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import prix article' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_M_ProductPrice') and ad_language = 'nl_NL';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Import_M_ProductPrice'), 'fr_FR', 'Y', '','','Import prix article'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_M_ProductPrice') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import prix article' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_M_ProductPrice') and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'ValidateData','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.ValidateData',
'',
'EC16',
'',
'',
'',
'Valider données',
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
where not exists (select 1 from AD_Process where Value = 'ValidateData' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.ValidateData', description = '', entitytype = 'EC16', help = '', jasperreport = '', procedurename = '', name = 'Valider données', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'ValidateData' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ValidateData'), 'nl_BE', 'Y', '','','Valider données'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ValidateData') and ad_language = 'nl_BE');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valider données' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ValidateData') and ad_language = 'nl_BE';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ValidateData'), 'nl_NL', 'Y', '','','Valider données'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ValidateData') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valider données' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ValidateData') and ad_language = 'nl_NL';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ValidateData'), 'fr_FR', 'Y', '','','Valider données'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ValidateData') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valider données' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ValidateData') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ValidateData','',
'EC16',
'',
'Valider données',
'',
'',
'',
'',
'Valider données',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ValidateData' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC16', help = '', name = 'Valider données', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Valider données', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ValidateData' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ValidateData'), 'nl_BE', 'Y', '','','Valider données','','','','','Valider données'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ValidateData') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valider données',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Valider données' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ValidateData') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ValidateData'), 'nl_NL', 'Y', '','','Valider données','','','','','Valider données'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ValidateData') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valider données',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Valider données' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ValidateData') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ValidateData'), 'fr_FR', 'Y', '','','Valider données','','','','','Valider données'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ValidateData') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valider données',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Valider données' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ValidateData') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'I_ProductPrice_ID','',
'EC16',
'',
'Import des listes de prix',
'',
'',
'',
'',
'Import des listes de prix',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'I_ProductPrice_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC16', help = '', name = 'Import des listes de prix', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Import des listes de prix', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'I_ProductPrice_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='I_ProductPrice_ID'), 'nl_BE', 'Y', '','','Import des listes de prix','','','','','Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_ProductPrice_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import des listes de prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Import des listes de prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_ProductPrice_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='I_ProductPrice_ID'), 'nl_NL', 'Y', '','','Import des listes de prix','','','','','Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_ProductPrice_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import des listes de prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Import des listes de prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_ProductPrice_ID') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='I_ProductPrice_ID'), 'fr_FR', 'Y', '','','Import des listes de prix','','','','','Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_ProductPrice_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import des listes de prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Import des listes de prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_ProductPrice_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Is_ZDataValidate','',
'EC16',
'',
'Données validées',
'',
'',
'',
'',
'Données validées',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Is_ZDataValidate' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC16', help = '', name = 'Données validées', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Données validées', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Is_ZDataValidate' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Is_ZDataValidate'), 'nl_BE', 'Y', '','','Données validées','','','','','Données validées'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Is_ZDataValidate') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Données validées',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Données validées' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Is_ZDataValidate') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Is_ZDataValidate'), 'nl_NL', 'Y', '','','Données validées','','','','','Données validées'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Is_ZDataValidate') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Données validées',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Données validées' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Is_ZDataValidate') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Is_ZDataValidate'), 'fr_FR', 'Y', '','','Données validées','','','','','Données validées'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Is_ZDataValidate') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Données validées',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Données validées' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Is_ZDataValidate') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Name_M_PriceList','',
'EC16',
'',
'Nom liste de prix',
'',
'',
'',
'',
'Nom liste de prix',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Name_M_PriceList' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC16', help = '', name = 'Nom liste de prix', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Nom liste de prix', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Name_M_PriceList' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Name_M_PriceList'), 'nl_BE', 'Y', '','','Nom liste de prix','','','','','Nom liste de prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_M_PriceList') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom liste de prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nom liste de prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_M_PriceList') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Name_M_PriceList'), 'nl_NL', 'Y', '','','Nom liste de prix','','','','','Nom liste de prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_M_PriceList') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom liste de prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nom liste de prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_M_PriceList') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Name_M_PriceList'), 'fr_FR', 'Y', '','','Nom liste de prix','','','','','Nom liste de prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_M_PriceList') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom liste de prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nom liste de prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_M_PriceList') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Name_M_Pricelist_Version','',
'EC16',
'',
'Nom Version liste de prix',
'',
'',
'',
'',
'Nom Version liste de prix',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Name_M_Pricelist_Version' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC16', help = '', name = 'Nom Version liste de prix', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Nom Version liste de prix', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Name_M_Pricelist_Version' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Name_M_Pricelist_Version'), 'nl_BE', 'Y', '','','Nom Version liste de prix','','','','','Nom Version liste de prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_M_Pricelist_Version') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom Version liste de prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nom Version liste de prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_M_Pricelist_Version') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Name_M_Pricelist_Version'), 'nl_NL', 'Y', '','','Nom Version liste de prix','','','','','Nom Version liste de prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_M_Pricelist_Version') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom Version liste de prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nom Version liste de prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_M_Pricelist_Version') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Name_M_Pricelist_Version'), 'fr_FR', 'Y', '','','Nom Version liste de prix','','','','','Nom Version liste de prix'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_M_Pricelist_Version') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom Version liste de prix',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nom Version liste de prix' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Name_M_Pricelist_Version') and ad_language = 'fr_FR';

insert into AD_FieldGroup (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,Name,entitytype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_FieldGroup'),'Infos liste de prix','EC16',
'Y'
 from dual  
where not exists (select 1 from AD_FieldGroup where Name = 'Infos liste de prix' );

update AD_FieldGroup set Updated = sysdate, UpdatedBy = 0, entitytype = 'EC16', isactive = 'Y' 
where Name = 'Infos liste de prix' ;

insert into AD_FieldGroup_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_FieldGroup_ID from AD_FieldGroup where Name='Infos liste de prix'), 'nl_BE', 'Y', 'Infos liste de prix'
 from dual  
where not exists (select 1 from AD_FieldGroup_Trl where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Infos liste de prix') and ad_language = 'nl_BE');

update AD_FieldGroup_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Infos liste de prix' where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Infos liste de prix') and ad_language = 'nl_BE';

insert into AD_FieldGroup_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_FieldGroup_ID from AD_FieldGroup where Name='Infos liste de prix'), 'nl_NL', 'Y', 'Infos liste de prix'
 from dual  
where not exists (select 1 from AD_FieldGroup_Trl where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Infos liste de prix') and ad_language = 'nl_NL');

update AD_FieldGroup_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Infos liste de prix' where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Infos liste de prix') and ad_language = 'nl_NL';

insert into AD_FieldGroup_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_FieldGroup_ID from AD_FieldGroup where Name='Infos liste de prix'), 'fr_FR', 'Y', 'Infos liste de prix'
 from dual  
where not exists (select 1 from AD_FieldGroup_Trl where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Infos liste de prix') and ad_language = 'fr_FR');

update AD_FieldGroup_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Infos liste de prix' where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Infos liste de prix') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'EC16',
22,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'Tenant',
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
'N',
'',
'R',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = 'EC16', fieldlength = 22, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'EC16',
22,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'Organization',
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
'N',
'',
'R',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = 'EC16', fieldlength = 22, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'EC16',
7,
'The Created On field indicates the date that this record was created.',
'Created On',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = 'EC16', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'EC16',
22,
'The Created By field indicates the user who created this record.',
'Created By',
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
'N',
'',
'X',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = 'EC16', fieldlength = 22, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'The record is active in the system',
'EC16',
1,
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'Active',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'The record is active in the system', entitytype = 'EC16', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'EC16',
7,
'The Updated field indicates the date that this record was updated.',
'Updated',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = 'EC16', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'EC16',
22,
'The Updated By field indicates the user who updated this record.',
'Updated By',
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
'N',
'',
'X',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = 'EC16', fieldlength = 22, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'I_ProductPrice_ID',(select AD_Element_ID from AD_Element where ColumnName = 'I_ProductPrice_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC16',
10,
'',
'Import des listes de prix',
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
'Y',
'Y',
'N',
'N',
'N',
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'I_ProductPrice_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'I_ProductPrice_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'ID'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC16', fieldlength = 10, help = '', name = 'Import des listes de prix', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'Y', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'I_ProductPrice_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import des listes de prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import des listes de prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import des listes de prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Product, Service, Item',
'EC16',
10,
'Identifies an item which is either purchased or sold in this organization.',
'Product',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Product, Service, Item', entitytype = 'EC16', fieldlength = 10, help = 'Identifies an item which is either purchased or sold in this organization.', name = 'Product', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Name_M_PriceList',(select AD_Element_ID from AD_Element where ColumnName = 'Name_M_PriceList'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC16',
60,
'',
'Nom liste de prix',
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
where not exists (select 1 from AD_Column where ColumnName = 'Name_M_PriceList'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Name_M_PriceList'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC16', fieldlength = 60, help = '', name = 'Nom liste de prix', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Name_M_PriceList'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Clé liste de prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clé liste de prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Clé liste de prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clé liste de prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Clé liste de prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clé liste de prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value_M_Product',(select AD_Element_ID from AD_Element where ColumnName = 'Value_M_Product'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC16',
40,
'',
'Code article',
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
where not exists (select 1 from AD_Column where ColumnName = 'Value_M_Product'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value_M_Product'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC16', fieldlength = 40, help = '', name = 'Code article', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value_M_Product'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Code article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Code article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Code article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Is_ZFolder',(select AD_Element_ID from AD_Element where ColumnName = 'Is_ZFolder'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EC16',
1,
'',
'Folder',
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
where not exists (select 1 from AD_Column where ColumnName = 'Is_ZFolder'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Is_ZFolder'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EC16', fieldlength = 1, help = '', name = 'Folder', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Is_ZFolder'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Folder'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Folder' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Folder'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Folder' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Folder'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Folder' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'I_IsImported',(select AD_Element_ID from AD_Element where ColumnName = 'I_IsImported'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = '_IsImported'),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'Has this import been processed?',
'EC16',
1,
'The Imported check box indicates if this import has been processed.',
'Imported',
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
where not exists (select 1 from AD_Column where ColumnName = 'I_IsImported'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'I_IsImported'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = '_IsImported'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = 'Has this import been processed?', entitytype = 'EC16', fieldlength = 1, help = 'The Imported check box indicates if this import has been processed.', name = 'Imported', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'I_IsImported'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Imported'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Imported' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Imported'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Imported' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Imported'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Imported' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ValidTo',(select AD_Element_ID from AD_Element where ColumnName = 'ValidTo'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Valid to including this date (last day)',
'EC16',
7,
'The Valid To date indicates the last day of a date range',
'Valid to',
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
where not exists (select 1 from AD_Column where ColumnName = 'ValidTo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ValidTo'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Valid to including this date (last day)', entitytype = 'EC16', fieldlength = 7, help = 'The Valid To date indicates the last day of a date range', name = 'Valid to', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ValidTo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Valid to'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valid to' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Valid to'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valid to' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Valid to'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valid to' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Is_ZDataValidate',(select AD_Element_ID from AD_Element where ColumnName = 'Is_ZDataValidate'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EC16',
1,
'',
'Données validées',
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
where not exists (select 1 from AD_Column where ColumnName = 'Is_ZDataValidate'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Is_ZDataValidate'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EC16', fieldlength = 1, help = '', name = 'Données validées', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Is_ZDataValidate'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Données validées'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Données validées' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Données validées'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Données validées' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Données validées'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Données validées' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Processed',(select AD_Element_ID from AD_Element where ColumnName = 'Processed'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'The document has been processed',
'EC16',
1,
'The Processed checkbox indicates that a document has been processed.',
'Processed',
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
where not exists (select 1 from AD_Column where ColumnName = 'Processed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Processed'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = 'The document has been processed', entitytype = 'EC16', fieldlength = 1, help = 'The Processed checkbox indicates that a document has been processed.', name = 'Processed', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Processed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Processed'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Processed' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Processed'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Processed' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Processed'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Processed' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_PriceList_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_PriceList_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Unique identifier of a Price List',
'EC16',
10,
'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',
'Price List',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_PriceList_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_PriceList_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Unique identifier of a Price List', entitytype = 'EC16', fieldlength = 10, help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.', name = 'Price List', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_PriceList_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Price List'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Price List' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Price List'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Price List' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Price List'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Price List' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_PriceList_Version_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_PriceList_Version_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Identifies a unique instance of a Price List',
'EC16',
10,
'Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.',
'Price List Version',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_PriceList_Version_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_PriceList_Version_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Identifies a unique instance of a Price List', entitytype = 'EC16', fieldlength = 10, help = 'Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.', name = 'Price List Version', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_PriceList_Version_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Price List Version'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Price List Version' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Price List Version'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Price List Version' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Price List Version'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Price List Version' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Name_M_Pricelist_Version',(select AD_Element_ID from AD_Element where ColumnName = 'Name_M_Pricelist_Version'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC16',
60,
'',
'Nom Version liste de prix',
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
where not exists (select 1 from AD_Column where ColumnName = 'Name_M_Pricelist_Version'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Name_M_Pricelist_Version'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC16', fieldlength = 60, help = '', name = 'Nom Version liste de prix', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Name_M_Pricelist_Version'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Nom Version liste de prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nom Version liste de prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Nom Version liste de prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nom Version liste de prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Nom Version liste de prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nom Version liste de prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PriceStd',(select AD_Element_ID from AD_Element where ColumnName = 'PriceStd'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'0',
'Standard Price',
'EC16',
10,
'The Standard Price indicates the standard or normal price for a product on this price list',
'Standard Price',
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
where not exists (select 1 from AD_Column where ColumnName = 'PriceStd'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PriceStd'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '0', description = 'Standard Price', entitytype = 'EC16', fieldlength = 10, help = 'The Standard Price indicates the standard or normal price for a product on this price list', name = 'Standard Price', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PriceStd'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Standard Price'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Standard Price' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Standard Price'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Standard Price' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Standard Price'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Standard Price' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ValidFrom',(select AD_Element_ID from AD_Element where ColumnName = 'ValidFrom'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Valid from including this date (first day)',
'EC16',
7,
'The Valid From date indicates the first day of a date range',
'Valid from',
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
where not exists (select 1 from AD_Column where ColumnName = 'ValidFrom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ValidFrom'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Valid from including this date (first day)', entitytype = 'EC16', fieldlength = 7, help = 'The Valid From date indicates the first day of a date range', name = 'Valid from', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ValidFrom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Valid from'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valid from' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Valid from'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valid from' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Valid from'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valid from' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'I_ErrorMsg',(select AD_Element_ID from AD_Element where ColumnName = 'I_ErrorMsg'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Messages generated from import process',
'EC16',
2000,
'The Import Error Message displays any error messages generated during the import process.',
'Import Error Message',
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
where not exists (select 1 from AD_Column where ColumnName = 'I_ErrorMsg'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'I_ErrorMsg'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Messages generated from import process', entitytype = 'EC16', fieldlength = 2000, help = 'The Import Error Message displays any error messages generated during the import process.', name = 'Import Error Message', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'I_ErrorMsg'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Import Error Message'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Error Message' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Import Error Message'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Error Message' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Import Error Message'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Error Message' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Processing',(select AD_Element_ID from AD_Element where ColumnName = 'Processing'),
(select AD_Process_ID from AD_Process where Value = 'Import_M_ProductPrice'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EC16',
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
where not exists (select 1 from AD_Column where ColumnName = 'Processing'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Processing'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import_M_ProductPrice'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EC16', fieldlength = 1, help = '', name = 'Process Now', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Processing'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Process Now'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Now' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Process Now'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Now' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Process Now'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Now' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ValidateData',(select AD_Element_ID from AD_Element where ColumnName = 'ValidateData'),
(select AD_Process_ID from AD_Process where Value = 'ValidateData'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EC16',
1,
'',
'Valider données',
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
where not exists (select 1 from AD_Column where ColumnName = 'ValidateData'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ValidateData'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ValidateData'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EC16', fieldlength = 1, help = '', name = 'Valider données', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ValidateData'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_BE', 'Y', 'Valider données'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valider données' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'nl_NL', 'Y', 'Valider données'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valider données' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')), 'fr_FR', 'Y', 'Valider données'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valider données' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Import des prix','Import des prix',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'),
(select AD_Window_ID from AD_Window where Value = '1000445'),
'',
'',
'EC16',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
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
where not exists (select 1 from AD_Tab where Value = 'Import des prix'  and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Import des prix', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_ProductPrice'), ad_window_id = (select AD_Window_ID from AD_Window where Value = '1000445'), commitwarning = '', description = '', entitytype = 'EC16', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Import des prix'  and ad_window_id in (select ad_window_id from ad_window where value = '1000445');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')), 'nl_BE', 'Y', '','','','Import des prix'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Import des prix' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')), 'nl_NL', 'Y', '','','','Import des prix'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')) and ad_language = 'nl_NL');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Import des prix' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')) and ad_language = 'nl_NL';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')), 'fr_FR', 'Y', '','','','Import des prix'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Import des prix' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Valid to',
'Valid to including this date (last day)',
7,
'',
'EC16',
'The Valid To date indicates the last day of a date range',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Valid to', description = 'Valid to including this date (last day)', displaylength = 7, displaylogic = '', entitytype = 'EC16', help = 'The Valid To date indicates the last day of a date range', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', 'Valid to including this date (last day)','The Valid To date indicates the last day of a date range','Valid to'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Valid to including this date (last day)',Help = 'The Valid To date indicates the last day of a date range',Name = 'Valid to' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', 'Valid to including this date (last day)','The Valid To date indicates the last day of a date range','Valid to'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Valid to including this date (last day)',Help = 'The Valid To date indicates the last day of a date range',Name = 'Valid to' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', 'Valid to including this date (last day)','The Valid To date indicates the last day of a date range','Valid to'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Valid to including this date (last day)',Help = 'The Valid To date indicates the last day of a date range',Name = 'Valid to' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Valider données',
'',
1,
'',
'EC16',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Valider données', description = '', displaylength = 1, displaylogic = '', entitytype = 'EC16', help = '', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', '','','Valider données'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valider données' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', '','','Valider données'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valider données' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', '','','Valider données'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valider données' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidateData' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Active',
'The record is active in the system',
1,
'',
'EC16',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = 'EC16', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Code article',
'',
40,
'',
'EC16',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Code article', description = '', displaylength = 40, displaylogic = '', entitytype = 'EC16', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', '','','Code article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', '','','Code article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', '','','Code article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Données validées',
'',
1,
'',
'EC16',
'',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Données validées', description = '', displaylength = 1, displaylogic = '', entitytype = 'EC16', help = '', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', '','','Données validées'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Données validées' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', '','','Données validées'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Données validées' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', '','','Données validées'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Données validées' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZDataValidate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Folder',
'',
1,
'',
'EC16',
'',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Folder', description = '', displaylength = 1, displaylogic = '', entitytype = 'EC16', help = '', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', '','','Folder'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Folder' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', '','','Folder'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Folder' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', '','','Folder'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Folder' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Import des listes de prix',
'',
10,
'',
'EC16',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Import des listes de prix', description = '', displaylength = 10, displaylogic = '', entitytype = 'EC16', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', '','','Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import des listes de prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', '','','Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import des listes de prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', '','','Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import des listes de prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ProductPrice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Import Error Message',
'Messages generated from import process',
2000,
'',
'EC16',
'The Import Error Message displays any error messages generated during the import process.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Import Error Message', description = 'Messages generated from import process', displaylength = 2000, displaylogic = '', entitytype = 'EC16', help = 'The Import Error Message displays any error messages generated during the import process.', obscuretype = '', seqno = 190, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', 'Messages generated from import process','The Import Error Message displays any error messages generated during the import process.','Import Error Message'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Messages generated from import process',Help = 'The Import Error Message displays any error messages generated during the import process.',Name = 'Import Error Message' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', 'Messages generated from import process','The Import Error Message displays any error messages generated during the import process.','Import Error Message'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Messages generated from import process',Help = 'The Import Error Message displays any error messages generated during the import process.',Name = 'Import Error Message' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', 'Messages generated from import process','The Import Error Message displays any error messages generated during the import process.','Import Error Message'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Messages generated from import process',Help = 'The Import Error Message displays any error messages generated during the import process.',Name = 'Import Error Message' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Imported',
'Has this import been processed?',
1,
'',
'EC16',
'The Imported check box indicates if this import has been processed.',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Imported', description = 'Has this import been processed?', displaylength = 1, displaylogic = '', entitytype = 'EC16', help = 'The Imported check box indicates if this import has been processed.', obscuretype = '', seqno = 180, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', 'Has this import been processed?','The Imported check box indicates if this import has been processed.','Imported'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Has this import been processed?',Help = 'The Imported check box indicates if this import has been processed.',Name = 'Imported' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', 'Has this import been processed?','The Imported check box indicates if this import has been processed.','Imported'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Has this import been processed?',Help = 'The Imported check box indicates if this import has been processed.',Name = 'Imported' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', 'Has this import been processed?','The Imported check box indicates if this import has been processed.','Imported'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Has this import been processed?',Help = 'The Imported check box indicates if this import has been processed.',Name = 'Imported' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Infos liste de prix'),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Nom liste de prix',
'',
22,
'',
'EC16',
'',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Infos liste de prix'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Nom liste de prix', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC16', help = '', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', '','','Nom liste de prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom liste de prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', '','','Nom liste de prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom liste de prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', '','','Nom liste de prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom liste de prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_PriceList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Nom Version liste de prix',
'',
22,
'',
'EC16',
'',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Nom Version liste de prix', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC16', help = '', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', '','','Nom Version liste de prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom Version liste de prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', '','','Nom Version liste de prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom Version liste de prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', '','','Nom Version liste de prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nom Version liste de prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name_M_Pricelist_Version' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'EC16',
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
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = 'EC16', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Price List',
'Unique identifier of a Price List',
10,
'',
'EC16',
'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Price List', description = 'Unique identifier of a Price List', displaylength = 10, displaylogic = '', entitytype = 'EC16', help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', 'Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.','Price List'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unique identifier of a Price List',Help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',Name = 'Price List' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', 'Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.','Price List'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unique identifier of a Price List',Help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',Name = 'Price List' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', 'Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.','Price List'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unique identifier of a Price List',Help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',Name = 'Price List' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Price List Version',
'Identifies a unique instance of a Price List',
10,
'',
'EC16',
'Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Price List Version', description = 'Identifies a unique instance of a Price List', displaylength = 10, displaylogic = '', entitytype = 'EC16', help = 'Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', 'Identifies a unique instance of a Price List','Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.','Price List Version'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a unique instance of a Price List',Help = 'Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.',Name = 'Price List Version' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', 'Identifies a unique instance of a Price List','Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.','Price List Version'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a unique instance of a Price List',Help = 'Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.',Name = 'Price List Version' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', 'Identifies a unique instance of a Price List','Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.','Price List Version'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a unique instance of a Price List',Help = 'Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.',Name = 'Price List Version' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Process Now',
'',
1,
'',
'EC16',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Process Now', description = '', displaylength = 1, displaylogic = '', entitytype = 'EC16', help = '', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Processed',
'The document has been processed',
1,
'',
'EC16',
'The Processed checkbox indicates that a document has been processed.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Processed', description = 'The document has been processed', displaylength = 1, displaylogic = '', entitytype = 'EC16', help = 'The Processed checkbox indicates that a document has been processed.', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', 'The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The document has been processed',Help = 'The Processed checkbox indicates that a document has been processed.',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', 'The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The document has been processed',Help = 'The Processed checkbox indicates that a document has been processed.',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', 'The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The document has been processed',Help = 'The Processed checkbox indicates that a document has been processed.',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Product',
'Product, Service, Item',
10,
'',
'EC16',
'Identifies an item which is either purchased or sold in this organization.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Product', description = 'Product, Service, Item', displaylength = 10, displaylogic = '', entitytype = 'EC16', help = 'Identifies an item which is either purchased or sold in this organization.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', 'Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product, Service, Item',Help = 'Identifies an item which is either purchased or sold in this organization.',Name = 'Product' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', 'Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product, Service, Item',Help = 'Identifies an item which is either purchased or sold in this organization.',Name = 'Product' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', 'Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product, Service, Item',Help = 'Identifies an item which is either purchased or sold in this organization.',Name = 'Product' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Standard Price',
'Standard Price',
10,
'',
'EC16',
'The Standard Price indicates the standard or normal price for a product on this price list',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Standard Price', description = 'Standard Price', displaylength = 10, displaylogic = '', entitytype = 'EC16', help = 'The Standard Price indicates the standard or normal price for a product on this price list', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', 'Standard Price','The Standard Price indicates the standard or normal price for a product on this price list','Standard Price'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Standard Price',Help = 'The Standard Price indicates the standard or normal price for a product on this price list',Name = 'Standard Price' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', 'Standard Price','The Standard Price indicates the standard or normal price for a product on this price list','Standard Price'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Standard Price',Help = 'The Standard Price indicates the standard or normal price for a product on this price list',Name = 'Standard Price' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', 'Standard Price','The Standard Price indicates the standard or normal price for a product on this price list','Standard Price'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Standard Price',Help = 'The Standard Price indicates the standard or normal price for a product on this price list',Name = 'Standard Price' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'EC16',
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
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = 'EC16', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')),
'Valid from',
'Valid from including this date (first day)',
7,
'',
'EC16',
'The Valid From date indicates the first day of a date range',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import des prix' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = '1000445')), name = 'Valid from', description = 'Valid from including this date (first day)', displaylength = 7, displaylogic = '', entitytype = 'EC16', help = 'The Valid From date indicates the first day of a date range', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_BE', 'Y', 'Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Valid from including this date (first day)',Help = 'The Valid From date indicates the first day of a date range',Name = 'Valid from' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'nl_NL', 'Y', 'Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Valid from including this date (first day)',Help = 'The Valid From date indicates the first day of a date range',Name = 'Valid from' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))), 'fr_FR', 'Y', 'Valid from including this date (first day)','The Valid From date indicates the first day of a date range','Valid from'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Valid from including this date (first day)',Help = 'The Valid From date indicates the first day of a date range',Name = 'Valid from' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import des prix' and ad_window_id in (select ad_window_id from ad_window where value = '1000445'))) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'DeleteOldImported',(select AD_Element_ID from AD_Element where ColumnName = 'DeleteOldImported'),
(select AD_Process_ID from AD_Process where Value = 'Import_M_ProductPrice'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'DeleteOldImported',
'N',
'',
'',
'EC16',
0,
'',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'DeleteOldImported'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DeleteOldImported'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import_M_ProductPrice'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'DeleteOldImported', defaultvalue = 'N', defaultvalue2 = '', description = '', entitytype = 'EC16', fieldlength = 0, help = '', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'DeleteOldImported'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')), 'nl_BE', 'Y', '','','DeleteOldImported'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')) and ad_language = 'nl_BE');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'DeleteOldImported' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')), 'nl_NL', 'Y', '','','DeleteOldImported'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'DeleteOldImported' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')), 'fr_FR', 'Y', '','','DeleteOldImported'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'DeleteOldImported' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = 'ValidateData'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Tenant',
'',
'',
'',
'EC16',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ValidateData'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ValidateData'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Tenant', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EC16', fieldlength = 0, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ValidateData');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ValidateData')), 'nl_BE', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ValidateData')) and ad_language = 'nl_BE');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ValidateData')) and ad_language = 'nl_BE';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ValidateData')), 'nl_NL', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ValidateData')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ValidateData')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ValidateData')), 'fr_FR', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ValidateData')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ValidateData')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = 'Import_M_ProductPrice'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Tenant',
'',
'',
'',
'EC16',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import_M_ProductPrice'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Tenant', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EC16', fieldlength = 0, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')), 'nl_BE', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')) and ad_language = 'nl_BE');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')), 'nl_NL', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')), 'fr_FR', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_M_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Import des listes de prix','Import des listes de prix',
'W',
'',
'EC16',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = '1000445'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Import des listes de prix' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Import des listes de prix', action = 'W', description = '', entitytype = 'EC16', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = '1000445'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Import des listes de prix' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Import des listes de prix'), 'nl_BE', 'Y', '','Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import des listes de prix') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Import des listes de prix' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import des listes de prix') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Import des listes de prix'), 'nl_NL', 'Y', '','Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import des listes de prix') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Import des listes de prix' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import des listes de prix') and ad_language = 'nl_NL';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Import des listes de prix'), 'fr_FR', 'Y', '','Import des listes de prix'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import des listes de prix') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Import des listes de prix' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import des listes de prix') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC16 - Import prix', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC16' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'EC16', help = '', importtable = 'N', loadseq = 0, name = 'Import des listes de prix', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'I_ProductPrice' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Import des listes de prix') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Import des listes de prix')); 

