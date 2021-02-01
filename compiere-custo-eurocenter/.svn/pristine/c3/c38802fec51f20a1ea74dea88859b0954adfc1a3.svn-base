insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2685','71941 Gestion des prix concurent',
'',
'',
'Y',
'',
'',
'',
'Y',
'1',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '2685' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '71941 Gestion des prix concurent', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2685' ;

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'ZRV_PRODUCTPRICESYSDATE','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'2685',
'',
'N',
0,
'Prix article du jour',
'L',
'Y',
'N',
'N',
'N',
'Y',
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '2685', help = '', importtable = 'N', loadseq = 0, name = 'Prix article du jour', replicationtype = 'L', isactive = 'Y', isdeleteable = 'N', ishighvolume = 'N', issecurityenabled = 'N', isview = 'Y', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'ZRV_PRODUCTPRICESYSDATE' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='ZRV_PRODUCTPRICESYSDATE'), 'fr_FR', 'Y', 'Prix article du jour'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_PRODUCTPRICESYSDATE') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Prix article du jour' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_PRODUCTPRICESYSDATE') and ad_language = 'fr_FR';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='ZRV_PRODUCTPRICESYSDATE'), 'nl_NL', 'Y', 'Prix article du jour'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_PRODUCTPRICESYSDATE') and ad_language = 'nl_NL');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Prix article du jour' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_PRODUCTPRICESYSDATE') and ad_language = 'nl_NL';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'Z_SyncPriceLog','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'2685',
'',
'N',
0,
'Sync Price Log',
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
where not exists (select 1 from AD_Table where TableName = 'Z_SyncPriceLog' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '2685', help = '', importtable = 'N', loadseq = 0, name = 'Sync Price Log', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'Z_SyncPriceLog' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='Z_SyncPriceLog'), 'fr_FR', 'Y', 'Sync Price Log'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_SyncPriceLog') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sync Price Log' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_SyncPriceLog') and ad_language = 'fr_FR';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='Z_SyncPriceLog'), 'nl_NL', 'Y', 'Sync Price Log'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_SyncPriceLog') and ad_language = 'nl_NL');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sync Price Log' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_SyncPriceLog') and ad_language = 'nl_NL';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'ZRV_ProductPriceChange','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'2685',
'',
'N',
0,
'ZRV_ProductPriceChange',
'L',
'Y',
'N',
'N',
'N',
'Y',
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'ZRV_ProductPriceChange' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '2685', help = '', importtable = 'N', loadseq = 0, name = 'ZRV_ProductPriceChange', replicationtype = 'L', isactive = 'Y', isdeleteable = 'N', ishighvolume = 'N', issecurityenabled = 'N', isview = 'Y', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'ZRV_ProductPriceChange' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='ZRV_ProductPriceChange'), 'fr_FR', 'Y', 'ZRV_ProductPriceChange'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_ProductPriceChange') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ZRV_ProductPriceChange' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_ProductPriceChange') and ad_language = 'fr_FR';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='ZRV_ProductPriceChange'), 'nl_NL', 'Y', 'ZRV_ProductPriceChange'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_ProductPriceChange') and ad_language = 'nl_NL');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ZRV_ProductPriceChange' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_ProductPriceChange') and ad_language = 'nl_NL';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'AddPriceProduct','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.AddPriceProduct',
'',
'2685',
'',
'',
'',
'AddPriceProduct',
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
where not exists (select 1 from AD_Process where Value = 'AddPriceProduct' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.AddPriceProduct', description = '', entitytype = '2685', help = '', jasperreport = '', procedurename = '', name = 'AddPriceProduct', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'AddPriceProduct' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='AddPriceProduct'), 'fr_FR', 'Y', 'AddPriceProduct','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='AddPriceProduct') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'AddPriceProduct',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='AddPriceProduct') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='AddPriceProduct'), 'nl_NL', 'Y', 'AddPriceProduct','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='AddPriceProduct') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'AddPriceProduct',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='AddPriceProduct') and ad_language = 'nl_NL';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'SyncProductPrice','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.sync.process.SyncProductPrice',
'',
'2685',
'',
'',
'',
'Synchro prix articles magasins',
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
where not exists (select 1 from AD_Process where Value = 'SyncProductPrice' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.sync.process.SyncProductPrice', description = '', entitytype = '2685', help = '', jasperreport = '', procedurename = '', name = 'Synchro prix articles magasins', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'SyncProductPrice' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='SyncProductPrice'), 'fr_FR', 'Y', 'Synchro prix articles magasins','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='SyncProductPrice') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Synchro prix articles magasins',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='SyncProductPrice') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='SyncProductPrice'), 'nl_NL', 'Y', 'Synchro prix articles magasins','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='SyncProductPrice') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Synchro prix articles magasins',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='SyncProductPrice') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsAlign','',
'2685',
'',
'Alignement',
'',
'',
'',
'',
'Alignement',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsAlign' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2685', help = '', name = 'Alignement', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Alignement', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsAlign' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsAlign'), 'fr_FR', 'Y', '','Alignement','','','Alignement','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsAlign') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Alignement',Help = '',PO_PrintName = '',PrintName = 'Alignement',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsAlign') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsAlign'), 'nl_NL', 'Y', '','Alignement','','','Alignement','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsAlign') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Alignement',Help = '',PO_PrintName = '',PrintName = 'Alignement',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsAlign') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'AddPriceProduct','',
'2685',
'',
'Ajouter prix article',
'',
'',
'',
'',
'Ajouter prix article',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'AddPriceProduct' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2685', help = '', name = 'Ajouter prix article', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Ajouter prix article', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'AddPriceProduct' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='AddPriceProduct'), 'fr_FR', 'Y', '','Ajouter prix article','','','Ajouter prix article','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AddPriceProduct') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Ajouter prix article',Help = '',PO_PrintName = '',PrintName = 'Ajouter prix article',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AddPriceProduct') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='AddPriceProduct'), 'nl_NL', 'Y', '','Ajouter prix article','','','Ajouter prix article','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AddPriceProduct') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Ajouter prix article',Help = '',PO_PrintName = '',PrintName = 'Ajouter prix article',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AddPriceProduct') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'VERSIONNAME','',
'2685',
'',
'VERSIONNAME',
'',
'',
'',
'',
'VERSIONNAME',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'VERSIONNAME' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2685', help = '', name = 'VERSIONNAME', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'VERSIONNAME', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'VERSIONNAME' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='VERSIONNAME'), 'fr_FR', 'Y', '','VERSIONNAME','','','VERSIONNAME','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='VERSIONNAME') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'VERSIONNAME',Help = '',PO_PrintName = '',PrintName = 'VERSIONNAME',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='VERSIONNAME') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='VERSIONNAME'), 'nl_NL', 'Y', '','VERSIONNAME','','','VERSIONNAME','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='VERSIONNAME') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'VERSIONNAME',Help = '',PO_PrintName = '',PrintName = 'VERSIONNAME',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='VERSIONNAME') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_SyncPriceLog_ID','',
'2685',
'',
'Sync Price Log',
'',
'',
'',
'',
'Sync Price Log',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_SyncPriceLog_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2685', help = '', name = 'Sync Price Log', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Sync Price Log', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_SyncPriceLog_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_SyncPriceLog_ID'), 'fr_FR', 'Y', '','Sync Price Log','','','Sync Price Log','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_SyncPriceLog_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Sync Price Log',Help = '',PO_PrintName = '',PrintName = 'Sync Price Log',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_SyncPriceLog_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_SyncPriceLog_ID'), 'nl_NL', 'Y', '','Sync Price Log','','','Sync Price Log','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_SyncPriceLog_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Sync Price Log',Help = '',PO_PrintName = '',PrintName = 'Sync Price Log',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_SyncPriceLog_ID') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsUse','',
'2685',
'',
'Utilisé',
'',
'',
'',
'',
'Utilisé',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsUse' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2685', help = '', name = 'Utilisé', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Utilisé', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsUse' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsUse'), 'fr_FR', 'Y', '','Utilisé','','','Utilisé','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsUse') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Utilisé',Help = '',PO_PrintName = '',PrintName = 'Utilisé',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsUse') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsUse'), 'nl_NL', 'Y', '','Utilisé','','','Utilisé','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsUse') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Utilisé',Help = '',PO_PrintName = '',PrintName = 'Utilisé',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsUse') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AddPriceProduct',(select AD_Element_ID from AD_Element where ColumnName = 'AddPriceProduct'),
(select AD_Process_ID from AD_Process where Value = 'AddPriceProduct'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2685',
1,
'',
'Ajouter prix article',
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
where not exists (select 1 from AD_Column where ColumnName = 'AddPriceProduct'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AddPriceProduct'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'AddPriceProduct'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2685', fieldlength = 1, help = '', name = 'Ajouter prix article', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AddPriceProduct'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')), 'fr_FR', 'Y', 'Ajouter prix article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ajouter prix article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')), 'nl_NL', 'Y', 'Ajouter prix article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ajouter prix article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'The record is active in the system',
'2685',
1,
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'Active',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'The record is active in the system', entitytype = '2685', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'fr_FR', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'nl_NL', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ProductPriceChange'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'2685',
10,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'Tenant',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ProductPriceChange'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = '2685', fieldlength = 10, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')), 'fr_FR', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')), 'nl_NL', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ProductPriceChange'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'2685',
10,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'Organization',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ProductPriceChange'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = '2685', fieldlength = 10, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')), 'fr_FR', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')), 'nl_NL', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsAlign',(select AD_Element_ID from AD_Element where ColumnName = 'IsAlign'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_PriceList_Version'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'2685',
1,
'',
'Alignement',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsAlign'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsAlign'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_PriceList_Version'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = '2685', fieldlength = 1, help = '', name = 'Alignement', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsAlign'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version')), 'fr_FR', 'Y', 'Alignement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Alignement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version')), 'nl_NL', 'Y', 'Alignement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Alignement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value',(select AD_Element_ID from AD_Element where ColumnName = 'Value'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ProductPriceChange'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Search key for the record in the format required - must be unique',
'2685',
20,
'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'Search Key',
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
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'Value'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ProductPriceChange'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Search key for the record in the format required - must be unique', entitytype = '2685', fieldlength = 20, help = 'A search key allows you a fast method of finding a particular record. If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', name = 'Search Key', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')), 'fr_FR', 'Y', 'Search Key'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Search Key' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')), 'nl_NL', 'Y', 'Search Key'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Search Key' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Identifies the Client/Tenant for this installation.',
'2685',
10,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'Tenant',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Identifies the Client/Tenant for this installation.', entitytype = '2685', fieldlength = 10, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'fr_FR', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'nl_NL', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_PriceList_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_PriceList_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Unique identifier of a Price List',
'2685',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_PriceList_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_PriceList_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Unique identifier of a Price List', entitytype = '2685', fieldlength = 10, help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.', name = 'Price List', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_PriceList_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'fr_FR', 'Y', 'Price List'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Price List' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'nl_NL', 'Y', 'Price List'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Price List' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_PriceList_Version_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_PriceList_Version_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Identifies a unique instance of a Price List',
'2685',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_PriceList_Version_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_PriceList_Version_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Identifies a unique instance of a Price List', entitytype = '2685', fieldlength = 10, help = 'Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.', name = 'Price List Version', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_PriceList_Version_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'fr_FR', 'Y', 'Price List Version'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Price List Version' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'nl_NL', 'Y', 'Price List Version'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Price List Version' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Product, Service, Item',
'2685',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Product, Service, Item', entitytype = '2685', fieldlength = 10, help = 'Identifies an item which is either purchased or sold in this organization.', name = 'Product', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'fr_FR', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'nl_NL', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ValidFrom',(select AD_Element_ID from AD_Element where ColumnName = 'ValidFrom'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Valid from including this date (first day)',
'2685',
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
where not exists (select 1 from AD_Column where ColumnName = 'ValidFrom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ValidFrom'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Valid from including this date (first day)', entitytype = '2685', fieldlength = 7, help = 'The Valid From date indicates the first day of a date range', name = 'Valid from', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ValidFrom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'fr_FR', 'Y', 'Valid from'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valid from' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'nl_NL', 'Y', 'Valid from'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valid from' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ValidTo',(select AD_Element_ID from AD_Element where ColumnName = 'ValidTo'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Valid to including this date (last day)',
'2685',
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
where not exists (select 1 from AD_Column where ColumnName = 'ValidTo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ValidTo'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Valid to including this date (last day)', entitytype = '2685', fieldlength = 7, help = 'The Valid To date indicates the last day of a date range', name = 'Valid to', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ValidTo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'fr_FR', 'Y', 'Valid to'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valid to' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'nl_NL', 'Y', 'Valid to'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valid to' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PriceStd',(select AD_Element_ID from AD_Element where ColumnName = 'PriceStd'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Number'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Standard Price',
'2685',
14,
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
where not exists (select 1 from AD_Column where ColumnName = 'PriceStd'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PriceStd'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Number'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Standard Price', entitytype = '2685', fieldlength = 14, help = 'The Standard Price indicates the standard or normal price for a product on this price list', name = 'Standard Price', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PriceStd'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'fr_FR', 'Y', 'Standard Price'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Standard Price' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'nl_NL', 'Y', 'Standard Price'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Standard Price' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PRICELISTNAME',(select AD_Element_ID from AD_Element where ColumnName = 'PRICELISTNAME'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2685',
30,
'',
'PRICELISTNAME',
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
where not exists (select 1 from AD_Column where ColumnName = 'PRICELISTNAME'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PRICELISTNAME'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2685', fieldlength = 30, help = '', name = 'PRICELISTNAME', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PRICELISTNAME'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'fr_FR', 'Y', 'PRICELISTNAME'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PRICELISTNAME' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'nl_NL', 'Y', 'PRICELISTNAME'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PRICELISTNAME' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'VERSIONNAME',(select AD_Element_ID from AD_Element where ColumnName = 'VERSIONNAME'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2685',
30,
'',
'VERSIONNAME',
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
where not exists (select 1 from AD_Column where ColumnName = 'VERSIONNAME'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'VERSIONNAME'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2685', fieldlength = 30, help = '', name = 'VERSIONNAME', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'VERSIONNAME'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'fr_FR', 'Y', 'VERSIONNAME'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'VERSIONNAME' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'nl_NL', 'Y', 'VERSIONNAME'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'VERSIONNAME' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Is_ZFolder',(select AD_Element_ID from AD_Element where ColumnName = 'Is_ZFolder'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2685',
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
where not exists (select 1 from AD_Column where ColumnName = 'Is_ZFolder'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Is_ZFolder'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2685', fieldlength = 1, help = '', name = 'Folder', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Is_ZFolder'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'fr_FR', 'Y', 'Folder'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Folder' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'nl_NL', 'Y', 'Folder'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Folder' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ProductPriceChange'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'2685',
8,
'The Updated field indicates the date that this record was updated.',
'Updated',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ProductPriceChange'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = '2685', fieldlength = 8, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')), 'fr_FR', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')), 'nl_NL', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ProductPriceChange')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_PInstance_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_PInstance_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Number'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Instance of the process',
'2685',
10,
'',
'Process Instance',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_PInstance_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_PInstance_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Number'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Instance of the process', entitytype = '2685', fieldlength = 10, help = '', name = 'Process Instance', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_PInstance_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'fr_FR', 'Y', 'Process Instance'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Instance' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'nl_NL', 'Y', 'Process Instance'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Instance' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_PInstance_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsUse',(select AD_Element_ID from AD_Element where ColumnName = 'IsUse'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'2685',
1,
'',
'Utilisé',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsUse'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsUse'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = '2685', fieldlength = 1, help = '', name = 'Utilisé', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsUse'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsUse' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'fr_FR', 'Y', 'Utilisé'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsUse' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Utilisé' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsUse' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsUse' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'nl_NL', 'Y', 'Utilisé'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsUse' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Utilisé' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsUse' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_SyncPriceLog_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_SyncPriceLog_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2685',
10,
'',
'Sync Price Log',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_SyncPriceLog_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_SyncPriceLog_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'ID'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2685', fieldlength = 10, help = '', name = 'Sync Price Log', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'Y', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_SyncPriceLog_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_SyncPriceLog_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'fr_FR', 'Y', 'Sync Price Log'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_SyncPriceLog_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sync Price Log' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_SyncPriceLog_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_SyncPriceLog_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'nl_NL', 'Y', 'Sync Price Log'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_SyncPriceLog_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sync Price Log' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_SyncPriceLog_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'2685',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = '2685', fieldlength = 22, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'fr_FR', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'nl_NL', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'2685',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = '2685', fieldlength = 22, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'fr_FR', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'nl_NL', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'2685',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = '2685', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'fr_FR', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'nl_NL', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'2685',
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
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = '2685', fieldlength = 22, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'fr_FR', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'nl_NL', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'The record is active in the system',
'2685',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'The record is active in the system', entitytype = '2685', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'fr_FR', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'nl_NL', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'2685',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = '2685', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'fr_FR', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'nl_NL', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'2685',
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
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = '2685', fieldlength = 22, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'fr_FR', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'nl_NL', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'FileName',(select AD_Element_ID from AD_Element where ColumnName = 'FileName'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Name of the local file or URL',
'2685',
100,
'Name of a file in the local directory space - or URL (file://.., http://.., ftp://..)',
'File Name',
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
where not exists (select 1 from AD_Column where ColumnName = 'FileName'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'FileName'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_SyncPriceLog'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Name of the local file or URL', entitytype = '2685', fieldlength = 100, help = 'Name of a file in the local directory space - or URL (file://.., http://.., ftp://..)', name = 'File Name', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'FileName'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'fr_FR', 'Y', 'File Name'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'File Name' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')), 'nl_NL', 'Y', 'File Name'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'File Name' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_SyncPriceLog')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Organizational entity within Tenant',
'2685',
10,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'Organization',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Organizational entity within Tenant', entitytype = '2685', fieldlength = 10, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'fr_FR', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')), 'nl_NL', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_language = 'nl_NL';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'PriceOfDay','Prix du jour',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE')),
(select AD_Column_ID from AD_Column where ColumnName = 'M_Product_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'),
(select AD_Window_ID from AD_Window where Value = 'Product_140'),
'',
'',
'2685',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'ZRV_PRODUCTPRICESYSDATE.ValidFrom DESC',
12,
1,
'',
'Y',
'N',
'N',
'Y',
'Y',
'N',
'N',
'',
'N',
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'Y',
(select AD_Tab_ID from AD_Tab where Value = '')
 from dual  
where not exists (select 1 from AD_Tab where Value = 'PriceOfDay'  and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Prix du jour', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = 'M_Product_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_PRODUCTPRICESYSDATE'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Product_140'), commitwarning = '', description = '', entitytype = '2685', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), orderbyclause = 'ZRV_PRODUCTPRICESYSDATE.ValidFrom DESC', seqno = 12, tablevel = 1, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'Y', issinglerow = 'Y', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'N', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'PriceOfDay'  and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')), 'fr_FR', 'Y', '','','','Prix du jour'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Prix du jour' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')) and ad_language = 'fr_FR';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')), 'nl_NL', 'Y', '','','','Prix du jour'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')) and ad_language = 'nl_NL');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Prix du jour' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Version_238' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Price List_146')),
'Alignement',
'',
0,
'',
'2685',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
140
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Version_238' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Version_238' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Price List_146')), name = 'Alignement', description = '', displaylength = 0, displaylogic = '', entitytype = '2685', help = '', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 140 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Version_238' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Version_238' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))), 'fr_FR', 'Y', '','','Alignement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Version_238' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Alignement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Version_238' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Version_238' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))), 'nl_NL', 'Y', '','','Alignement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Version_238' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Alignement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsAlign' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList_Version')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Version_238' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Organization',
'Organizational entity within Tenant',
10,
'',
'2685',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
20
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 10, displaylogic = '', entitytype = '2685', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 20 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organizational entity within Tenant','Magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Description = 'Organizational entity within Tenant',Name = 'Magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organizational entity within Tenant','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Description = 'Organizational entity within Tenant',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'PRICELISTNAME',
'',
30,
'',
'2685',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'PRICELISTNAME', description = '', displaylength = 30, displaylogic = '', entitytype = '2685', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', '','','PRICELISTNAME'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'PRICELISTNAME' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', '','','PRICELISTNAME'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'PRICELISTNAME' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PRICELISTNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Price List',
'Unique identifier of a Price List',
10,
'',
'2685',
'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Price List', description = 'Unique identifier of a Price List', displaylength = 10, displaylogic = '', entitytype = '2685', help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 50 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.','Unique identifier of a Price List','Liste de prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',Description = 'Unique identifier of a Price List',Name = 'Liste de prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.','Unique identifier of a Price List','Price List'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',Description = 'Unique identifier of a Price List',Name = 'Price List' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Price List Version',
'Identifies a unique instance of a Price List',
10,
'',
'2685',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
60
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Price List Version', description = 'Identifies a unique instance of a Price List', displaylength = 10, displaylogic = '', entitytype = '2685', help = 'Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 60 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', 'Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.','Identifies a unique instance of a Price List','Version de prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.',Description = 'Identifies a unique instance of a Price List',Name = 'Version de prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', 'Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.','Identifies a unique instance of a Price List','Price List Version'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Each Price List can have multiple versions.  The most common use is to indicate the dates that a Price List is valid for.',Description = 'Identifies a unique instance of a Price List',Name = 'Price List Version' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_Version_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Product',
'Product, Service, Item',
10,
'',
'2685',
'Identifies an item which is either purchased or sold in this organization.',
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
30
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Product', description = 'Product, Service, Item', displaylength = 10, displaylogic = '', entitytype = '2685', help = 'Identifies an item which is either purchased or sold in this organization.', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 30 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', 'Identifies an item which is either purchased or sold in this organization.','Product, Service, Item','Article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identifies an item which is either purchased or sold in this organization.',Description = 'Product, Service, Item',Name = 'Article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', 'Identifies an item which is either purchased or sold in this organization.','Product, Service, Item','Product'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identifies an item which is either purchased or sold in this organization.',Description = 'Product, Service, Item',Name = 'Product' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Standard Price',
'Standard Price',
14,
'',
'2685',
'The Standard Price indicates the standard or normal price for a product on this price list',
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
40
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Standard Price', description = 'Standard Price', displaylength = 14, displaylogic = '', entitytype = '2685', help = 'The Standard Price indicates the standard or normal price for a product on this price list', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 40 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', 'The Standard Price indicates the standard or normal price for a product on this price list','Standard Price','Prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Standard Price indicates the standard or normal price for a product on this price list',Description = 'Standard Price',Name = 'Prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', 'The Standard Price indicates the standard or normal price for a product on this price list','Standard Price','Standard Price'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Standard Price indicates the standard or normal price for a product on this price list',Description = 'Standard Price',Name = 'Standard Price' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
10,
'',
'2685',
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
10
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 10, displaylogic = '', entitytype = '2685', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 10 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Identifies the Client/Tenant for this installation.','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Description = 'Identifies the Client/Tenant for this installation.',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Identifies the Client/Tenant for this installation.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Description = 'Identifies the Client/Tenant for this installation.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'VERSIONNAME',
'',
30,
'',
'2685',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'VERSIONNAME', description = '', displaylength = 30, displaylogic = '', entitytype = '2685', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', '','','VERSIONNAME'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'VERSIONNAME' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', '','','VERSIONNAME'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'VERSIONNAME' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VERSIONNAME' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Valid from',
'Valid from including this date (first day)',
7,
'',
'2685',
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
70
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Valid from', description = 'Valid from including this date (first day)', displaylength = 7, displaylogic = '', entitytype = '2685', help = 'The Valid From date indicates the first day of a date range', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 70 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', 'The Valid From date indicates the first day of a date range','Valid from including this date (first day)','Du'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Valid From date indicates the first day of a date range',Description = 'Valid from including this date (first day)',Name = 'Du' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', 'The Valid From date indicates the first day of a date range','Valid from including this date (first day)','Valid from'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Valid From date indicates the first day of a date range',Description = 'Valid from including this date (first day)',Name = 'Valid from' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Valid to',
'Valid to including this date (last day)',
7,
'',
'2685',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
80
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Valid to', description = 'Valid to including this date (last day)', displaylength = 7, displaylogic = '', entitytype = '2685', help = 'The Valid To date indicates the last day of a date range', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 80 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', 'The Valid To date indicates the last day of a date range','Valid to including this date (last day)','Au'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Valid To date indicates the last day of a date range',Description = 'Valid to including this date (last day)',Name = 'Au' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', 'The Valid To date indicates the last day of a date range','Valid to including this date (last day)','Valid to'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Valid To date indicates the last day of a date range',Description = 'Valid to including this date (last day)',Name = 'Valid to' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ValidTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Folder',
'',
0,
'',
'2685',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'PriceOfDay' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Folder', description = '', displaylength = 0, displaylogic = '', entitytype = '2685', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 90 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', '','','Folder'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Folder' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', '','','Folder'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Folder' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is_ZFolder' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_PRODUCTPRICESYSDATE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PriceOfDay' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Product_180' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Ajouter prix article',
'',
0,
'',
'2685',
'',
'',
440,
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
440
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Product_180' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Ajouter prix article', description = '', displaylength = 0, displaylogic = '', entitytype = '2685', help = '', obscuretype = '', seqno = 440, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 440 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', '','','Ajouter prix article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Ajouter prix article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', '','','Ajouter prix article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Ajouter prix article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AddPriceProduct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'M_PriceList_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'AddPriceProduct'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = 'M_PriceList'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Liste de prix',
'',
'',
'',
'2685',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'M_PriceList_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'AddPriceProduct'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'M_PriceList'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Liste de prix', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '2685', fieldlength = 0, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'M_PriceList_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')), 'fr_FR', 'Y', '','','Liste de prix'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Liste de prix' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')), 'nl_NL', 'Y', '','','Liste de prix'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Liste de prix' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'M_PriceList_Version_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'AddPriceProduct'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = 'M_PriceList_Version for Client and M_PriceList'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'M_PriceList_Version by M_PriceList_ID'),
'Version de prix',
'',
'',
'',
'2685',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'M_PriceList_Version_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'AddPriceProduct'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'M_PriceList_Version for Client and M_PriceList'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'M_PriceList_Version by M_PriceList_ID'), name = 'Version de prix', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '2685', fieldlength = 0, help = '', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'M_PriceList_Version_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_Version_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')), 'fr_FR', 'Y', '','','Version de prix'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_Version_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Version de prix' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_Version_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_Version_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')), 'nl_NL', 'Y', '','','Version de prix'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_Version_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Version de prix' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_Version_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Price',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'AddPriceProduct'),
(select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Prix',
'0',
'',
'',
'2685',
0,
'',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'Price'  and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'AddPriceProduct'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Prix', defaultvalue = '0', defaultvalue2 = '', description = '', entitytype = '2685', fieldlength = 0, help = '', seqno = 30, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Price'  and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Price' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')), 'fr_FR', 'Y', '','','Prix'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Price' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Prix' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Price' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Price' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')), 'nl_NL', 'Y', '','','Prix'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Price' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Prix' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Price' and ad_process_id in (select ad_process_id from ad_process where value = 'AddPriceProduct')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'SyncProductPrice'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_Org (Trx)'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Magasin',
'0',
'',
'',
'2685',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'SyncProductPrice'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'SyncProductPrice'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_Org (Trx)'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Magasin', defaultvalue = '0', defaultvalue2 = '', description = '', entitytype = '2685', fieldlength = 0, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'SyncProductPrice');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'SyncProductPrice')), 'fr_FR', 'Y', '','','Magasin'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'SyncProductPrice')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'SyncProductPrice')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'SyncProductPrice')), 'nl_NL', 'Y', '','','Magasin'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'SyncProductPrice')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'SyncProductPrice')) and ad_language = 'nl_NL';

