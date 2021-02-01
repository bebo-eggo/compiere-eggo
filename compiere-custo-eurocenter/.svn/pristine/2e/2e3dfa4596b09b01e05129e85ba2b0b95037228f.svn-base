insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'3RMJ','3RMJ - EbSorf-Smile',
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
where not exists (select 1 from AD_EntityType where EntityType = '3RMJ' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '3RMJ - EbSorf-Smile', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '3RMJ' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Ctrl EBSoft-Smile Date Pose','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.CtrlDatePoseODV',
'',
'3RMJ',
'',
'',
'',
'Ctrl EBSoft-Smile Date Pose',
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
where not exists (select 1 from AD_Process where Value = 'Ctrl EBSoft-Smile Date Pose' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.CtrlDatePoseODV', description = '', entitytype = '3RMJ', help = '', jasperreport = '', procedurename = '', name = 'Ctrl EBSoft-Smile Date Pose', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Ctrl EBSoft-Smile Date Pose' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Help,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Ctrl EBSoft-Smile Date Pose'), 'fr_FR', 'Y', '','Ctrl EBSoft-Smile Date Pose',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Ctrl EBSoft-Smile Date Pose') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Name = 'Ctrl EBSoft-Smile Date Pose',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Ctrl EBSoft-Smile Date Pose') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Help,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Ctrl EBSoft-Smile Date Pose'), 'nl_NL', 'Y', '','Ctrl EBSoft-Smile Date Pose',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Ctrl EBSoft-Smile Date Pose') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Name = 'Ctrl EBSoft-Smile Date Pose',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Ctrl EBSoft-Smile Date Pose') and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = 'Ctrl EBSoft-Smile Date Pose'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'Tenant',
'',
'',
'Identifies the Client/Tenant for this installation.',
'3RMJ',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Ctrl EBSoft-Smile Date Pose'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Ctrl EBSoft-Smile Date Pose'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), name = 'Tenant', defaultvalue = '', defaultvalue2 = '', description = 'Identifies the Client/Tenant for this installation.', entitytype = '3RMJ', fieldlength = 0, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Ctrl EBSoft-Smile Date Pose');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Help,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Ctrl EBSoft-Smile Date Pose')), 'fr_FR', 'Y', '','Société','Nom de l''entreprise titulaire de la base de données (DB)'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Ctrl EBSoft-Smile Date Pose')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Name = 'Société',Description = 'Nom de l''entreprise titulaire de la base de données (DB)' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Ctrl EBSoft-Smile Date Pose')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Help,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Ctrl EBSoft-Smile Date Pose')), 'nl_NL', 'Y', 'Een client is een bedrijf of een rechtspersoon.','Client','Client voor deze installatie.'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Ctrl EBSoft-Smile Date Pose')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Een client is een bedrijf of een rechtspersoon.',Name = 'Client',Description = 'Client voor deze installatie.' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Ctrl EBSoft-Smile Date Pose')) and ad_language = 'nl_NL';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Ctrl EBSoft-Smile Date Pose','Ctrl EBSoft-Smile Date Pose',
'R',
'',
'3RMJ',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'Ctrl EBSoft-Smile Date Pose'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Ctrl EBSoft-Smile Date Pose' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Ctrl EBSoft-Smile Date Pose', action = 'R', description = '', entitytype = '3RMJ', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Ctrl EBSoft-Smile Date Pose'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Ctrl EBSoft-Smile Date Pose' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Ctrl EBSoft-Smile Date Pose'), 'fr_FR', 'Y', 'Ctrl EBSoft-Smile Date Pose',''
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Ctrl EBSoft-Smile Date Pose') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ctrl EBSoft-Smile Date Pose',Description = '' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Ctrl EBSoft-Smile Date Pose') and ad_language = 'fr_FR';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Ctrl EBSoft-Smile Date Pose'), 'nl_NL', 'Y', 'Ctrl EBSoft-Smile Date Pose',''
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Ctrl EBSoft-Smile Date Pose') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ctrl EBSoft-Smile Date Pose',Description = '' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Ctrl EBSoft-Smile Date Pose') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'XX_URL_DATEPOSE','3RMJ',
'http://eggologi:8084/webservice/api.php?filter=getDatesFromIntervalPose',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'XX_URL_DATEPOSE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '3RMJ', msgtext = 'http://eggologi:8084/webservice/api.php?filter=getDatesFromIntervalPose', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'XX_URL_DATEPOSE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_URL_DATEPOSE'), 'fr_FR', 'Y', '','http://eggologi:8084/webservice/api.php?filter=getDatesFromIntervalPose'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_URL_DATEPOSE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'http://eggologi:8084/webservice/api.php?filter=getDatesFromIntervalPose' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_URL_DATEPOSE') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_URL_DATEPOSE'), 'nl_NL', 'Y', '','http://eggologi:8084/webservice/api.php?filter=getDatesFromIntervalPose'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_URL_DATEPOSE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'http://eggologi:8084/webservice/api.php?filter=getDatesFromIntervalPose' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_URL_DATEPOSE') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '3RMJ - EbSorf-Smile', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '3RMJ' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Ctrl EBSoft-Smile Date Pose') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Ctrl EBSoft-Smile Date Pose')); 

