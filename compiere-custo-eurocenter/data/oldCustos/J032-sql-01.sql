insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J032','J032 - Form validation message',
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
where not exists (select 1 from AD_EntityType where EntityType = 'J032' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J032 - Form validation message', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J032' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'BatchNo','',
'J032',
'',
'BatchNo',
'',
'',
'',
'',
'BatchNo',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'BatchNo' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'J032', help = '', name = 'BatchNo', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'BatchNo', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'BatchNo' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='BatchNo'), 'nl_BE', 'Y', '','','BatchNo','','','','','BatchNo'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='BatchNo') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'BatchNo',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'BatchNo' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='BatchNo') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='BatchNo'), 'fr_FR', 'Y', '','','BatchNo','','','','','BatchNo'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='BatchNo') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'BatchNo',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'BatchNo' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='BatchNo') and ad_language = 'fr_FR';

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'Action','isSavAction=''N''',
'',
'J032',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'Action' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'isSavAction=''N''', description = '', entitytype = 'J032', type = 'S', isactive = 'Y' 
where Name = 'Action' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'BatchNo',(select AD_Element_ID from AD_Element where ColumnName = 'BatchNo'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'J032',
22,
'',
'BatchNo',
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
where not exists (select 1 from AD_Column where ColumnName = 'BatchNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'BatchNo'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'J032', fieldlength = 22, help = '', name = 'BatchNo', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'BatchNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='BatchNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'BatchNo'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BatchNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'BatchNo' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BatchNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='BatchNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'BatchNo'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BatchNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'BatchNo' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BatchNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Form (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,Name,accesslevel, classname, description, entitytype, help, isactive, isbetafunctionality,JSPURL,AD_CTXAREA_ID, WebClassname) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Form'),'Validation en masse des messages','1',
'',
'Validation en masse des messages transactionelles',
'J032',
'',
'Y',
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'org.compiere.gwt.server.window.ValidateMessageWindowImpl'
 from dual  
where not exists (select 1 from AD_Form where Name = 'Validation en masse des messages' );

update AD_Form set Updated = sysdate, UpdatedBy = 0, accesslevel = '1', classname = '', description = 'Validation en masse des messages transactionelles', entitytype = 'J032', help = '', isactive = 'Y', isbetafunctionality = 'N', JSPURL = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), WebClassname = 'org.compiere.gwt.server.window.ValidateMessageWindowImpl' 
where Name = 'Validation en masse des messages' ;

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Validation en masse des messages'), 'nl_BE', 'Y', 'Validation en masse des messages transactionelles','','Validation en masse des messages'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Validation en masse des messages') and ad_language = 'nl_BE');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Validation en masse des messages transactionelles',Help = '',Name = 'Validation en masse des messages' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Validation en masse des messages') and ad_language = 'nl_BE';

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Validation en masse des messages'), 'fr_FR', 'Y', 'Validation en masse des messages transactionelles','','Validation en masse des messages'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Validation en masse des messages') and ad_language = 'fr_FR');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Validation en masse des messages transactionelles',Help = '',Name = 'Validation en masse des messages' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Validation en masse des messages') and ad_language = 'fr_FR';

insert into AD_Form (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,Name,accesslevel, classname, description, entitytype, help, isactive, isbetafunctionality,JSPURL,AD_CTXAREA_ID, WebClassname) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Form'),'Validation en masse des messages d''expéditions','1',
'',
'',
'J032',
'',
'Y',
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'org.compiere.gwt.server.window.ValidateShipMessageWindowImpl'
 from dual  
where not exists (select 1 from AD_Form where Name = 'Validation en masse des messages d''expéditions' );

update AD_Form set Updated = sysdate, UpdatedBy = 0, accesslevel = '1', classname = '', description = '', entitytype = 'J032', help = '', isactive = 'Y', isbetafunctionality = 'N', JSPURL = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), WebClassname = 'org.compiere.gwt.server.window.ValidateShipMessageWindowImpl' 
where Name = 'Validation en masse des messages d''expéditions' ;

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Validation en masse des messages d''expéditions'), 'nl_BE', 'Y', '','','Validation en masse des messages d''expéditions'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Validation en masse des messages d''expéditions') and ad_language = 'nl_BE');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Validation en masse des messages d''expéditions' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Validation en masse des messages d''expéditions') and ad_language = 'nl_BE';

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Validation en masse des messages d''expéditions'), 'fr_FR', 'Y', '','','Validation en masse des messages d''expéditions'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Validation en masse des messages d''expéditions') and ad_language = 'fr_FR');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Validation en masse des messages d''expéditions' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Validation en masse des messages d''expéditions') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'ValidateShipMessage','Validation en masse des expéditions',
'X',
'',
'J032',
(select AD_Form_ID from AD_Form where Name = 'Validation en masse des messages d''expéditions'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'ValidateShipMessage' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Validation en masse des expéditions', action = 'X', description = '', entitytype = 'J032', ad_form_id = (select AD_Form_ID from AD_Form where Name = 'Validation en masse des messages d''expéditions'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'ValidateShipMessage' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='ValidateShipMessage'), 'nl_BE', 'Y', '','Validation en masse des expéditions'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ValidateShipMessage') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Validation en masse des expéditions' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ValidateShipMessage') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='ValidateShipMessage'), 'fr_FR', 'Y', '','Validation en masse des expéditions'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ValidateShipMessage') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Validation en masse des expéditions' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ValidateShipMessage') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'ValidateMessage','Validation en masse des message',
'X',
'',
'J032',
(select AD_Form_ID from AD_Form where Name = 'Validation en masse des messages'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'ValidateMessage' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Validation en masse des message', action = 'X', description = '', entitytype = 'J032', ad_form_id = (select AD_Form_ID from AD_Form where Name = 'Validation en masse des messages'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'ValidateMessage' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='ValidateMessage'), 'nl_BE', 'Y', '','Validate Message'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ValidateMessage') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Validate Message' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ValidateMessage') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='ValidateMessage'), 'fr_FR', 'Y', '','Validation en masse des messages'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ValidateMessage') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Validation en masse des messages' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='ValidateMessage') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J032 - Form validation message', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J032' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'ValidateMessage') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'ValidateMessage')); 

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'ValidateShipMessage') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'ValidateShipMessage')); 