insert into Z_ExpFormat (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,Z_ExpFormat_ID,Name,ad_table_id, WhereClause,OrderByClause,description, isactive, entitytype) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('Z_ExpFormat'),'Export ProductPriceChange',(select AD_Table_ID from AD_Table where TableName = 'ZRV_ProductPriceChange'),
'TRUNC(UPDATED) = TRUNC(SYSDATE)',
'',
'Export ProductPriceChange',
'Y',
'2685'
 from dual  
where not exists (select 1 from Z_ExpFormat where Name = 'Export ProductPriceChange' );

update Z_ExpFormat set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ProductPriceChange'), WhereClause = 'TRUNC(UPDATED) = TRUNC(SYSDATE)', OrderByClause = '', description = 'Export ProductPriceChange', isactive = 'Y', entitytype = '2685' 
where Name = 'Export ProductPriceChange' ;

insert into Z_ExpFormatSegment (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,Z_ExpFormatSegment_ID,Name,description, seqno, z_expformat_id, isactive, resetcount, entitytype, totrim) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('Z_ExpFormatSegment'),'VALUE','VALUE',
1,
(select Z_ExpFormat_ID from Z_ExpFormat where Name = 'Export ProductPriceChange'),
'Y',
'N',
'2685',
'Y'
 from dual  
