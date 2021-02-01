insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2JC5','2JC5-83301: Import Factures Nobilia: Processus d''import ',
'Evolution #83301 (Entity Type : 2JC5) Import Factures Nobilia: Processus d''import',
'Evolution #83301 (Entity Type : 2JC5) Import Factures Nobilia: Processus d''import ',
'Y',
'',
'',
'',
'N',
'0',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '2JC5' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2JC5-83301: Import Factures Nobilia: Processus d''import ', description = 'Evolution #83301 (Entity Type : 2JC5) Import Factures Nobilia: Processus d''import', help = 'Evolution #83301 (Entity Type : 2JC5) Import Factures Nobilia: Processus d''import ', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2JC5' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Import_Invoice_NOBILIA','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.ImportXMLInvNOBILIA',
'',
'2JC5',
'',
'',
'',
'Import Invoice NOBILIA',
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
where not exists (select 1 from AD_Process where Value = 'Import_Invoice_NOBILIA' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.ImportXMLInvNOBILIA', description = '', entitytype = '2JC5', help = '', jasperreport = '', procedurename = '', name = 'Import Invoice NOBILIA', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Import_Invoice_NOBILIA' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Import_Invoice_NOBILIA'), 'fr_FR', 'Y', '','','Import Invoice NOBILIA'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_Invoice_NOBILIA') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import Invoice NOBILIA' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_Invoice_NOBILIA') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Import_Invoice_NOBILIA'), 'nl_NL', 'Y', '','','Import Invoice NOBILIA'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_Invoice_NOBILIA') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import Invoice NOBILIA' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_Invoice_NOBILIA') and ad_language = 'nl_NL';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Import_Invoice_NOBILIA','Import Invoice NOBILIA',
'P',
'',
'2JC5',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'Import_Invoice_NOBILIA'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Import_Invoice_NOBILIA' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Import Invoice NOBILIA', action = 'P', description = '', entitytype = '2JC5', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import_Invoice_NOBILIA'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Import_Invoice_NOBILIA' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Import_Invoice_NOBILIA'), 'fr_FR', 'Y', '','Import Invoice NOBILIA'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import_Invoice_NOBILIA') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Import Invoice NOBILIA' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import_Invoice_NOBILIA') and ad_language = 'fr_FR';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Import_Invoice_NOBILIA'), 'nl_NL', 'Y', '','Import Invoice NOBILIA'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import_Invoice_NOBILIA') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Import Invoice NOBILIA' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import_Invoice_NOBILIA') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_INVOICE_IN','2JC5',
'/home/mkhalil/xml',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_INVOICE_IN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2JC5', msgtext = '/home/mkhalil/xml', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_INVOICE_IN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN'), 'fr_FR', 'Y', '/home/mkhalil/xml',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '/home/mkhalil/xml',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN'), 'nl_NL', 'Y', '/home/mkhalil/xml',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '/home/mkhalil/xml',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_INVOICE_IN_BACKUP','2JC5',
'/home/mkhalil/xml/backup',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_INVOICE_IN_BACKUP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2JC5', msgtext = '/home/mkhalil/xml/backup', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_INVOICE_IN_BACKUP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_BACKUP'), 'fr_FR', 'Y', '/home/mkhalil/xml/backup',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_BACKUP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '/home/mkhalil/xml/backup',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_BACKUP') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_BACKUP'), 'nl_NL', 'Y', '/home/mkhalil/xml/backup',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_BACKUP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '/home/mkhalil/xml/backup',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_BACKUP') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_INVOICE_IN_MAIL','2JC5',
'mbh@audaxis.com',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_INVOICE_IN_MAIL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2JC5', msgtext = 'mbh@audaxis.com', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_INVOICE_IN_MAIL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_MAIL'), 'fr_FR', 'Y', 'email',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_MAIL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'email',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_MAIL') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_MAIL'), 'nl_NL', 'Y', 'mbh@audaxis.com',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_MAIL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'mbh@audaxis.com',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_MAIL') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_INVOICE_PDF_OUT','2JC5',
'/home/mkhalil',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_INVOICE_PDF_OUT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2JC5', msgtext = '/home/mkhalil', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_INVOICE_PDF_OUT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_INVOICE_PDF_OUT'), 'fr_FR', 'Y', '/home/mkhalil',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_PDF_OUT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '/home/mkhalil',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_PDF_OUT') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_INVOICE_PDF_OUT'), 'nl_NL', 'Y', '/home/mkhalil',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_PDF_OUT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '/home/mkhalil',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_PDF_OUT') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2JC5-83301: Import Factures Nobilia: Processus d''import ', description = 'Evolution #83301 (Entity Type : 2JC5) Import Factures Nobilia: Processus d''import', help = 'Evolution #83301 (Entity Type : 2JC5) Import Factures Nobilia: Processus d''import ', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2JC5' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Import_Invoice_NOBILIA') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Import_Invoice_NOBILIA')); 

