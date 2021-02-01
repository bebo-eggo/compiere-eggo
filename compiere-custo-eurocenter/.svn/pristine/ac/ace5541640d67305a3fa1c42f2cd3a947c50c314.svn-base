insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'JB01','JB01 - 89814 Encodage des clients',
'JB01 - 89814 Encodage des clients',
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
where not exists (select 1 from AD_EntityType where EntityType = 'JB01' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'JB01 - 89814 Encodage des clients', description = 'JB01 - 89814 Encodage des clients', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'JB01' ;

insert into AD_Form (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,Name,accesslevel, classname, description, entitytype, help, isactive, isbetafunctionality,JSPURL,AD_CTXAREA_ID, WebClassname) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Form'),'Encodage des Clients','3',
'',
'Encodage des Clients',
'JB01',
'',
'Y',
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'org.compiere.gwt.server.window.NewCustomerWindowImpl'
 from dual  
where not exists (select 1 from AD_Form where Name = 'Encodage des Clients' );

update AD_Form set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', classname = '', description = 'Encodage des Clients', entitytype = 'JB01', help = '', isactive = 'Y', isbetafunctionality = 'N', JSPURL = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), WebClassname = 'org.compiere.gwt.server.window.NewCustomerWindowImpl' 
where Name = 'Encodage des Clients' ;

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Encodage des Clients'), 'fr_FR', 'Y', 'Encodage des Clients','','Encodage des Clients'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Encodage des Clients') and ad_language = 'fr_FR');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Encodage des Clients',Help = '',Name = 'Encodage des Clients' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Encodage des Clients') and ad_language = 'fr_FR';

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Encodage des Clients'), 'nl_NL', 'Y', 'Encodage des Clients','','Encodage des Clients'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Encodage des Clients') and ad_language = 'nl_NL');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Encodage des Clients',Help = '',Name = 'Encodage des Clients' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Encodage des Clients') and ad_language = 'nl_NL';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'EncodagedesClients','Encodage des Clients',
'X',
'Encodage des Clients',
'JB01',
(select AD_Form_ID from AD_Form where Name = 'Encodage des Clients'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'EncodagedesClients' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Encodage des Clients', action = 'X', description = 'Encodage des Clients', entitytype = 'JB01', ad_form_id = (select AD_Form_ID from AD_Form where Name = 'Encodage des Clients'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'EncodagedesClients' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='EncodagedesClients'), 'fr_FR', 'Y', 'Encodage des Clients','Encodage des Clients'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='EncodagedesClients') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Encodage des Clients',Name = 'Encodage des Clients' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='EncodagedesClients') and ad_language = 'fr_FR';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='EncodagedesClients'), 'nl_NL', 'Y', 'Encodage des Clients','Encodage des Clients'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='EncodagedesClients') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Encodage des Clients',Name = 'Encodage des Clients' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='EncodagedesClients') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'JB01 - 89814 Encodage des clients', description = 'JB01 - 89814 Encodage des clients', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'JB01' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'EncodagedesClients') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'EncodagedesClients')); 