where not exists (select 1 from Z_ExpFormatSegment where Name = 'VALUE'  and Z_ExpFormat_id in (select Z_ExpFormat_id from Z_ExpFormat where name = 'Export ProductPriceChange'));

update Z_ExpFormatSegment set Updated = sysdate, UpdatedBy = 0, description = 'VALUE', seqno = 1, z_expformat_id = (select Z_ExpFormat_ID from Z_ExpFormat where Name = 'Export ProductPriceChange'), isactive = 'Y', resetcount = 'N', entitytype = '2685', totrim = 'Y' 
where Name = 'VALUE'  and Z_ExpFormat_id in (select Z_ExpFormat_id from Z_ExpFormat where name = 'Export ProductPriceChange');

insert into Z_ExpFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,Z_ExpFormatItem_ID,Name,ad_column_id, exportformat, incrementno, maxwidth, minwidth, printformattype, printname, seqno, z_expformatchild_id, z_expformatsegment_id, isactive, entitytype) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('Z_ExpFormatItem'),'Value',(select AD_Column_ID from AD_Column where ColumnName = 'Value' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ProductPriceChange')),
'',
0,
0,
0,
'F',
'VALUE',
0,
(select Z_ExpFormat_ID from Z_ExpFormat where Name = ''),
(select Z_ExpFormatSegment_ID from Z_ExpFormatSegment where Name = 'VALUE' and Z_ExpFormat_ID in (select Z_ExpFormat_ID from Z_ExpFormat where Name = 'Export ProductPriceChange')),
'Y',
'2685'
 from dual  
where not exists (select 1 from Z_ExpFormatItem where Name = 'Value'  and Z_ExpFormatSegment_id in (select Z_ExpFormatSegment_id from Z_ExpFormatSegment where name = 'VALUE' and Z_ExpFormat_id in (select Z_ExpFormat_ID from Z_ExpFormat where name = 'Export ProductPriceChange') ));

update Z_ExpFormatItem set Updated = sysdate, UpdatedBy = 0, ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = 'Value' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ProductPriceChange')), exportformat = '', incrementno = 0, maxwidth = 0, minwidth = 0, printformattype = 'F', printname = 'VALUE', seqno = 0, z_expformatchild_id = (select Z_ExpFormat_ID from Z_ExpFormat where Name = ''), z_expformatsegment_id = (select Z_ExpFormatSegment_ID from Z_ExpFormatSegment where Name = 'VALUE' and Z_ExpFormat_ID in (select Z_ExpFormat_ID from Z_ExpFormat where Name = 'Export ProductPriceChange')), isactive = 'Y', entitytype = '2685' 
where Name = 'Value'  and Z_ExpFormatSegment_id in (select Z_ExpFormatSegment_id from Z_ExpFormatSegment where name = 'VALUE' and Z_ExpFormat_id in (select Z_ExpFormat_ID from Z_ExpFormat where name = 'Export ProductPriceChange') );

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Synchro prix articles magasins','Synchro prix articles magasins',
'P',
'',
'2685',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'SyncProductPrice'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Synchro prix articles magasins' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Synchro prix articles magasins', action = 'P', description = '', entitytype = '2685', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'SyncProductPrice'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Synchro prix articles magasins' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Synchro prix articles magasins'), 'fr_FR', 'Y', '','Synchro prix articles magasins'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Synchro prix articles magasins') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Synchro prix articles magasins' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Synchro prix articles magasins') and ad_language = 'fr_FR';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Synchro prix articles magasins'), 'nl_NL', 'Y', '','Synchro prix articles magasins'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Synchro prix articles magasins') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Synchro prix articles magasins' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Synchro prix articles magasins') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'URL_FILE_SYNCPRODUCTPRICE','2685',
'/opt/compiere/Compiere361/exportFile/',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'URL_FILE_SYNCPRODUCTPRICE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2685', msgtext = '/opt/compiere/Compiere361/exportFile/', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'URL_FILE_SYNCPRODUCTPRICE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='URL_FILE_SYNCPRODUCTPRICE'), 'fr_FR', 'Y', '','/opt/compiere/Compiere361/exportFile/'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='URL_FILE_SYNCPRODUCTPRICE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = '/opt/compiere/Compiere361/exportFile/' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='URL_FILE_SYNCPRODUCTPRICE') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='URL_FILE_SYNCPRODUCTPRICE'), 'nl_NL', 'Y', '','/opt/compiere/Compiere361/exportFile/'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='URL_FILE_SYNCPRODUCTPRICE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = '/opt/compiere/Compiere361/exportFile/' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='URL_FILE_SYNCPRODUCTPRICE') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '71941 Gestion des prix concurent', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2685' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '2685', help = '', importtable = 'N', loadseq = 0, name = 'Prix article du jour', replicationtype = 'L', isactive = 'Y', isdeleteable = 'N', ishighvolume = 'N', issecurityenabled = 'N', isview = 'Y', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'ZRV_PRODUCTPRICESYSDATE' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '2685', help = '', importtable = 'N', loadseq = 0, name = 'Sync Price Log', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'Z_SyncPriceLog' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '2685', help = '', importtable = 'N', loadseq = 0, name = 'ZRV_ProductPriceChange', replicationtype = 'L', isactive = 'Y', isdeleteable = 'N', ishighvolume = 'N', issecurityenabled = 'N', isview = 'Y', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'ZRV_ProductPriceChange' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Synchro prix articles magasins') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Synchro prix articles magasins')); 

