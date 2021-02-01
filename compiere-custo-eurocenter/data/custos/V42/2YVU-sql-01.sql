insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2YVU','2YVU',
'',
'',
'Y',
'',
'',
'',
'N',
'2YVU',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '2YVU' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2YVU', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '2YVU', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2YVU' ;

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'Sélection remboursements clients','Sélection remboursements clients',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'',
'2YVU',
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
where not exists (select 1 from AD_Window where Value = 'Sélection remboursements clients' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Sélection remboursements clients', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = '', entitytype = '2YVU', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'Sélection remboursements clients' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Sélection remboursements clients'), 'fr_FR', 'Y', '','','Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Sélection remboursements clients') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Sélection remboursements clients' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Sélection remboursements clients') and ad_language = 'fr_FR';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Sélection remboursements clients'), 'nl_NL', 'Y', '','','Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Sélection remboursements clients') and ad_language = 'nl_NL');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Sélection remboursements clients' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Sélection remboursements clients') and ad_language = 'nl_NL';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'XX_REMB_CLIENTS','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'2YVU',
'',
'N',
0,
'Rembourssements Clients',
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
where not exists (select 1 from AD_Table where TableName = 'XX_REMB_CLIENTS' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '2YVU', help = '', importtable = 'N', loadseq = 0, name = 'Rembourssements Clients', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'XX_REMB_CLIENTS' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='XX_REMB_CLIENTS'), 'fr_FR', 'Y', 'Rembourssements Clients'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_REMB_CLIENTS') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Rembourssements Clients' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_REMB_CLIENTS') and ad_language = 'fr_FR';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='XX_REMB_CLIENTS'), 'nl_NL', 'Y', 'Rembourssements Clients'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_REMB_CLIENTS') and ad_language = 'nl_NL');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Rembourssements Clients' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_REMB_CLIENTS') and ad_language = 'nl_NL';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'XX_REMB_SELECTION','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Sélection remboursements clients',
'2YVU',
'',
'N',
0,
'XX_REMB_SELECTION',
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
where not exists (select 1 from AD_Table where TableName = 'XX_REMB_SELECTION' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = 'Sélection remboursements clients', entitytype = '2YVU', help = '', importtable = 'N', loadseq = 0, name = 'XX_REMB_SELECTION', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'XX_REMB_SELECTION' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='XX_REMB_SELECTION'), 'fr_FR', 'Y', 'Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_REMB_SELECTION') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sélection remboursements clients' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_REMB_SELECTION') and ad_language = 'fr_FR';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='XX_REMB_SELECTION'), 'nl_NL', 'Y', 'Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_REMB_SELECTION') and ad_language = 'nl_NL');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sélection remboursements clients' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_REMB_SELECTION') and ad_language = 'nl_NL';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'XX_REMB_SEL_LIGNE','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'2YVU',
'',
'N',
0,
'Ligne de remboursements',
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
where not exists (select 1 from AD_Table where TableName = 'XX_REMB_SEL_LIGNE' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '2YVU', help = '', importtable = 'N', loadseq = 0, name = 'Ligne de remboursements', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'XX_REMB_SEL_LIGNE' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='XX_REMB_SEL_LIGNE'), 'fr_FR', 'Y', 'Ligne de remboursements'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_REMB_SEL_LIGNE') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ligne de remboursements' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_REMB_SEL_LIGNE') and ad_language = 'fr_FR';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='XX_REMB_SEL_LIGNE'), 'nl_NL', 'Y', 'Ligne de remboursements'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_REMB_SEL_LIGNE') and ad_language = 'nl_NL');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ligne de remboursements' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='XX_REMB_SEL_LIGNE') and ad_language = 'nl_NL';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Création SEPA client','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.CreateSEPAREMBS',
'Création SEPA client',
'2YVU',
'',
'',
'',
'Création SEPA client',
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
where not exists (select 1 from AD_Process where Value = 'Création SEPA client' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.CreateSEPAREMBS', description = 'Création SEPA client', entitytype = '2YVU', help = '', jasperreport = '', procedurename = '', name = 'Création SEPA client', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Création SEPA client' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Création SEPA client'), 'fr_FR', 'Y', 'Création SEPA client','','Création SEPA client'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Création SEPA client') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Création SEPA client',Help = '',Description = 'Création SEPA client' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Création SEPA client') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Création SEPA client'), 'nl_NL', 'Y', 'Création SEPA client','','Création SEPA client'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Création SEPA client') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Création SEPA client',Help = '',Description = 'Création SEPA client' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Création SEPA client') and ad_language = 'nl_NL';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Sélection des remboursements','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.SelectREMBS',
'Sélection des remboursements clients non encore traités.',
'2YVU',
'',
'',
'',
'Sélection des remboursements',
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
where not exists (select 1 from AD_Process where Value = 'Sélection des remboursements' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.SelectREMBS', description = 'Sélection des remboursements clients non encore traités.', entitytype = '2YVU', help = '', jasperreport = '', procedurename = '', name = 'Sélection des remboursements', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Sélection des remboursements' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Sélection des remboursements'), 'fr_FR', 'Y', 'Sélection des remboursements','','Sélection des remboursements clients non encore traités.'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Sélection des remboursements') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sélection des remboursements',Help = '',Description = 'Sélection des remboursements clients non encore traités.' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Sélection des remboursements') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Sélection des remboursements'), 'nl_NL', 'Y', 'Sélection des remboursements','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Sélection des remboursements') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sélection des remboursements',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Sélection des remboursements') and ad_language = 'nl_NL';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'ZExportSepaClient','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.process.ExportPaymentSepaClient',
'',
'2YVU',
'',
'',
'',
'Export SEPA Client',
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
where not exists (select 1 from AD_Process where Value = 'ZExportSepaClient' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.process.ExportPaymentSepaClient', description = '', entitytype = '2YVU', help = '', jasperreport = '', procedurename = '', name = 'Export SEPA Client', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'ZExportSepaClient' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ZExportSepaClient'), 'fr_FR', 'Y', 'Export SEPA Client','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZExportSepaClient') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Export SEPA Client',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZExportSepaClient') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ZExportSepaClient'), 'nl_NL', 'Y', 'Export SEPA Client','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZExportSepaClient') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Export SEPA Client',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZExportSepaClient') and ad_language = 'nl_NL';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Création Paiements Rembourssements','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.CreatePaymentREMBS',
'Création Paiements Rembourssements',
'2YVU',
'',
'',
'',
'Création Paiements Rembourssements',
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
where not exists (select 1 from AD_Process where Value = 'Création Paiements Rembourssements' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.CreatePaymentREMBS', description = 'Création Paiements Rembourssements', entitytype = '2YVU', help = '', jasperreport = '', procedurename = '', name = 'Création Paiements Rembourssements', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Création Paiements Rembourssements' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Création Paiements Rembourssements'), 'fr_FR', 'Y', 'Création Paiements Rembourssements','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Création Paiements Rembourssements') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Création Paiements Rembourssements',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Création Paiements Rembourssements') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Création Paiements Rembourssements'), 'nl_NL', 'Y', 'Création Paiements Rembourssements','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Création Paiements Rembourssements') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Création Paiements Rembourssements',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Création Paiements Rembourssements') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_REMB_SELECTION_ID','Sélection remboursements clients',
'2YVU',
'',
'Sélection remboursements clients',
'',
'',
'',
'',
'Sélection remboursements clients',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_REMB_SELECTION_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Sélection remboursements clients', entitytype = '2YVU', help = '', name = 'Sélection remboursements clients', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Sélection remboursements clients', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_REMB_SELECTION_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_REMB_SELECTION_ID'), 'fr_FR', 'Y', 'Sélection remboursements clients','Sélection remboursements clients','','','Sélection remboursements clients','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_REMB_SELECTION_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Sélection remboursements clients',Name = 'Sélection remboursements clients',Help = '',PO_PrintName = '',PrintName = 'Sélection remboursements clients',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_REMB_SELECTION_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_REMB_SELECTION_ID'), 'nl_NL', 'Y', 'Sélection remboursements clients','Sélection remboursements clients','','','Sélection remboursements clients','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_REMB_SELECTION_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Sélection remboursements clients',Name = 'Sélection remboursements clients',Help = '',PO_PrintName = '',PrintName = 'Sélection remboursements clients',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_REMB_SELECTION_ID') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_REMB_CLIENTS_ID','',
'2YVU',
'',
'Rembourssements Clients',
'',
'',
'',
'',
'Rembourssements Clients',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_REMB_CLIENTS_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2YVU', help = '', name = 'Rembourssements Clients', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Rembourssements Clients', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_REMB_CLIENTS_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_REMB_CLIENTS_ID'), 'fr_FR', 'Y', '','Remboursements Clients','','','Remboursements Clients','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_REMB_CLIENTS_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Remboursements Clients',Help = '',PO_PrintName = '',PrintName = 'Remboursements Clients',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_REMB_CLIENTS_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_REMB_CLIENTS_ID'), 'nl_NL', 'Y', '','Remboursements Clients','','','Remboursements Clients','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_REMB_CLIENTS_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Remboursements Clients',Help = '',PO_PrintName = '',PrintName = 'Remboursements Clients',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_REMB_CLIENTS_ID') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_REMB_SEL_LIGNE_ID','',
'2YVU',
'',
'Ligne de remboursements',
'',
'',
'',
'',
'Ligne de remboursements',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_REMB_SEL_LIGNE_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2YVU', help = '', name = 'Ligne de remboursements', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Ligne de remboursements', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_REMB_SEL_LIGNE_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_REMB_SEL_LIGNE_ID'), 'fr_FR', 'Y', '','Ligne de remboursements','','','Ligne de remboursements','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_REMB_SEL_LIGNE_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Ligne de remboursements',Help = '',PO_PrintName = '',PrintName = 'Ligne de remboursements',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_REMB_SEL_LIGNE_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_REMB_SEL_LIGNE_ID'), 'nl_NL', 'Y', '','Ligne de remboursements','','','Ligne de remboursements','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_REMB_SEL_LIGNE_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Ligne de remboursements',Help = '',PO_PrintName = '',PrintName = 'Ligne de remboursements',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_REMB_SEL_LIGNE_ID') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Invoice_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Invoice_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Invoice Identifier',
'2YVU',
10,
'The Invoice Document.',
'Invoice',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Invoice_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Invoice_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Invoice Identifier', entitytype = '2YVU', fieldlength = 10, help = 'The Invoice Document.', name = 'Invoice', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Invoice_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Invoice'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Invoice' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Invoice'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Invoice' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Order_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Order',
'2YVU',
10,
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
'Order',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Order', entitytype = '2YVU', fieldlength = 10, help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', name = 'Order', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DateTrx',(select AD_Element_ID from AD_Element where ColumnName = 'DateTrx'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Transaction Date',
'2YVU',
7,
'The Transaction Date indicates the date of the transaction.',
'Transaction Date',
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
where not exists (select 1 from AD_Column where ColumnName = 'DateTrx'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DateTrx'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Transaction Date', entitytype = '2YVU', fieldlength = 7, help = 'The Transaction Date indicates the date of the transaction.', name = 'Transaction Date', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DateTrx'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Transaction Date'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Transaction Date' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Transaction Date'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Transaction Date' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IBAN',(select AD_Element_ID from AD_Element where ColumnName = 'IBAN'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'International Bank Account Number',
'2YVU',
50,
'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.',
'IBAN',
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
where not exists (select 1 from AD_Column where ColumnName = 'IBAN'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IBAN'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'International Bank Account Number', entitytype = '2YVU', fieldlength = 50, help = 'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.', name = 'IBAN', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IBAN'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'IBAN'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IBAN' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'IBAN'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IBAN' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ExportFormat',(select AD_Element_ID from AD_Element where ColumnName = 'ExportFormat'),
(select AD_Process_ID from AD_Process where Value = 'Création SEPA client'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2YVU',
1,
'',
'Export Format',
'@XX_REMB_SELECTION_ID@=0',
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
where not exists (select 1 from AD_Column where ColumnName = 'ExportFormat'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ExportFormat'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Création SEPA client'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2YVU', fieldlength = 1, help = '', name = 'Export Format', readonlylogic = '@XX_REMB_SELECTION_ID@=0', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ExportFormat'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Création SEPA client'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Création SEPA client' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Création SEPA client'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Création SEPA client' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Processed',(select AD_Element_ID from AD_Element where ColumnName = 'Processed'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'The document has been processed',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'Processed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Processed'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'The document has been processed', entitytype = '2YVU', fieldlength = 1, help = 'The Processed checkbox indicates that a document has been processed.', name = 'Processed', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Processed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Processed'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Processed' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Processed'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Processed' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'BBAN',(select AD_Element_ID from AD_Element where ColumnName = 'BBAN'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Basic Bank Account Number',
'2YVU',
10,
'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/',
'BIC/Swift',
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
where not exists (select 1 from AD_Column where ColumnName = 'BBAN'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'BBAN'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Basic Bank Account Number', entitytype = '2YVU', fieldlength = 10, help = 'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/', name = 'BIC/Swift', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'BBAN'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'BIC/Swift'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'BIC/Swift' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'BIC/Swift'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'BIC/Swift' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_DocType_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_DocType_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_DocType Payment/Selection'),
'',
'',
'Document type or rules',
'2YVU',
10,
'The Document Type determines document sequence and processing rules',
'Document Type',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_DocType_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_DocType_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_DocType Payment/Selection'), callout = '', defaultvalue = '', description = 'Document type or rules', entitytype = '2YVU', fieldlength = 10, help = 'The Document Type determines document sequence and processing rules', name = 'Document Type', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_DocType_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Document Type'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Type' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Document Type'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Type' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Processing2',(select AD_Element_ID from AD_Element where ColumnName = 'Processing2'),
(select AD_Process_ID from AD_Process where Value = 'Sélection des remboursements'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2YVU',
1,
'',
'Process Now',
'@XX_REMB_SELECTION_ID@=0',
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
where not exists (select 1 from AD_Column where ColumnName = 'Processing2'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Processing2'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Sélection des remboursements'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2YVU', fieldlength = 1, help = '', name = 'Process Now', readonlylogic = '@XX_REMB_SELECTION_ID@=0', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Processing2'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Process Now'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Now' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Process Now'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Now' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DocumentNo',(select AD_Element_ID from AD_Element where ColumnName = 'DocumentNo'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Document sequence number of the document',
'2YVU',
50,
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'Document No',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'Y',
'N',
'N',
'N',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'DocumentNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DocumentNo'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Document sequence number of the document', entitytype = '2YVU', fieldlength = 50, help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', name = 'Document No', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DocumentNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Document No'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document No' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Document No'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document No' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Currency_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Currency_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'The Currency for this record',
'2YVU',
10,
'Indicates the Currency to be used when processing or reporting on this record',
'Currency',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Currency_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Currency_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'The Currency for this record', entitytype = '2YVU', fieldlength = 10, help = 'Indicates the Currency to be used when processing or reporting on this record', name = 'Currency', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Currency_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Currency'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Currency' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Currency'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Currency' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_REMB_CLIENTS_ID',(select AD_Element_ID from AD_Element where ColumnName = 'XX_REMB_CLIENTS_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2YVU',
10,
'',
'Rembourssements Clients',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_REMB_CLIENTS_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_REMB_CLIENTS_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'ID'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2YVU', fieldlength = 10, help = '', name = 'Rembourssements Clients', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'Y', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_REMB_CLIENTS_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'Remboursements Clients'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Remboursements Clients' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'Remboursements Clients'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Remboursements Clients' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZSubPaymentRule_ID',(select AD_Element_ID from AD_Element where ColumnName = 'ZSubPaymentRule_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2YVU',
10,
'',
'Sub Payment Rule',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZSubPaymentRule_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZSubPaymentRule_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2YVU', fieldlength = 10, help = '', name = 'Sub Payment Rule', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZSubPaymentRule_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Sous Méthode de paiement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous Méthode de paiement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sub Payment Rule' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'MONTANT',(select AD_Element_ID from AD_Element where ColumnName = 'MONTANT'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2YVU',
10,
'',
'MONTANT',
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
where not exists (select 1 from AD_Column where ColumnName = 'MONTANT'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'MONTANT'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2YVU', fieldlength = 10, help = '', name = 'MONTANT', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'MONTANT'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'MONTANT'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'MONTANT' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'MONTANT'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'MONTANT' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Order_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Order',
'2YVU',
10,
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
'Order',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Order', entitytype = '2YVU', fieldlength = 10, help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', name = 'Order', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'MONTANT',(select AD_Element_ID from AD_Element where ColumnName = 'MONTANT'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2YVU',
10,
'',
'MONTANT',
'',
1,
'',
'',
0,
'',
'Y',
'N',
'N',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'MONTANT'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'MONTANT'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2YVU', fieldlength = 10, help = '', name = 'MONTANT', readonlylogic = '', seqno = 1, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'MONTANT'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'MONTANT'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'MONTANT' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'MONTANT'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'MONTANT' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZExport',(select AD_Element_ID from AD_Element where ColumnName = 'ZExport'),
(select AD_Process_ID from AD_Process where Value = 'Création Paiements Rembourssements'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2YVU',
1,
'',
'Export',
'@XX_REMB_SELECTION_ID@=0',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZExport'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZExport'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Création Paiements Rembourssements'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2YVU', fieldlength = 1, help = '', name = 'Export', readonlylogic = '@XX_REMB_SELECTION_ID@=0', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZExport'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Création Paiements Remboursements'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Création Paiements Remboursements' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Création Paiements Remboursements'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Création Paiements Remboursements' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = '2YVU', fieldlength = 22, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = '2YVU', fieldlength = 22, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = '2YVU', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = '2YVU', fieldlength = 22, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'The record is active in the system',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'The record is active in the system', entitytype = '2YVU', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = '2YVU', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = '2YVU', fieldlength = 22, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IBAN',(select AD_Element_ID from AD_Element where ColumnName = 'IBAN'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'International Bank Account Number',
'2YVU',
50,
'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.',
'IBAN',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'Y',
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
'Y',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'IBAN'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IBAN'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'International Bank Account Number', entitytype = '2YVU', fieldlength = 50, help = 'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.', name = 'IBAN', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'Y', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IBAN'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'IBAN'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IBAN' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'IBAN'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IBAN' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_REMB_SELECTION_ID',(select AD_Element_ID from AD_Element where ColumnName = 'XX_REMB_SELECTION_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Sélection remboursements clients',
'2YVU',
10,
'',
'Sélection remboursements clients',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_REMB_SELECTION_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_REMB_SELECTION_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'ID'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Sélection remboursements clients', entitytype = '2YVU', fieldlength = 10, help = '', name = 'Sélection remboursements clients', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'Y', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_REMB_SELECTION_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sélection remboursements clients' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sélection remboursements clients' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BankAccount_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BankAccount_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_BankAccount allowed by Role'),
'',
'',
'Account at the Bank',
'2YVU',
1,
'The Bank Account identifies an account at this Bank.',
'Bank Account',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_BankAccount_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BankAccount_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_BankAccount allowed by Role'), callout = '', defaultvalue = '', description = 'Account at the Bank', entitytype = '2YVU', fieldlength = 1, help = 'The Bank Account identifies an account at this Bank.', name = 'Bank Account', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BankAccount_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Compte bancaire'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Compte bancaire' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Bank Account'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Bank Account' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Payment_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Payment_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Payment identifier',
'2YVU',
10,
'The Payment is a unique identifier of this payment.',
'Payment',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Payment_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Payment_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Payment identifier', entitytype = '2YVU', fieldlength = 10, help = 'The Payment is a unique identifier of this payment.', name = 'Payment', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Payment_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Payment'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Payment' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Payment'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Payment' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Identifies a Business Partner',
'2YVU',
10,
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
'Business Partner',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Identifies a Business Partner', entitytype = '2YVU', fieldlength = 10, help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', name = 'Business Partner', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Business Partner'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Business Partner'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Processed',(select AD_Element_ID from AD_Element where ColumnName = 'Processed'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'The document has been processed',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'Processed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Processed'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'The document has been processed', entitytype = '2YVU', fieldlength = 1, help = 'The Processed checkbox indicates that a document has been processed.', name = 'Processed', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Processed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'Processed'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Processed' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'Processed'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Processed' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = '2YVU', fieldlength = 22, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org of Client (excl 0)'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org of Client (excl 0)'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = '2YVU', fieldlength = 22, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = '2YVU', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = '2YVU', fieldlength = 22, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'The record is active in the system',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'The record is active in the system', entitytype = '2YVU', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = '2YVU', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = '2YVU', fieldlength = 22, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_REMB_CLIENTS_ID',(select AD_Element_ID from AD_Element where ColumnName = 'XX_REMB_CLIENTS_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2YVU',
10,
'',
'Rembourssements Clients',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_REMB_CLIENTS_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_REMB_CLIENTS_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2YVU', fieldlength = 10, help = '', name = 'Rembourssements Clients', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_REMB_CLIENTS_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Remboursements Clients'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Remboursements Clients' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Remboursements Clients'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Remboursements Clients' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = '2YVU', fieldlength = 22, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = '2YVU', fieldlength = 22, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = '2YVU', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = '2YVU', fieldlength = 22, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'The record is active in the system',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'The record is active in the system', entitytype = '2YVU', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = '2YVU', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'2YVU',
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
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = '2YVU', fieldlength = 22, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Invoice_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Invoice_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_Invoice of C_BPartner'),
'',
'',
'Invoice Identifier',
'2YVU',
10,
'The Invoice Document.',
'Invoice',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Invoice_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Invoice_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_Invoice of C_BPartner'), callout = '', defaultvalue = '', description = 'Invoice Identifier', entitytype = '2YVU', fieldlength = 10, help = 'The Invoice Document.', name = 'Invoice', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Invoice_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'fr_FR', 'Y', 'Invoice'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Invoice' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')), 'nl_NL', 'Y', 'Invoice'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Invoice' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Name',(select AD_Element_ID from AD_Element where ColumnName = 'Name'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Alphanumeric identifier of the entity',
'2YVU',
50,
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
'Name',
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
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'Name'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Name'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Alphanumeric identifier of the entity', entitytype = '2YVU', fieldlength = 50, help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', name = 'Name', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Name'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'fr_FR', 'Y', 'Name'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Name' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')), 'nl_NL', 'Y', 'Name'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Name' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_REMB_SELECTION_ID',(select AD_Element_ID from AD_Element where ColumnName = 'XX_REMB_SELECTION_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Sélection remboursements clients',
'2YVU',
10,
'',
'Sélection remboursements clients',
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
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_REMB_SELECTION_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_REMB_SELECTION_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Sélection remboursements clients', entitytype = '2YVU', fieldlength = 10, help = '', name = 'Sélection remboursements clients', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'Y', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_REMB_SELECTION_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sélection remboursements clients' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sélection remboursements clients' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_REMB_SEL_LIGNE_ID',(select AD_Element_ID from AD_Element where ColumnName = 'XX_REMB_SEL_LIGNE_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2YVU',
10,
'',
'Ligne de remboursements',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_REMB_SEL_LIGNE_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_REMB_SEL_LIGNE_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'ID'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2YVU', fieldlength = 10, help = '', name = 'Ligne de remboursements', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'Y', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_REMB_SEL_LIGNE_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Ligne de remboursements'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ligne de remboursements' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Ligne de remboursements'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ligne de remboursements' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'BBAN',(select AD_Element_ID from AD_Element where ColumnName = 'BBAN'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Basic Bank Account Number',
'2YVU',
50,
'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/',
'BIC/Swift',
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
where not exists (select 1 from AD_Column where ColumnName = 'BBAN'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'BBAN'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Basic Bank Account Number', entitytype = '2YVU', fieldlength = 50, help = 'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/', name = 'BIC/Swift', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'BBAN'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'BIC/Swift'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'BIC/Swift' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'BIC/Swift'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'BIC/Swift' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Lignes de sélection','Lignes de sélection',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE')),
(select AD_Column_ID from AD_Column where ColumnName = 'XX_REMB_SELECTION_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients'),
'',
'',
'2YVU',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'',
20,
1,
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
where not exists (select 1 from AD_Tab where Value = 'Lignes de sélection'  and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Lignes de sélection', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = 'XX_REMB_SELECTION_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients'), commitwarning = '', description = '', entitytype = '2YVU', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), orderbyclause = '', seqno = 20, tablevel = 1, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Lignes de sélection'  and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')), 'fr_FR', 'Y', '','','','Lignes de sélection'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Help = '',Description = '',Name = 'Lignes de sélection' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')) and ad_language = 'fr_FR';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')), 'nl_NL', 'Y', '','','','Lignes de sélection'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')) and ad_language = 'nl_NL');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Help = '',Description = '',Name = 'Lignes de sélection' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')) and ad_language = 'nl_NL';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Sélection remboursements clients','Sélection remboursements clients',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'),
(select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients'),
'',
'',
'2YVU',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
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
where not exists (select 1 from AD_Tab where Value = 'Sélection remboursements clients'  and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Sélection remboursements clients', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SELECTION'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients'), commitwarning = '', description = '', entitytype = '2YVU', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Sélection remboursements clients'  and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')), 'fr_FR', 'Y', '','','','Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Help = '',Description = '',Name = 'Sélection remboursements clients' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')) and ad_language = 'fr_FR';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')), 'nl_NL', 'Y', '','','','Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')) and ad_language = 'nl_NL');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Help = '',Description = '',Name = 'Sélection remboursements clients' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')) and ad_language = 'nl_NL';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Remb. Clients','Remb. Clients',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS')),
(select AD_Column_ID from AD_Column where ColumnName = 'C_Order_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'),
(select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis'),
'',
'',
'2YVU',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'',
210,
1,
'',
'Y',
'N',
'N',
'N',
'Y',
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
where not exists (select 1 from AD_Tab where Value = 'Remb. Clients'  and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Remb. Clients', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = 'C_Order_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_CLIENTS'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis'), commitwarning = '', description = '', entitytype = '2YVU', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), orderbyclause = '', seqno = 210, tablevel = 1, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'Y', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '@#AD_Role_ID@=1000727 | @#AD_Role_ID@=1000736 | @#AD_Role_ID@=1001877 | @#AD_Role_ID@=1001440 | @#AD_Role_ID@=1001878 | @#AD_Role_ID@=1000737 | @#AD_Role_ID@=1001768', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Remb. Clients'  and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')), 'fr_FR', 'Y', '','','','Remb. Clients'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Help = '',Description = '',Name = 'Remb. Clients' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')) and ad_language = 'fr_FR';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')), 'nl_NL', 'Y', '','','','Remb. Clients'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')) and ad_language = 'nl_NL');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Help = '',Description = '',Name = 'Remb. Clients' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Active',
'The record is active in the system',
1,
'',
'2YVU',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = '2YVU', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','The record is active in the system','Actif'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Description = 'The record is active in the system',Name = 'Actif' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','The record is active in the system','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Description = 'The record is active in the system',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Bank Account',
'Account at the Bank',
1,
'',
'2YVU',
'The Bank Account identifies an account at this Bank.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Bank Account', description = 'Account at the Bank', displaylength = 1, displaylogic = '', entitytype = '2YVU', help = 'The Bank Account identifies an account at this Bank.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'The Bank Account identifies an account at this Bank.','Account at the Bank','Compte bancaire'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Bank Account identifies an account at this Bank.',Description = 'Account at the Bank',Name = 'Compte bancaire' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'The Bank Account identifies an account at this Bank.','Account at the Bank','Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Bank Account identifies an account at this Bank.',Description = 'Account at the Bank',Name = 'Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Document Type',
'Document type or rules',
10,
'',
'2YVU',
'The Document Type determines document sequence and processing rules',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Document Type', description = 'Document type or rules', displaylength = 10, displaylogic = '', entitytype = '2YVU', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'The Document Type determines document sequence and processing rules','Document type or rules','Type document'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Document Type determines document sequence and processing rules',Description = 'Document type or rules',Name = 'Type document' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'The Document Type determines document sequence and processing rules','Document type or rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Document Type determines document sequence and processing rules',Description = 'Document type or rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Export',
'',
1,
'',
'2YVU',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Export', description = '', displaylength = 1, displaylogic = '', entitytype = '2YVU', help = '', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', '','','Création Paiements Remboursements'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Création Paiements Remboursements' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', '','','Export'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Export' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZExport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Name',
'Alphanumeric identifier of the entity',
50,
'',
'2YVU',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Name', description = 'Alphanumeric identifier of the entity', displaylength = 50, displaylogic = '', entitytype = '2YVU', help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','Alphanumeric identifier of the entity','Remb. Clients'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Description = 'Alphanumeric identifier of the entity',Name = 'Remb. Clients' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','Alphanumeric identifier of the entity','Name'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Description = 'Alphanumeric identifier of the entity',Name = 'Name' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'2YVU',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = '2YVU', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organizational entity within Tenant','Magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Description = 'Organizational entity within Tenant',Name = 'Magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organizational entity within Tenant','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Description = 'Organizational entity within Tenant',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Process Now',
'',
1,
'',
'2YVU',
'',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Process Now', description = '', displaylength = 1, displaylogic = '', entitytype = '2YVU', help = '', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', '','','Créer la sélection'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Créer la sélection' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Processed',
'The document has been processed',
1,
'',
'2YVU',
'The Processed checkbox indicates that a document has been processed.',
'',
100,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Processed', description = 'The document has been processed', displaylength = 1, displaylogic = '', entitytype = '2YVU', help = 'The Processed checkbox indicates that a document has been processed.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'The Processed checkbox indicates that a document has been processed.','The document has been processed','Traité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Processed checkbox indicates that a document has been processed.',Description = 'The document has been processed',Name = 'Traité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'The Processed checkbox indicates that a document has been processed.','The document has been processed','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Processed checkbox indicates that a document has been processed.',Description = 'The document has been processed',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Sélection remboursements clients',
'Sélection remboursements clients',
10,
'',
'2YVU',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Sélection remboursements clients', description = 'Sélection remboursements clients', displaylength = 10, displaylogic = '', entitytype = '2YVU', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', '','Sélection remboursements clients','Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Sélection remboursements clients',Name = 'Sélection remboursements clients' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', '','Sélection remboursements clients','Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Sélection remboursements clients',Name = 'Sélection remboursements clients' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'2YVU',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = '2YVU', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Identifies the Client/Tenant for this installation.','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Description = 'Identifies the Client/Tenant for this installation.',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Identifies the Client/Tenant for this installation.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Description = 'Identifies the Client/Tenant for this installation.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Transaction Date',
'Transaction Date',
0,
'',
'2YVU',
'The Transaction Date indicates the date of the transaction.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Transaction Date', description = 'Transaction Date', displaylength = 0, displaylogic = '', entitytype = '2YVU', help = 'The Transaction Date indicates the date of the transaction.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'The Transaction Date indicates the date of the transaction.','Transaction Date','Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Transaction Date indicates the date of the transaction.',Description = 'Transaction Date',Name = 'Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'The Transaction Date indicates the date of the transaction.','Transaction Date','Transaction Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Transaction Date indicates the date of the transaction.',Description = 'Transaction Date',Name = 'Transaction Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Order',
'Order',
0,
'',
'2YVU',
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Order', description = 'Order', displaylength = 0, displaylogic = '', entitytype = '2YVU', help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.','Order','ODV'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',Description = 'Order',Name = 'ODV' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.','Order','Order'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',Description = 'Order',Name = 'Order' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Invoice',
'Invoice Identifier',
0,
'',
'2YVU',
'The Invoice Document.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Invoice', description = 'Invoice Identifier', displaylength = 0, displaylogic = '', entitytype = '2YVU', help = 'The Invoice Document.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'The Invoice Document.','Invoice Identifier','Facture'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Invoice Document.',Description = 'Invoice Identifier',Name = 'Facture' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'The Invoice Document.','Invoice Identifier','Invoice'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Invoice Document.',Description = 'Invoice Identifier',Name = 'Invoice' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Business Partner',
'Identifies a Business Partner',
0,
'',
'2YVU',
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
'',
40,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Business Partner', description = 'Identifies a Business Partner', displaylength = 0, displaylogic = '', entitytype = '2YVU', help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Identifies a Business Partner','Tiers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Description = 'Identifies a Business Partner',Name = 'Tiers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Identifies a Business Partner','Business Partner'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Description = 'Identifies a Business Partner',Name = 'Business Partner' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Export Format',
'',
0,
'',
'2YVU',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Export Format', description = '', displaylength = 0, displaylogic = '', entitytype = '2YVU', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', '','','Création SEPA client	'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Création SEPA client	' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', '','','Export Format'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Export Format' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'Active',
'The record is active in the system',
1,
'',
'2YVU',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = '2YVU', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','The record is active in the system','Actif'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Description = 'The record is active in the system',Name = 'Actif' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','The record is active in the system','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Description = 'The record is active in the system',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'BIC/Swift',
'Basic Bank Account Number',
10,
'',
'2YVU',
'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'BIC/Swift', description = 'Basic Bank Account Number', displaylength = 10, displaylogic = '', entitytype = '2YVU', help = 'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', 'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/','Basic Bank Account Number','BIC/Swift'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/',Description = 'Basic Bank Account Number',Name = 'BIC/Swift' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', 'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/','Basic Bank Account Number','BIC/Swift'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/',Description = 'Basic Bank Account Number',Name = 'BIC/Swift' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'IBAN',
'International Bank Account Number',
50,
'',
'2YVU',
'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'IBAN', description = 'International Bank Account Number', displaylength = 50, displaylogic = '', entitytype = '2YVU', help = 'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', 'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.','International Bank Account Number','IBAN'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.',Description = 'International Bank Account Number',Name = 'IBAN' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', 'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.','International Bank Account Number','IBAN'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.',Description = 'International Bank Account Number',Name = 'IBAN' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'Invoice',
'Invoice Identifier',
10,
'',
'2YVU',
'The Invoice Document.',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'Invoice', description = 'Invoice Identifier', displaylength = 10, displaylogic = '', entitytype = '2YVU', help = 'The Invoice Document.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', 'The Invoice Document.','Invoice Identifier','Facture'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Invoice Document.',Description = 'Invoice Identifier',Name = 'Facture' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', 'The Invoice Document.','Invoice Identifier','Invoice'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Invoice Document.',Description = 'Invoice Identifier',Name = 'Invoice' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'MONTANT',
'',
10,
'',
'2YVU',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'MONTANT', description = '', displaylength = 10, displaylogic = '', entitytype = '2YVU', help = '', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', '','','Montant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Montant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', '','','MONTANT'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'MONTANT' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'Order',
'Order',
10,
'',
'2YVU',
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
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
'@C_Order_ID@',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'Order', description = 'Order', displaylength = 10, displaylogic = '', entitytype = '2YVU', help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@C_Order_ID@', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.','Order','ODV.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',Description = 'Order',Name = 'ODV.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.','Order','Order'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',Description = 'Order',Name = 'Order' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'2YVU',
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
'@AD_Org_ID@',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = '2YVU', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@AD_Org_ID@', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organizational entity within Tenant','Magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Description = 'Organizational entity within Tenant',Name = 'Magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organizational entity within Tenant','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Description = 'Organizational entity within Tenant',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'Processed',
'The document has been processed',
1,
'',
'2YVU',
'The Processed checkbox indicates that a document has been processed.',
'',
80,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'Processed', description = 'The document has been processed', displaylength = 1, displaylogic = '', entitytype = '2YVU', help = 'The Processed checkbox indicates that a document has been processed.', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', 'The Processed checkbox indicates that a document has been processed.','The document has been processed','Traité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Processed checkbox indicates that a document has been processed.',Description = 'The document has been processed',Name = 'Traité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', 'The Processed checkbox indicates that a document has been processed.','The document has been processed','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Processed checkbox indicates that a document has been processed.',Description = 'The document has been processed',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'Rembourssements Clients',
'',
10,
'',
'2YVU',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'Rembourssements Clients', description = '', displaylength = 10, displaylogic = '', entitytype = '2YVU', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', '','','Remboursements Clients'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Remboursements Clients' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', '','','Remboursements Clients'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Remboursements Clients' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_CLIENTS_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'2YVU',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = '2YVU', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Identifies the Client/Tenant for this installation.','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Description = 'Identifies the Client/Tenant for this installation.',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Identifies the Client/Tenant for this installation.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Description = 'Identifies the Client/Tenant for this installation.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Document No',
'Document sequence number of the document',
0,
'',
'2YVU',
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'',
50,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sélection remboursements clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Document No', description = 'Document sequence number of the document', displaylength = 0, displaylogic = '', entitytype = '2YVU', help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document sequence number of the document','No Document'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',Description = 'Document sequence number of the document',Name = 'No Document' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document sequence number of the document','Document No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',Description = 'Document sequence number of the document',Name = 'Document No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SELECTION')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sélection remboursements clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'Name',
'Alphanumeric identifier of the entity',
0,
'',
'2YVU',
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
'',
100,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Remb. Clients' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'Name', description = 'Alphanumeric identifier of the entity', displaylength = 0, displaylogic = '', entitytype = '2YVU', help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','Alphanumeric identifier of the entity','Remboursement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Description = 'Alphanumeric identifier of the entity',Name = 'Remboursement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','Alphanumeric identifier of the entity','Name'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Description = 'Alphanumeric identifier of the entity',Name = 'Name' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_CLIENTS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Remb. Clients' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Active',
'The record is active in the system',
1,
'',
'2YVU',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = '2YVU', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','The record is active in the system','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Description = 'The record is active in the system',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','The record is active in the system','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Description = 'The record is active in the system',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'BIC/Swift',
'Basic Bank Account Number',
50,
'',
'2YVU',
'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'BIC/Swift', description = 'Basic Bank Account Number', displaylength = 50, displaylogic = '', entitytype = '2YVU', help = 'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/','Basic Bank Account Number','BIC/Swift'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/',Description = 'Basic Bank Account Number',Name = 'BIC/Swift' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/','Basic Bank Account Number','BIC/Swift'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Basic (or Domestic) Bank Account Number is used in Bank transfers (see also IBAN). For details see ISO 13616 and http://www.ecbs.org/',Description = 'Basic Bank Account Number',Name = 'BIC/Swift' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'IBAN',
'International Bank Account Number',
50,
'',
'2YVU',
'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'IBAN', description = 'International Bank Account Number', displaylength = 50, displaylogic = '', entitytype = '2YVU', help = 'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.','International Bank Account Number','IBAN'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.',Description = 'International Bank Account Number',Name = 'IBAN' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.','International Bank Account Number','IBAN'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'If your bank provides an International Bank Account Number, enter it here Details ISO 13616 and http://www.ecbs.org. The account number has the maximum length of 22 characters (without spaces). The IBAN is often printed with a space after 4 characters. Do not enter the spaces in Compiere.',Description = 'International Bank Account Number',Name = 'IBAN' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IBAN' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Ligne de remboursements',
'',
10,
'',
'2YVU',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Ligne de remboursements', description = '', displaylength = 10, displaylogic = '', entitytype = '2YVU', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', '','','Ligne de remboursements'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Ligne de remboursements' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', '','','Ligne de remboursements'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Ligne de remboursements' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SEL_LIGNE_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'MONTANT',
'',
10,
'',
'2YVU',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'MONTANT', description = '', displaylength = 10, displaylogic = '', entitytype = '2YVU', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', '','','Montant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Montant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', '','','MONTANT'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'MONTANT' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MONTANT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'2YVU',
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
'@AD_Org_ID@',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = '2YVU', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@AD_Org_ID@', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organizational entity within Tenant','Magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Description = 'Organizational entity within Tenant',Name = 'Magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organizational entity within Tenant','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Description = 'Organizational entity within Tenant',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Payment',
'Payment identifier',
10,
'',
'2YVU',
'The Payment is a unique identifier of this payment.',
'',
100,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Payment', description = 'Payment identifier', displaylength = 10, displaylogic = '', entitytype = '2YVU', help = 'The Payment is a unique identifier of this payment.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'The Payment is a unique identifier of this payment.','Payment identifier','Paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Payment is a unique identifier of this payment.',Description = 'Payment identifier',Name = 'Paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'The Payment is a unique identifier of this payment.','Payment identifier','Payment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Payment is a unique identifier of this payment.',Description = 'Payment identifier',Name = 'Payment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Payment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Sélection remboursements clients',
'Sélection remboursements clients',
10,
'',
'2YVU',
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
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'@XX_REMB_SELECTION_ID@',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Sélection remboursements clients', description = 'Sélection remboursements clients', displaylength = 10, displaylogic = '', entitytype = '2YVU', help = '', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@XX_REMB_SELECTION_ID@', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', '','Sélection remboursements clients','Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Sélection remboursements clients',Name = 'Sélection remboursements clients' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', '','Sélection remboursements clients','Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Sélection remboursements clients',Name = 'Sélection remboursements clients' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_REMB_SELECTION_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'2YVU',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = '2YVU', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Identifies the Client/Tenant for this installation.','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Description = 'Identifies the Client/Tenant for this installation.',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Identifies the Client/Tenant for this installation.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Description = 'Identifies the Client/Tenant for this installation.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'ZSubPaymentRule_ID',(select AD_Element_ID from AD_Element where ColumnName = 'ZSubPaymentRule_ID'),
(select AD_Process_ID from AD_Process where Value = 'Création Paiements Rembourssements'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Sous méthode de paiement',
'@SQL=Select MAX(ZSUBPAYMENTRULE_ID) from ZSUBPAYMENTRULE where ISEXPORTSEPA = ''Y'' and AD_Client_ID = @AD_Client_ID@',
'',
'',
'2YVU',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'ZSubPaymentRule_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZSubPaymentRule_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Création Paiements Rembourssements'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Sous méthode de paiement', defaultvalue = '@SQL=Select MAX(ZSUBPAYMENTRULE_ID) from ZSUBPAYMENTRULE where ISEXPORTSEPA = ''Y'' and AD_Client_ID = @AD_Client_ID@', defaultvalue2 = '', description = '', entitytype = '2YVU', fieldlength = 0, help = '', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'ZSubPaymentRule_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ZSubPaymentRule_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements')), 'fr_FR', 'Y', '','','Sous méthode de paiement'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ZSubPaymentRule_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous méthode de paiement' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ZSubPaymentRule_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ZSubPaymentRule_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements')), 'nl_NL', 'Y', '','','Sous méthode de paiement'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ZSubPaymentRule_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous méthode de paiement' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ZSubPaymentRule_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'PaymentRule',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Création Paiements Rembourssements'),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = '_Payment Rule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'All_Payment Rule - Check/DirectDebit/Deposit'),
'Mode de paiement',
'T',
'',
'',
'2YVU',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'PaymentRule'  and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Création Paiements Rembourssements'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = '_Payment Rule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'All_Payment Rule - Check/DirectDebit/Deposit'), name = 'Mode de paiement', defaultvalue = 'T', defaultvalue2 = '', description = '', entitytype = '2YVU', fieldlength = 0, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'PaymentRule'  and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='PaymentRule' and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements')), 'fr_FR', 'Y', '','','Mode de paiement'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PaymentRule' and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Mode de paiement' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PaymentRule' and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='PaymentRule' and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements')), 'nl_NL', 'Y', '','','Mode de paiement'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PaymentRule' and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Mode de paiement' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PaymentRule' and ad_process_id in (select ad_process_id from ad_process where value = 'Création Paiements Rembourssements')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'FileName',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'ZExportSepaClient'),
(select AD_Reference_ID from AD_Reference where Name = 'FileName'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'FileName',
'',
'',
'',
'2YVU',
0,
'',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'FileName'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZExportSepaClient'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ZExportSepaClient'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'FileName'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'FileName', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '2YVU', fieldlength = 0, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'FileName'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZExportSepaClient');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='FileName' and ad_process_id in (select ad_process_id from ad_process where value = 'ZExportSepaClient')), 'fr_FR', 'Y', '','','FileName'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='FileName' and ad_process_id in (select ad_process_id from ad_process where value = 'ZExportSepaClient')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'FileName' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='FileName' and ad_process_id in (select ad_process_id from ad_process where value = 'ZExportSepaClient')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='FileName' and ad_process_id in (select ad_process_id from ad_process where value = 'ZExportSepaClient')), 'nl_NL', 'Y', '','','FileName'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='FileName' and ad_process_id in (select ad_process_id from ad_process where value = 'ZExportSepaClient')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'FileName' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='FileName' and ad_process_id in (select ad_process_id from ad_process where value = 'ZExportSepaClient')) and ad_language = 'nl_NL';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Sélection remboursements clients','Sélection remboursements clients',
'W',
'',
'2YVU',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Sélection remboursements clients' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Sélection remboursements clients', action = 'W', description = '', entitytype = '2YVU', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Sélection remboursements clients' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Sélection remboursements clients'), 'fr_FR', 'Y', '','Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Sélection remboursements clients') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Sélection remboursements clients' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Sélection remboursements clients') and ad_language = 'fr_FR';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Sélection remboursements clients'), 'nl_NL', 'Y', '','Sélection remboursements clients'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Sélection remboursements clients') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Sélection remboursements clients' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Sélection remboursements clients') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'2YVU_IBAN_BAD','2YVU',
'Compte IBAN incorrecte !',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = '2YVU_IBAN_BAD' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2YVU', msgtext = 'Compte IBAN incorrecte !', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = '2YVU_IBAN_BAD' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='2YVU_IBAN_BAD'), 'fr_FR', 'Y', 'Compte IBAN incorrect !',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='2YVU_IBAN_BAD') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Compte IBAN incorrect !',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='2YVU_IBAN_BAD') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='2YVU_IBAN_BAD'), 'nl_NL', 'Y', 'Compte IBAN incorrect !',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='2YVU_IBAN_BAD') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Compte IBAN incorrect !',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='2YVU_IBAN_BAD') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'2YVU_NO_IBAN','2YVU',
'Compte IBAN manquant !',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = '2YVU_NO_IBAN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2YVU', msgtext = 'Compte IBAN manquant !', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = '2YVU_NO_IBAN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='2YVU_NO_IBAN'), 'fr_FR', 'Y', 'Compte IBAN manquant !',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='2YVU_NO_IBAN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Compte IBAN manquant !',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='2YVU_NO_IBAN') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='2YVU_NO_IBAN'), 'nl_NL', 'Y', 'Compte IBAN manquant !',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='2YVU_NO_IBAN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Compte IBAN manquant !',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='2YVU_NO_IBAN') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2YVU', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '2YVU', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2YVU' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '2YVU', help = '', importtable = 'N', loadseq = 0, name = 'Rembourssements Clients', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'XX_REMB_CLIENTS' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = 'Sélection remboursements clients', entitytype = '2YVU', help = '', importtable = 'N', loadseq = 0, name = 'XX_REMB_SELECTION', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'XX_REMB_SELECTION' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '2YVU', help = '', importtable = 'N', loadseq = 0, name = 'Ligne de remboursements', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'XX_REMB_SEL_LIGNE' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Sélection remboursements clients') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Sélection remboursements clients')); 


