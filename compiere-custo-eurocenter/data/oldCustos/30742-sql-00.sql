insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'W742','30742 - Mouvements de Trésorerie',
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
where not exists (select 1 from AD_EntityType where EntityType = 'W742' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '30742 - Mouvements de Trésorerie', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'W742' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'W742',(select AD_Reference_ID from AD_Reference where Name = '_Entity Type'),
'',
'W742',
'30742 - Mouvements de Trésorerie',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'W742'  and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = '_Entity Type'), description = '', entitytype = 'W742', name = '30742 - Mouvements de Trésorerie', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'W742'  and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='W742' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')), 'nl_BE', 'Y', '',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='W742' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='W742' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='W742' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')), 'fr_FR', 'Y', '','30742 - Mouvements de Trésorerie'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='W742' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '30742 - Mouvements de Trésorerie' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='W742' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')) and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'C_BankAccount Own Bank','',
'W742',
'',
'T',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'C_BankAccount Own Bank' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'W742', help = '', validationtype = 'T', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'C_BankAccount Own Bank' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='C_BankAccount Own Bank'), 'nl_BE', 'Y', '','','C_BankAccount Own Bank'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BankAccount Own Bank') and ad_language = 'nl_BE');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'C_BankAccount Own Bank' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BankAccount Own Bank') and ad_language = 'nl_BE';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='C_BankAccount Own Bank'), 'fr_FR', 'Y', '','','C_BankAccount Own Bank'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BankAccount Own Bank') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'C_BankAccount Own Bank' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BankAccount Own Bank') and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'C_Charge (BT)','',
'W742',
'',
'T',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'C_Charge (BT)' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'W742', help = '', validationtype = 'T', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'C_Charge (BT)' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='C_Charge (BT)'), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_Charge (BT)') and ad_language = 'nl_BE');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_Charge (BT)') and ad_language = 'nl_BE';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='C_Charge (BT)'), 'fr_FR', 'Y', '','','C_Charge (BT)'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_Charge (BT)') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'C_Charge (BT)' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_Charge (BT)') and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'W742',(select AD_Reference_ID from AD_Reference where Name = '_Entity Type'),
'',
'W742',
'30742 - Mouvements de Trésorerie',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'W742'  and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = '_Entity Type'), description = '', entitytype = 'W742', name = '30742 - Mouvements de Trésorerie', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'W742'  and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='W742' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')), 'nl_BE', 'Y', '',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='W742' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='W742' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='W742' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')), 'fr_FR', 'Y', '','30742 - Mouvements de Trésorerie'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='W742' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '30742 - Mouvements de Trésorerie' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='W742' and ad_reference_id in (select ad_reference_id from ad_reference where name = '_Entity Type')) and ad_language = 'fr_FR';

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'Saisie des Transferts de compte','Saisie des Mouvements de Trésorerie',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'Saisie des Mouvements de Trésorerie',
'W742',
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
where not exists (select 1 from AD_Window where Value = 'Saisie des Transferts de compte' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Saisie des Mouvements de Trésorerie', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = 'Saisie des Mouvements de Trésorerie', entitytype = 'W742', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'Saisie des Transferts de compte' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Saisie des Transferts de compte'), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Saisie des Transferts de compte') and ad_language = 'nl_BE');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Saisie des Transferts de compte') and ad_language = 'nl_BE';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Saisie des Transferts de compte'), 'fr_FR', 'Y', 'Saisie des Mouvements de Trésorerie','','Saisie des Mouvements de Trésorerie'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Saisie des Transferts de compte') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Saisie des Mouvements de Trésorerie',Help = '',Name = 'Saisie des Mouvements de Trésorerie' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Saisie des Transferts de compte') and ad_language = 'fr_FR';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'Z_BankTransfert','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'W742',
'',
'N',
0,
'Saisie des Transferts de compte',
'L',
'Y',
'Y',
'Y',
'N',
'N',
(select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte'),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'Z_BankTransfert' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'W742', help = '', importtable = 'N', loadseq = 0, name = 'Saisie des Transferts de compte', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'Y', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte'), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'Z_BankTransfert' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='Z_BankTransfert'), 'nl_BE', 'Y', 'Bank Transfert'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_BankTransfert') and ad_language = 'nl_BE');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Bank Transfert' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_BankTransfert') and ad_language = 'nl_BE';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='Z_BankTransfert'), 'fr_FR', 'Y', 'Saisie des Transferts de compte'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_BankTransfert') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Saisie des Transferts de compte' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_BankTransfert') and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Z_BankTransfert_Process','1',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = 'Process_BankTransfert'),
'',
'',
'W742',
'',
'',
'',
'Process Bank Transfert',
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
where not exists (select 1 from AD_Process where Value = 'Z_BankTransfert_Process' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '1', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = 'Process_BankTransfert'), classname = '', description = '', entitytype = 'W742', help = '', jasperreport = '', procedurename = '', name = 'Process Bank Transfert', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Z_BankTransfert_Process' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Z_BankTransfert_Process'), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Z_BankTransfert_Process') and ad_language = 'nl_BE');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Z_BankTransfert_Process') and ad_language = 'nl_BE';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Z_BankTransfert_Process'), 'fr_FR', 'Y', '','','Process Bank Transfert'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Z_BankTransfert_Process') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Bank Transfert' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Z_BankTransfert_Process') and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'PreparePayment','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.PreparePayment',
'',
'W742',
'Pour chaque partie d?enregistrement (« transfert de » et « Transfert vers ») il faut créer des paiements.',
'',
'',
'Préparation Paiement',
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
where not exists (select 1 from AD_Process where Value = 'PreparePayment' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.PreparePayment', description = '', entitytype = 'W742', help = 'Pour chaque partie d?enregistrement (« transfert de » et « Transfert vers ») il faut créer des paiements.', jasperreport = '', procedurename = '', name = 'Préparation Paiement', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'PreparePayment' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='PreparePayment'), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='PreparePayment') and ad_language = 'nl_BE');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='PreparePayment') and ad_language = 'nl_BE';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='PreparePayment'), 'fr_FR', 'Y', '','','Préparation Paiement'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='PreparePayment') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Préparation Paiement' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='PreparePayment') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_BankTransfert_ID','',
'W742',
'',
'Transfert de compte',
'',
'',
'',
'',
'Transfert de compte',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_BankTransfert_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'W742', help = '', name = 'Transfert de compte', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Transfert de compte', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_BankTransfert_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_BankTransfert_ID'), 'nl_BE', 'Y', 'Bank Transfert','','Bank Transfert','','','','','Bank Transfert'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_BankTransfert_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Bank Transfert',Help = '',Name = 'Bank Transfert',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Bank Transfert' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_BankTransfert_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_BankTransfert_ID'), 'fr_FR', 'Y', '','','Transfert de compte','','','','','Transfert de compte'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_BankTransfert_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Transfert de compte',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Transfert de compte' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_BankTransfert_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsBankTft','',
'W742',
'',
'Tiers Tft Bancaire',
'',
'',
'',
'',
'Tiers Tft Bancaire',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsBankTft' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'W742', help = '', name = 'Tiers Tft Bancaire', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Tiers Tft Bancaire', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsBankTft' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsBankTft'), 'nl_BE', 'Y', '','','Tiers Tft Bancaire','','','','','Tiers Tft Bancaire'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsBankTft') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tiers Tft Bancaire',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Tiers Tft Bancaire' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsBankTft') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsBankTft'), 'fr_FR', 'Y', '','','Tiers Tft Bancaire','','','','','Tiers Tft Bancaire'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsBankTft') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tiers Tft Bancaire',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Tiers Tft Bancaire' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsBankTft') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'C_BankAccount_From_ID','Account at the Bank',
'W742',
'The Bank Account identifies an account at this Bank.',
'Bank Account',
'',
'',
'',
'',
'Bank Account',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'C_BankAccount_From_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Account at the Bank', entitytype = 'W742', help = 'The Bank Account identifies an account at this Bank.', name = 'Bank Account', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Bank Account', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'C_BankAccount_From_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_BankAccount_From_ID'), 'nl_BE', 'Y', '','','','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_BankAccount_From_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_BankAccount_From_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_BankAccount_From_ID'), 'fr_FR', 'Y', 'Compte bancaire','Identifie un compte bancaire','Compte bancaire','','','','','Compte bancaire'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_BankAccount_From_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Compte bancaire',Help = 'Identifie un compte bancaire',Name = 'Compte bancaire',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Compte bancaire' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_BankAccount_From_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_VirementOut_ID','Le n° de l?enregistrement « OUT » créé dans C_Payment.',
'W742',
'',
'N° Virement',
'',
'',
'',
'',
'N° Virement',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_VirementOut_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Le n° de l?enregistrement « OUT » créé dans C_Payment.', entitytype = 'W742', help = '', name = 'N° Virement', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'N° Virement', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_VirementOut_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_VirementOut_ID'), 'nl_BE', 'Y', '','','','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_VirementOut_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_VirementOut_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_VirementOut_ID'), 'fr_FR', 'Y', 'Le n° de l?enregistrement « OUT » créé dans C_Payment.','','N° Virement','','','','','N° Virement'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_VirementOut_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Le n° de l?enregistrement « OUT » créé dans C_Payment.',Help = '',Name = 'N° Virement',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° Virement' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_VirementOut_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ZSubPaymentRuleTo_ID','',
'W742',
'',
'Sub Payment Rule',
'',
'',
'',
'',
'Sub Payment Rule',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ZSubPaymentRuleTo_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'W742', help = '', name = 'Sub Payment Rule', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Sub Payment Rule', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ZSubPaymentRuleTo_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZSubPaymentRuleTo_ID'), 'nl_BE', 'Y', '','','','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZSubPaymentRuleTo_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZSubPaymentRuleTo_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZSubPaymentRuleTo_ID'), 'fr_FR', 'Y', '','','Sous méthode de paiement','','','','','Sous méthode de paiement'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZSubPaymentRuleTo_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous méthode de paiement',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Sous méthode de paiement' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZSubPaymentRuleTo_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_PreparePayment','Préparation Paiement',
'W742',
'',
'Préparation Paiement',
'',
'',
'',
'',
'Préparation Paiement',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_PreparePayment' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Préparation Paiement', entitytype = 'W742', help = '', name = 'Préparation Paiement', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Préparation Paiement', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_PreparePayment' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_PreparePayment'), 'nl_BE', 'Y', '','','','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_PreparePayment') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_PreparePayment') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_PreparePayment'), 'fr_FR', 'Y', 'Préparation Paiement','','Préparation Paiement','','','','','Préparation Paiement'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_PreparePayment') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Préparation Paiement',Help = '',Name = 'Préparation Paiement',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Préparation Paiement' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_PreparePayment') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'C_DocTypeFrom_ID','Type d''Operation',
'W742',
'Type d''Operation',
'Type d''Operation',
'',
'',
'',
'',
'Type d''Operation',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'C_DocTypeFrom_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Type d''Operation', entitytype = 'W742', help = 'Type d''Operation', name = 'Type d''Operation', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Type d''Operation', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'C_DocTypeFrom_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_DocTypeFrom_ID'), 'nl_BE', 'Y', '','','','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_DocTypeFrom_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_DocTypeFrom_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_DocTypeFrom_ID'), 'fr_FR', 'Y', 'Type d''Operation','Type d''Operation','Type d''Operation','','','','','Type d''Operation'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_DocTypeFrom_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type d''Operation',Help = 'Type d''Operation',Name = 'Type d''Operation',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Type d''Operation' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_DocTypeFrom_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'C_BankAccount_To_ID','Account at the Bank',
'W742',
'The Bank Account identifies an account at this Bank.',
'Bank Account',
'',
'',
'',
'',
'Bank Account',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'C_BankAccount_To_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Account at the Bank', entitytype = 'W742', help = 'The Bank Account identifies an account at this Bank.', name = 'Bank Account', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Bank Account', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'C_BankAccount_To_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_BankAccount_To_ID'), 'nl_BE', 'Y', '','','','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_BankAccount_To_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_BankAccount_To_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_BankAccount_To_ID'), 'fr_FR', 'Y', 'Compte bancaire','Identifie un compte bancaire','Compte bancaire','','','','','Compte bancaire'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_BankAccount_To_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Compte bancaire',Help = 'Identifie un compte bancaire',Name = 'Compte bancaire',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Compte bancaire' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_BankAccount_To_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_VirementIn_ID','Le n° de l?enregistrement « IN » créé dans C_Payment.',
'W742',
'',
'N° Virement',
'',
'',
'',
'',
'N° Virement',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_VirementIn_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Le n° de l?enregistrement « IN » créé dans C_Payment.', entitytype = 'W742', help = '', name = 'N° Virement', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'N° Virement', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_VirementIn_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_VirementIn_ID'), 'nl_BE', 'Y', '','','','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_VirementIn_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_VirementIn_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_VirementIn_ID'), 'fr_FR', 'Y', 'Le n° de l?enregistrement « IN » créé dans C_Payment.','','N° Virement','','','','','N° Virement'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_VirementIn_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Le n° de l?enregistrement « IN » créé dans C_Payment.',Help = '',Name = 'N° Virement',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° Virement' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_VirementIn_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'C_ChargeTo_ID','Additional document charges',
'W742',
'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',
'Charge',
'',
'',
'',
'',
'Charge',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'C_ChargeTo_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Additional document charges', entitytype = 'W742', help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)', name = 'Charge', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Charge', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'C_ChargeTo_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_ChargeTo_ID'), 'nl_BE', 'Y', '','','','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_ChargeTo_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_ChargeTo_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_ChargeTo_ID'), 'fr_FR', 'Y', 'Charge supplémentaires du document','Indique les types de charge supplémentaires tels que l''emballage, la manutention, le stockage, etc.','Code Imputation','','','','','Code Imputation'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_ChargeTo_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Charge supplémentaires du document',Help = 'Indique les types de charge supplémentaires tels que l''emballage, la manutention, le stockage, etc.',Name = 'Code Imputation',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Code Imputation' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_ChargeTo_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'C_DocTypeTo_ID','Document type or rules',
'W742',
'The Document Type determines document sequence and processing rules',
'Document Type',
'',
'',
'',
'',
'Doc Type',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'C_DocTypeTo_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Document type or rules', entitytype = 'W742', help = 'The Document Type determines document sequence and processing rules', name = 'Document Type', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Doc Type', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'C_DocTypeTo_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_DocTypeTo_ID'), 'nl_BE', 'Y', '','','','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_DocTypeTo_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_DocTypeTo_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_DocTypeTo_ID'), 'fr_FR', 'Y', 'Type Document','Détermine la séquence du document  et le mode de traitement.','Type d''Opération','','','','','Type d''Opération'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_DocTypeTo_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type Document',Help = 'Détermine la séquence du document  et le mode de traitement.',Name = 'Type d''Opération',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Type d''Opération' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_DocTypeTo_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsTransfered','Transféré',
'W742',
'',
'Transféré',
'',
'',
'',
'',
'Transféré',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsTransfered' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Transféré', entitytype = 'W742', help = '', name = 'Transféré', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Transféré', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsTransfered' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsTransfered'), 'nl_BE', 'Y', '','','','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTransfered') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTransfered') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsTransfered'), 'fr_FR', 'Y', 'Transféré','','Transféré','','','','','Transféré'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTransfered') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transféré',Help = '',Name = 'Transféré',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Transféré' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTransfered') and ad_language = 'fr_FR';

insert into AD_FieldGroup (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,Name,entitytype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_FieldGroup'),'Movement out','W742',
'Y'
 from dual  
where not exists (select 1 from AD_FieldGroup where Name = 'Movement out' );

update AD_FieldGroup set Updated = sysdate, UpdatedBy = 0, entitytype = 'W742', isactive = 'Y' 
where Name = 'Movement out' ;

insert into AD_FieldGroup_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_FieldGroup_ID from AD_FieldGroup where Name='Movement out'), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_FieldGroup_Trl where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Movement out') and ad_language = 'nl_BE');

update AD_FieldGroup_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Movement out') and ad_language = 'nl_BE';

insert into AD_FieldGroup_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_FieldGroup_ID from AD_FieldGroup where Name='Movement out'), 'fr_FR', 'Y', 'Transfert de'
 from dual  
where not exists (select 1 from AD_FieldGroup_Trl where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Movement out') and ad_language = 'fr_FR');

update AD_FieldGroup_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Transfert de' where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Movement out') and ad_language = 'fr_FR';

insert into AD_FieldGroup (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,Name,entitytype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_FieldGroup'),'Movement in','W742',
'Y'
 from dual  
where not exists (select 1 from AD_FieldGroup where Name = 'Movement in' );

update AD_FieldGroup set Updated = sysdate, UpdatedBy = 0, entitytype = 'W742', isactive = 'Y' 
where Name = 'Movement in' ;

insert into AD_FieldGroup_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_FieldGroup_ID from AD_FieldGroup where Name='Movement in'), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_FieldGroup_Trl where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Movement in') and ad_language = 'nl_BE');

update AD_FieldGroup_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Movement in') and ad_language = 'nl_BE';

insert into AD_FieldGroup_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_FieldGroup_ID from AD_FieldGroup where Name='Movement in'), 'fr_FR', 'Y', 'Transfert vers'
 from dual  
where not exists (select 1 from AD_FieldGroup_Trl where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Movement in') and ad_language = 'fr_FR');

update AD_FieldGroup_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Transfert vers' where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Movement in') and ad_language = 'fr_FR';

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'C_Doctype Payments/Receipts from BankAccount_From (BT)','C_DocType.DocBaseType IN (''ARR'', ''APP'') and  C_DocType.c_doctype_id IN (select doc.c_doctype_id from C_BankAccountDoc doc where doc.C_BankAccount_ID = @C_BankAccount_From_ID@)',
'',
'W742',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'C_Doctype Payments/Receipts from BankAccount_From (BT)' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'C_DocType.DocBaseType IN (''ARR'', ''APP'') and  C_DocType.c_doctype_id IN (select doc.c_doctype_id from C_BankAccountDoc doc where doc.C_BankAccount_ID = @C_BankAccount_From_ID@)', description = '', entitytype = 'W742', type = 'S', isactive = 'Y' 
where Name = 'C_Doctype Payments/Receipts from BankAccount_From (BT)' ;

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'C_DocBase BTR','C_DocType.DocBaseType IN (''BTR'')',
'',
'W742',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'C_DocBase BTR' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'C_DocType.DocBaseType IN (''BTR'')', description = '', entitytype = 'W742', type = 'S', isactive = 'Y' 
where Name = 'C_DocBase BTR' ;

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'C_Doctype Payments/Receipts from BankAccount_To (BT)','C_DocType.DocBaseType IN (''ARR'', ''APP'') and  C_DocType.c_doctype_id IN (select doc.c_doctype_id from C_BankAccountDoc doc where doc.C_BankAccount_ID = @C_BankAccount_To_ID@)',
'',
'W742',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'C_Doctype Payments/Receipts from BankAccount_To (BT)' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'C_DocType.DocBaseType IN (''ARR'', ''APP'') and  C_DocType.c_doctype_id IN (select doc.c_doctype_id from C_BankAccountDoc doc where doc.C_BankAccount_ID = @C_BankAccount_To_ID@)', description = '', entitytype = 'W742', type = 'S', isactive = 'Y' 
where Name = 'C_Doctype Payments/Receipts from BankAccount_To (BT)' ;

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'ZSubPaymentRuleOfBank BankAccount_From (BT)','not exists (SELECT 1 FROM C_BankAccountDoc where C_BankAccountDoc.C_BankAccount_ID = @C_BankAccount_From_ID@ and ZSubPaymentRule_id is not null) or ZSubPaymentRule.ZSubPaymentRule_ID in (SELECT C_BankAccountDoc.ZSubPaymentRule_ID FROM C_BankAccountDoc where C_BankAccountDoc.C_BankAccount_ID = @C_BankAccount_From_ID@ and C_BankAccountDoc.C_DocType_ID = @C_DocTypeFrom_ID@)',
'',
'W742',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'ZSubPaymentRuleOfBank BankAccount_From (BT)' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'not exists (SELECT 1 FROM C_BankAccountDoc where C_BankAccountDoc.C_BankAccount_ID = @C_BankAccount_From_ID@ and ZSubPaymentRule_id is not null) or ZSubPaymentRule.ZSubPaymentRule_ID in (SELECT C_BankAccountDoc.ZSubPaymentRule_ID FROM C_BankAccountDoc where C_BankAccountDoc.C_BankAccount_ID = @C_BankAccount_From_ID@ and C_BankAccountDoc.C_DocType_ID = @C_DocTypeFrom_ID@)', description = '', entitytype = 'W742', type = 'S', isactive = 'Y' 
where Name = 'ZSubPaymentRuleOfBank BankAccount_From (BT)' ;

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'ZSubPaymentRuleOfBank BankAccount_To (BT)','not exists (SELECT 1 FROM C_BankAccountDoc where C_BankAccountDoc.C_BankAccount_ID = @C_BankAccount_To_ID@ and ZSubPaymentRule_id is not null) or ZSubPaymentRule.ZSubPaymentRule_ID in (SELECT C_BankAccountDoc.ZSubPaymentRule_ID FROM C_BankAccountDoc where C_BankAccountDoc.C_BankAccount_ID = @C_BankAccount_To_ID@ and C_BankAccountDoc.C_DocType_ID = @C_DocTypeTo_ID@)',
'',
'W742',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'ZSubPaymentRuleOfBank BankAccount_To (BT)' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'not exists (SELECT 1 FROM C_BankAccountDoc where C_BankAccountDoc.C_BankAccount_ID = @C_BankAccount_To_ID@ and ZSubPaymentRule_id is not null) or ZSubPaymentRule.ZSubPaymentRule_ID in (SELECT C_BankAccountDoc.ZSubPaymentRule_ID FROM C_BankAccountDoc where C_BankAccountDoc.C_BankAccount_ID = @C_BankAccount_To_ID@ and C_BankAccountDoc.C_DocType_ID = @C_DocTypeTo_ID@)', description = '', entitytype = 'W742', type = 'S', isactive = 'Y' 
where Name = 'ZSubPaymentRuleOfBank BankAccount_To (BT)' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'W742',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = 'W742', fieldlength = 22, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Société'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Société' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_VirementOut_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_VirementOut_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_Payment'),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Le n° de l?enregistrement « OUT » créé dans C_Payment.',
'W742',
22,
'',
'N° Virement',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_VirementOut_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_VirementOut_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_Payment'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Le n° de l?enregistrement « OUT » créé dans C_Payment.', entitytype = 'W742', fieldlength = 22, help = '', name = 'N° Virement', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_VirementOut_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'N° Virement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° Virement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Trx Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'W742',
22,
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
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Trx Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = 'W742', fieldlength = 22, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Organisation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'W742',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = 'W742', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Créé'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Créé' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'W742',
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
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = 'W742', fieldlength = 22, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Créée par'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Créée par' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'The record is active in the system',
'W742',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'The record is active in the system', entitytype = 'W742', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Actif'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Actif' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'W742',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = 'W742', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Modifié'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modifié' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'W742',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = 'W742', fieldlength = 22, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Modifié par'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modifié par' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DateTrx',(select AD_Element_ID from AD_Element where ColumnName = 'DateTrx'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'@#Date@',
'Transaction Date',
'W742',
7,
'The Transaction Date indicates the date of the transaction.',
'Transaction Date',
'',
2,
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
where not exists (select 1 from AD_Column where ColumnName = 'DateTrx'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DateTrx'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '@#Date@', description = 'Transaction Date', entitytype = 'W742', fieldlength = 7, help = 'The Transaction Date indicates the date of the transaction.', name = 'Transaction Date', readonlylogic = '', seqno = 2, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DateTrx'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Date transaction'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date transaction' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Charge_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Charge_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Additional document charges',
'W742',
22,
'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',
'Charge',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'C_Charge_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Charge_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Additional document charges', entitytype = 'W742', fieldlength = 22, help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)', name = 'Charge', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Charge_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Code Imputation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code Imputation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_ChargeTo_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_ChargeTo_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_Charge (BT)'),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Additional document charges',
'W742',
22,
'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',
'Charge',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'C_ChargeTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_ChargeTo_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_Charge (BT)'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Additional document charges', entitytype = 'W742', fieldlength = 22, help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)', name = 'Charge', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_ChargeTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Code Imputation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code Imputation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DueDate',(select AD_Element_ID from AD_Element where ColumnName = 'DueDate'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'@#Date@',
'Date when the payment is due',
'W742',
7,
'Date when the payment is due without deductions or discount',
'Due Date',
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
where not exists (select 1 from AD_Column where ColumnName = 'DueDate'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DueDate'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '@#Date@', description = 'Date when the payment is due', entitytype = 'W742', fieldlength = 7, help = 'Date when the payment is due without deductions or discount', name = 'Due Date', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DueDate'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Date d''échéance'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date d''échéance' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_OrgTo_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_OrgTo_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_Org'),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Trx Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'W742',
22,
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
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_OrgTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_OrgTo_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_Org'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Trx Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = 'W742', fieldlength = 22, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_OrgTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Organisation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DocumentNo',(select AD_Element_ID from AD_Element where ColumnName = 'DocumentNo'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Document sequence number of the document',
'W742',
30,
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'Document No',
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
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'DocumentNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DocumentNo'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Document sequence number of the document', entitytype = 'W742', fieldlength = 30, help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', name = 'Document No', readonlylogic = '', seqno = 1, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DocumentNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'N° document'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° document' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DateAcct',(select AD_Element_ID from AD_Element where ColumnName = 'DateAcct'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'@#Date@',
'General Ledger Date',
'W742',
7,
'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',
'Account Date',
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
where not exists (select 1 from AD_Column where ColumnName = 'DateAcct'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DateAcct'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '@#Date@', description = 'General Ledger Date', entitytype = 'W742', fieldlength = 7, help = 'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.', name = 'Account Date', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DateAcct'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Date comptable'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date comptable' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Description',(select AD_Element_ID from AD_Element where ColumnName = 'Description'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Optional short description of the record',
'W742',
30,
'A description is limited to 255 characters.',
'Description',
'',
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
where not exists (select 1 from AD_Column where ColumnName = 'Description'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Description'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Optional short description of the record', entitytype = 'W742', fieldlength = 30, help = 'A description is limited to 255 characters.', name = 'Description', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Description'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Description'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Description' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PayAmt',(select AD_Element_ID from AD_Element where ColumnName = 'PayAmt'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'0',
'Amount being paid',
'W742',
22,
'Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.',
'Payment amount',
'',
3,
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
where not exists (select 1 from AD_Column where ColumnName = 'PayAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PayAmt'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '0', description = 'Amount being paid', entitytype = 'W742', fieldlength = 22, help = 'Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.', name = 'Payment amount', readonlylogic = '', seqno = 3, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PayAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Montant paiement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant paiement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Currency_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Currency_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'The Currency for this record',
'W742',
22,
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
'Y',
'N',
'N',
'N',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Currency_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Currency_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'The Currency for this record', entitytype = 'W742', fieldlength = 22, help = 'Indicates the Currency to be used when processing or reporting on this record', name = 'Currency', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Currency_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Devise'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Devise' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BankAccount_To_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BankAccount_To_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'C_BankAccount Own Bank'),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Account at the Bank',
'W742',
22,
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
where not exists (select 1 from AD_Column where ColumnName = 'C_BankAccount_To_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BankAccount_To_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_BankAccount Own Bank'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Account at the Bank', entitytype = 'W742', fieldlength = 22, help = 'The Bank Account identifies an account at this Bank.', name = 'Bank Account', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BankAccount_To_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', 'Bank Account'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Bank Account' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Compte bancaire'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Compte bancaire' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_DocType_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_DocType_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_DocBase BTR'),
'',
'',
'Document type or rules',
'W742',
22,
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
where not exists (select 1 from AD_Column where ColumnName = 'C_DocType_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_DocType_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_DocBase BTR'), callout = '', defaultvalue = '', description = 'Document type or rules', entitytype = 'W742', fieldlength = 22, help = 'The Document Type determines document sequence and processing rules', name = 'Document Type', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_DocType_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Type d''Opération'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type d''Opération' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZSubPaymentRule_ID',(select AD_Element_ID from AD_Element where ColumnName = 'ZSubPaymentRule_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'ZSubPaymentRuleOfBank BankAccount_From (BT)'),
'',
'',
'',
'W742',
22,
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
where not exists (select 1 from AD_Column where ColumnName = 'ZSubPaymentRule_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZSubPaymentRule_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'ZSubPaymentRuleOfBank BankAccount_From (BT)'), callout = '', defaultvalue = '', description = '', entitytype = 'W742', fieldlength = 22, help = '', name = 'Sub Payment Rule', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZSubPaymentRule_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Sous méthode de paiement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous méthode de paiement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_DocTypeTo_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_DocTypeTo_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'C_DocType'),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_Doctype Payments/Receipts from BankAccount_To (BT)'),
'',
'',
'Document type or rules',
'W742',
22,
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
where not exists (select 1 from AD_Column where ColumnName = 'C_DocTypeTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_DocTypeTo_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_DocType'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_Doctype Payments/Receipts from BankAccount_To (BT)'), callout = '', defaultvalue = '', description = 'Document type or rules', entitytype = 'W742', fieldlength = 22, help = 'The Document Type determines document sequence and processing rules', name = 'Document Type', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_DocTypeTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Type D?opération'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type D?opération' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZSubPaymentRuleTo_ID',(select AD_Element_ID from AD_Element where ColumnName = 'ZSubPaymentRuleTo_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'ZSubPaymentRule_ID'),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'ZSubPaymentRuleOfBank BankAccount_To (BT)'),
'',
'',
'',
'W742',
22,
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
where not exists (select 1 from AD_Column where ColumnName = 'ZSubPaymentRuleTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZSubPaymentRuleTo_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'ZSubPaymentRule_ID'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'ZSubPaymentRuleOfBank BankAccount_To (BT)'), callout = '', defaultvalue = '', description = '', entitytype = 'W742', fieldlength = 22, help = '', name = 'Sub Payment Rule', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZSubPaymentRuleTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Sous méthode de paiement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous méthode de paiement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BankAccount_From_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BankAccount_From_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'C_BankAccount Own Bank'),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Account at the Bank',
'W742',
22,
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
where not exists (select 1 from AD_Column where ColumnName = 'C_BankAccount_From_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BankAccount_From_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_BankAccount Own Bank'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Account at the Bank', entitytype = 'W742', fieldlength = 22, help = 'The Bank Account identifies an account at this Bank.', name = 'Bank Account', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BankAccount_From_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Compte bancaire'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Compte bancaire' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_VirementIn_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_VirementIn_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_Payment'),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Le n° de l?enregistrement « IN » créé dans C_Payment.',
'W742',
22,
'',
'N° Virement',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_VirementIn_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_VirementIn_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_Payment'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Le n° de l?enregistrement « IN » créé dans C_Payment.', entitytype = 'W742', fieldlength = 22, help = '', name = 'N° Virement', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_VirementIn_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'N° Virement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° Virement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DocStatus',(select AD_Element_ID from AD_Element where ColumnName = 'DocStatus'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = '_Document Status'),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'DR',
'The current status of the document',
'W742',
2,
'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',
'Document Status',
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
where not exists (select 1 from AD_Column where ColumnName = 'DocStatus'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DocStatus'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = '_Document Status'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'DR', description = 'The current status of the document', entitytype = 'W742', fieldlength = 2, help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', name = 'Document Status', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DocStatus'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Statut document'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Statut document' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DocAction',(select AD_Element_ID from AD_Element where ColumnName = 'DocAction'),
(select AD_Process_ID from AD_Process where Value = 'Z_BankTransfert_Process'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = '_Document Action'),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'CO',
'The targeted status of the document',
'W742',
2,
'You find the current status in the Document Status field. The options are listed in a popup',
'Document Action',
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
where not exists (select 1 from AD_Column where ColumnName = 'DocAction'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DocAction'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Z_BankTransfert_Process'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = '_Document Action'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'CO', description = 'The targeted status of the document', entitytype = 'W742', fieldlength = 2, help = 'You find the current status in the Document Status field. The options are listed in a popup', name = 'Document Action', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DocAction'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Document cible'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document cible' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_PreparePayment',(select AD_Element_ID from AD_Element where ColumnName = 'Z_PreparePayment'),
(select AD_Process_ID from AD_Process where Value = 'PreparePayment'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Préparation Paiement',
'W742',
1,
'',
'Préparation Paiement',
'',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_PreparePayment'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_PreparePayment'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'PreparePayment'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Préparation Paiement', entitytype = 'W742', fieldlength = 1, help = '', name = 'Préparation Paiement', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_PreparePayment'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Préparation Paiement'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Préparation Paiement' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_BankTransfert_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_BankTransfert_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'W742',
22,
'',
'Transfert de compte',
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
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Z_BankTransfert_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_BankTransfert_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'ID'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'W742', fieldlength = 22, help = '', name = 'Transfert de compte', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'Y', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_BankTransfert_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Transfert de compte'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Transfert de compte' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Processed',(select AD_Element_ID from AD_Element where ColumnName = 'Processed'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'The document has been processed',
'W742',
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
where not exists (select 1 from AD_Column where ColumnName = 'Processed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Processed'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = 'The document has been processed', entitytype = 'W742', fieldlength = 1, help = 'The Processed checkbox indicates that a document has been processed.', name = 'Processed', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Processed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Traité'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Traité' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_DocTypeFrom_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_DocTypeFrom_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'C_DocType'),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_Doctype Payments/Receipts from BankAccount_From (BT)'),
'',
'',
'Type d''Operation',
'W742',
22,
'Type d''Operation',
'Type d''Operation',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'C_DocTypeFrom_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_DocTypeFrom_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_DocType'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_Doctype Payments/Receipts from BankAccount_From (BT)'), callout = '', defaultvalue = '', description = 'Type d''Operation', entitytype = 'W742', fieldlength = 22, help = 'Type d''Operation', name = 'Type d''Operation', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_DocTypeFrom_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Type d''Operation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type d''Operation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsBankTft',(select AD_Element_ID from AD_Element where ColumnName = 'IsBankTft'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'W742',
1,
'',
'Tiers Tft Bancaire',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsBankTft'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsBankTft'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'W742', fieldlength = 1, help = '', name = 'Tiers Tft Bancaire', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsBankTft'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'nl_BE', 'Y', 'Tiers Tft Bancaire'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tiers Tft Bancaire' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'fr_FR', 'Y', 'Tiers Tft Bancaire'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tiers Tft Bancaire' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Processing',(select AD_Element_ID from AD_Element where ColumnName = 'Processing'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'W742',
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
where not exists (select 1 from AD_Column where ColumnName = 'Processing'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Processing'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'W742', fieldlength = 1, help = '', name = 'Process Now', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Processing'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'nl_BE', 'Y', 'Process Now'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Now' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')), 'fr_FR', 'Y', 'Traiter maintenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Traiter maintenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Transferts de compte','Transferts de compte',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte'),
'',
'Transferts de compte',
'W742',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
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
where not exists (select 1 from AD_Tab where Value = 'Transferts de compte'  and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Transferts de compte', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte'), commitwarning = '', description = 'Transferts de compte', entitytype = 'W742', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Transferts de compte'  and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')), 'nl_BE', 'Y', '','','',''
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = '' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')), 'fr_FR', 'Y', '','Transferts de compte','','Transferts de compte'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = 'Transferts de compte',Help = '',Name = 'Transferts de compte' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Account Date',
'General Ledger Date',
14,
'',
'W742',
'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Account Date', description = 'General Ledger Date', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Date comptable','Indique la date utilisée en comptabilité pour les écritures générées par ce document.','Date comptable'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date comptable',Help = 'Indique la date utilisée en comptabilité pour les écritures générées par ce document.',Name = 'Date comptable' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Active',
'The record is active in the system',
1,
'',
'W742',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = 'W742', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'L''enregistrement est actif dans le système','Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.','Actif'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'L''enregistrement est actif dans le système',Help = 'Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.',Name = 'Actif' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Bank Account',
'Account at the Bank',
14,
'',
'W742',
'The Bank Account identifies an account at this Bank.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Bank Account', description = 'Account at the Bank', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'The Bank Account identifies an account at this Bank.', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Compte bancaire','Identifie un compte bancaire','Compte bancaire'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Compte bancaire',Help = 'Identifie un compte bancaire',Name = 'Compte bancaire' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Bank Account',
'Account at the Bank',
14,
'',
'W742',
'The Bank Account identifies an account at this Bank.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Bank Account', description = 'Account at the Bank', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'The Bank Account identifies an account at this Bank.', obscuretype = '', seqno = 190, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Compte bancaire','Identifie un compte bancaire','Compte bancaire'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Compte bancaire',Help = 'Identifie un compte bancaire',Name = 'Compte bancaire' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Charge',
'Additional document charges',
14,
'',
'W742',
'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Charge', description = 'Additional document charges', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)', obscuretype = '', seqno = 220, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Charge supplémentaires du document','Indique les types de charge supplémentaires tels que l''emballage, la manutention, le stockage, etc.','Code Imputation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Charge supplémentaires du document',Help = 'Indique les types de charge supplémentaires tels que l''emballage, la manutention, le stockage, etc.',Name = 'Code Imputation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Charge',
'Additional document charges',
14,
'',
'W742',
'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Charge', description = 'Additional document charges', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Charge supplémentaires du document','Indique les types de charge supplémentaires tels que l''emballage, la manutention, le stockage, etc.','Code Imputation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Charge supplémentaires du document',Help = 'Indique les types de charge supplémentaires tels que l''emballage, la manutention, le stockage, etc.',Name = 'Code Imputation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Amounts'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Currency',
'The Currency for this record',
14,
'',
'W742',
'Indicates the Currency to be used when processing or reporting on this record',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Amounts'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Currency', description = 'The Currency for this record', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'Indicates the Currency to be used when processing or reporting on this record', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Devise utilisée dans cet enregistrement','Indique la devise utilisée pour valoriser cet enregistrement','Devise'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Devise utilisée dans cet enregistrement',Help = 'Indique la devise utilisée pour valoriser cet enregistrement',Name = 'Devise' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Currency_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Description',
'Optional short description of the record',
225,
'',
'W742',
'A description is limited to 255 characters.',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Description', description = 'Optional short description of the record', displaylength = 225, displaylogic = '', entitytype = 'W742', help = 'A description is limited to 255 characters.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Description courte et optionnelle de l''enregistrement','Description limitée à 255 caractères.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Description courte et optionnelle de l''enregistrement',Help = 'Description limitée à 255 caractères.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Document Action',
'The targeted status of the document',
14,
'',
'W742',
'You find the current status in the Document Status field. The options are listed in a popup',
'',
250,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Document Action', description = 'The targeted status of the document', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'You find the current status in the Document Status field. The options are listed in a popup', obscuretype = '', seqno = 250, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup','Document Action'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The targeted status of the document',Help = 'You find the current status in the Document Status field. The options are listed in a popup',Name = 'Document Action' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Document No',
'Document sequence number of the document',
14,
'',
'W742',
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'',
30,
0,
'Y',
'N',
'Y',
'N',
'N',
'N',
'Y',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Document No', description = 'Document sequence number of the document', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Numéro du document','','N° Pièce'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Numéro du document',Help = '',Name = 'N° Pièce' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Document Status',
'The current status of the document',
14,
'',
'W742',
'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Document Status', description = 'The current status of the document', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', obscuretype = '', seqno = 240, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Statut actuel du document','Pour changer le statut du document, utiliser le bouton changement de statut document','Statut document'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Statut actuel du document',Help = 'Pour changer le statut du document, utiliser le bouton changement de statut document',Name = 'Statut document' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Document Type',
'Document type or rules',
14,
'',
'W742',
'The Document Type determines document sequence and processing rules',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Document Type', description = 'Document type or rules', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Type Document','Détermine la séquence du document  et le mode de traitement.','Type d''Opération'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type Document',Help = 'Détermine la séquence du document  et le mode de traitement.',Name = 'Type d''Opération' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Document Type',
'Document type or rules',
14,
'',
'W742',
'The Document Type determines document sequence and processing rules',
'',
200,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Document Type', description = 'Document type or rules', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 200, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Type Document','Détermine la séquence du document  et le mode de traitement.','Type d''Opération'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type Document',Help = 'Détermine la séquence du document  et le mode de traitement.',Name = 'Type d''Opération' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Organization',
'Organizational entity within Tenant',
14,
'',
'W742',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'',
180,
0,
'Y',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 180, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Etablissement au sein d''une société','une unité est une partie d''une société, (établissement, succursale, bureau, etc...).','Organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Etablissement au sein d''une société',Help = 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).',Name = 'Organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'N° Virement',
'Le n° de l?enregistrement « OUT » créé dans C_Payment.',
14,
'',
'W742',
'',
'',
170,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'N° Virement', description = 'Le n° de l?enregistrement « OUT » créé dans C_Payment.', displaylength = 14, displaylogic = '', entitytype = 'W742', help = '', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Le n° de l?enregistrement « OUT » créé dans C_Payment.','','N° Virement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Le n° de l?enregistrement « OUT » créé dans C_Payment.',Help = '',Name = 'N° Virement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'N° Virement',
'Le n° de l?enregistrement « IN » créé dans C_Payment.',
14,
'',
'W742',
'',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'N° Virement', description = 'Le n° de l?enregistrement « IN » créé dans C_Payment.', displaylength = 14, displaylogic = '', entitytype = 'W742', help = '', obscuretype = '', seqno = 230, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Le n° de l?enregistrement « IN » créé dans C_Payment.','','N° Virement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Le n° de l?enregistrement « IN » créé dans C_Payment.',Help = '',Name = 'N° Virement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_VirementIn_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Organization',
'Organizational entity within Tenant',
14,
'',
'W742',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Etablissement au sein d''une société','une unité est une partie d''une société, (établissement, succursale, bureau, etc...).','Organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Etablissement au sein d''une société',Help = 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).',Name = 'Organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Amounts'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Payment amount',
'Amount being paid',
14,
'',
'W742',
'Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Amounts'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Payment amount', description = 'Amount being paid', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Montant payé','Indique le montant du paiement. Il peut concerner une unique factures ou plusieurs factures ou un paiement partiel.','Montant paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Montant payé',Help = 'Indique le montant du paiement. Il peut concerner une unique factures ou plusieurs factures ou un paiement partiel.',Name = 'Montant paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PayAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Préparation Paiement',
'Préparation Paiement',
14,
'@DocStatus@=''CO''',
'W742',
'',
'',
260,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Préparation Paiement', description = 'Préparation Paiement', displaylength = 14, displaylogic = '@DocStatus@=''CO''', entitytype = 'W742', help = '', obscuretype = '', seqno = 260, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Préparation Paiement','','Préparation Paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Préparation Paiement',Help = '',Name = 'Préparation Paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PreparePayment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Sub Payment Rule',
'',
14,
'',
'W742',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Sub Payment Rule', description = '', displaylength = 14, displaylogic = '', entitytype = 'W742', help = '', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', '','','Sous méthode de paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous méthode de paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Sub Payment Rule',
'',
14,
'',
'W742',
'',
'',
210,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Sub Payment Rule', description = '', displaylength = 14, displaylogic = '', entitytype = 'W742', help = '', obscuretype = '', seqno = 210, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', '','','Sous méthode de paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous méthode de paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Vendor_224' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')),
'Tiers Tft Bancaire',
'',
0,
'@IsVendor@=''Y''',
'W742',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Vendor_224' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')), name = 'Tiers Tft Bancaire', description = '', displaylength = 0, displaylogic = '@IsVendor@=''Y''', entitytype = 'W742', help = '', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'nl_BE', 'Y', '','','Tiers Tft Bancaire'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tiers Tft Bancaire' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'fr_FR', 'Y', '','','Tiers Tft Bancaire'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tiers Tft Bancaire' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBankTft' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
14,
'',
'W742',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Nom de l''entreprise titulaire de la base de données (DB)','','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Help = '',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Transaction Date',
'Transaction Date',
14,
'',
'W742',
'The Transaction Date indicates the date of the transaction.',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Transaction Date', description = 'Transaction Date', displaylength = 14, displaylogic = '', entitytype = 'W742', help = 'The Transaction Date indicates the date of the transaction.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Date transaction','Indique la date de la transaction ou de l''opération.','Date transaction'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date transaction',Help = 'Indique la date de la transaction ou de l''opération.',Name = 'Date transaction' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Due Date',
'Date when the payment is due',
7,
'',
'W742',
'Date when the payment is due without deductions or discount',
'',
60,
0,
'Y',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Due Date', description = 'Date when the payment is due', displaylength = 7, displaylogic = '', entitytype = 'W742', help = 'Date when the payment is due without deductions or discount', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Date de Valeur ','','Date de Valeur '
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date de Valeur ',Help = '',Name = 'Date de Valeur ' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Processed',
'The document has been processed',
1,
'',
'W742',
'The Processed checkbox indicates that a document has been processed.',
'',
90,
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Processed', description = 'The document has been processed', displaylength = 1, displaylogic = '', entitytype = 'W742', help = 'The Processed checkbox indicates that a document has been processed.', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Ce document a été traité','Indique que ce document a été traité.','Traité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ce document a été traité',Help = 'Indique que ce document a été traité.',Name = 'Traité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Type d''Operation',
'Type d''Operation',
22,
'',
'W742',
'Type d''Operation',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Type d''Operation', description = 'Type d''Operation', displaylength = 22, displaylogic = '', entitytype = 'W742', help = 'Type d''Operation', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', 'Type d''Operation','Type d''Operation','Type d''Operation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type d''Operation',Help = 'Type d''Operation',Name = 'Type d''Operation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')),
'Transfert de compte',
'',
22,
'',
'W742',
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
'N',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transferts de compte' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte')), name = 'Transfert de compte', description = '', displaylength = 22, displaylogic = '', entitytype = 'W742', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = 'N', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))), 'fr_FR', 'Y', '','','Transfert de compte'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Transfert de compte' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_BankTransfert_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transferts de compte' and ad_window_id in (select ad_window_id from ad_window where value = 'Saisie des Transferts de compte'))) and ad_language = 'fr_FR';

insert into AD_Ref_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Column_Key_ID, ad_table_id, Column_Display_ID, entitytype, orderbyclause, whereclause, isactive, isvaluedisplayed, isDisplayIdentifiers) 
select 0,0,sysdate, sysdate,0,0,(select ad_reference_id from ad_reference where name = 'C_Charge (BT)'),(select AD_Column_ID from AD_Column where columnName = 'C_Charge_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_Charge')),
(select AD_Table_ID from AD_Table where TableName = 'C_Charge'),
(select AD_Column_ID from AD_Column where columnName = 'Name' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_Charge')),
'W742',
'',
'',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Ref_Table where  ad_reference_id in (select ad_reference_id from ad_reference where name = 'C_Charge (BT)'));

insert into AD_Ref_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Column_Key_ID, ad_table_id, Column_Display_ID, entitytype, orderbyclause, whereclause, isactive, isvaluedisplayed, isDisplayIdentifiers) 
select 0,0,sysdate, sysdate,0,0,(select ad_reference_id from ad_reference where name = 'C_BankAccount Own Bank'),(select AD_Column_ID from AD_Column where columnName = 'C_BankAccount_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_BankAccount')),
(select AD_Table_ID from AD_Table where TableName = 'C_BankAccount'),
(select AD_Column_ID from AD_Column where columnName = 'AccountNo' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_BankAccount')),
'W742',
'',
'EXISTS  (SELECT 1 FROM C_BANK  WHERE C_BANK.isownbank = ''Y''   AND C_BANK.C_BANK_ID   =C_BANKACCOUNT.C_BANK_ID )',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Ref_Table where  ad_reference_id in (select ad_reference_id from ad_reference where name = 'C_BankAccount Own Bank'));

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Saisie des Transferts de compte','Saisie des Mouvements de Trésorerie',
'W',
'Saisie des Mouvements de Trésorerie',
'W742',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Saisie des Transferts de compte' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Saisie des Mouvements de Trésorerie', action = 'W', description = 'Saisie des Mouvements de Trésorerie', entitytype = 'W742', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Saisie des Transferts de compte' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Saisie des Transferts de compte'), 'nl_BE', 'Y', '',''
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Saisie des Transferts de compte') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Saisie des Transferts de compte') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Saisie des Transferts de compte'), 'fr_FR', 'Y', '','Saisie des Mouvements de Trésorerie'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Saisie des Transferts de compte') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Saisie des Mouvements de Trésorerie' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Saisie des Transferts de compte') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'generer od retrocession','generer od retrocession',
'P',
'',
'W742',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'generer od retrocession' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'generer od retrocession', action = 'P', description = '', entitytype = 'W742', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'generer od retrocession' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='generer od retrocession'), 'nl_BE', 'Y', '',''
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='generer od retrocession') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='generer od retrocession') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='generer od retrocession'), 'fr_FR', 'Y', '','generer od retrocession'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='generer od retrocession') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'generer od retrocession' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='generer od retrocession') and ad_language = 'fr_FR';

insert into AD_Workflow (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Workflow_ID,Value,name, workflowtype, isactive, isdefault, ad_table_id, accesslevel, entitytype, publishstatus ,DESCRIPTION, HELP, AD_WF_NODE_ID, DURATIONUNIT, AUTHOR, VERSION, VALIDFROM, VALIDTO, PRIORITY, AD_WF_RESPONSIBLE_ID, AD_WORKFLOWPROCESSOR_ID, DURATIONLIMIT) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Workflow'),'Process_BankTransfert','Process_BankTransfert',
'P',
'Y',
'N',
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
'1',
'W742',
'R',
'',
'',
(select AD_WF_Node_ID from AD_WF_Node where Value = '(Start)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')),
0,
'Audaxis',
0,
NULL,
NULL,
0,
(select AD_WF_Responsible_ID from AD_WF_Responsible where Name = ''),
(select AD_WorkflowProcessor_ID from AD_WorkflowProcessor where Name = ''),
0
 from dual  
where not exists (select 1 from AD_Workflow where Value = 'Process_BankTransfert' );

update AD_Workflow set Updated = sysdate, UpdatedBy = 0, name = 'Process_BankTransfert', workflowtype = 'P', isactive = 'Y', isdefault = 'N', ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), accesslevel = '1', entitytype = 'W742', publishstatus = 'R', DESCRIPTION = '', HELP = '', AD_WF_NODE_ID = (select AD_WF_Node_ID from AD_WF_Node where Value = '(Start)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')), DURATIONUNIT = 0, AUTHOR = 'Audaxis', VERSION = 0, VALIDFROM = NULL, VALIDTO = NULL, PRIORITY = 0, AD_WF_RESPONSIBLE_ID = (select AD_WF_Responsible_ID from AD_WF_Responsible where Name = ''), AD_WORKFLOWPROCESSOR_ID = (select AD_WorkflowProcessor_ID from AD_WorkflowProcessor where Name = ''), DURATIONLIMIT = 0 
where Value = 'Process_BankTransfert' ;

insert into AD_Workflow_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Workflow_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Workflow_ID from AD_Workflow where Value='Process_BankTransfert'), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Workflow_Trl where AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value='Process_BankTransfert') and ad_language = 'nl_BE');

update AD_Workflow_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value='Process_BankTransfert') and ad_language = 'nl_BE';

insert into AD_Workflow_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Workflow_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Workflow_ID from AD_Workflow where Value='Process_BankTransfert'), 'fr_FR', 'Y', '(Process BankTransfert)','','Process_BankTransfert'
 from dual  
where not exists (select 1 from AD_Workflow_Trl where AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value='Process_BankTransfert') and ad_language = 'fr_FR');

update AD_Workflow_Trl set Updated = sysdate, UpdatedBy = 0,Description = '(Process BankTransfert)',Help = '',Name = 'Process_BankTransfert' where AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value='Process_BankTransfert') and ad_language = 'fr_FR';

insert into AD_WF_Node (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_Node_ID,Value,name, isactive, entitytype, action, docaction, joinelement, splitelement, ad_workflow_id, AD_WINDOW_ID, WORKFLOW_ID, AD_TASK_ID, AD_PROCESS_ID, AD_FORM_ID,  AD_IMAGE_ID, AD_WF_RESPONSIBLE_ID, AD_COLUMN_ID, ATTRIBUTENAME, ATTRIBUTEVALUE, PRIORITY, STARTMODE, FINISHMODE, ISCENTRALLYMAINTAINED) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_WF_Node'),'(Start)','(Start)',
'Y',
'W742',
'Z',
'CO',
'X',
'X',
(select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert'),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workflow_ID from AD_Workflow where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_WF_Responsible_ID from AD_WF_Responsible where Name = ''),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = '')),
'',
'',
0,
'',
'',
'Y'
 from dual  
where not exists (select 1 from AD_WF_Node where Value = '(Start)'  and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert'));

update AD_WF_Node set Updated = sysdate, UpdatedBy = 0, name = '(Start)', isactive = 'Y', entitytype = 'W742', action = 'Z', docaction = 'CO', joinelement = 'X', splitelement = 'X', ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert'), AD_WINDOW_ID = (select AD_Window_ID from AD_Window where Value = ''), WORKFLOW_ID = (select AD_Workflow_ID from AD_Workflow where Value = ''), AD_TASK_ID = (select AD_Task_ID from AD_Task where Name = ''), AD_PROCESS_ID = (select AD_Process_ID from AD_Process where Value = ''), AD_FORM_ID = (select AD_Form_ID from AD_Form where Name = ''), AD_IMAGE_ID = (select AD_Image_ID from AD_Image where Name = ''), AD_WF_RESPONSIBLE_ID = (select AD_WF_Responsible_ID from AD_WF_Responsible where Name = ''), AD_COLUMN_ID = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = '')), ATTRIBUTENAME = '', ATTRIBUTEVALUE = '', PRIORITY = 0, STARTMODE = '', FINISHMODE = '', ISCENTRALLYMAINTAINED = 'Y' 
where Value = '(Start)'  and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert');

insert into AD_WF_Node_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_Node_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_WF_Node_ID from AD_WF_Node where Value='(Start)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_WF_Node_Trl where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(Start)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'nl_BE');

update AD_WF_Node_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(Start)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_WF_Node_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_Node_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_WF_Node_ID from AD_WF_Node where Value='(Start)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')), 'fr_FR', 'Y', '(Standard Node)','','(Start)'
 from dual  
where not exists (select 1 from AD_WF_Node_Trl where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(Start)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'fr_FR');

update AD_WF_Node_Trl set Updated = sysdate, UpdatedBy = 0,Description = '(Standard Node)',Help = '',Name = '(Start)' where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(Start)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_WF_Node (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_Node_ID,Value,name, isactive, entitytype, action, docaction, joinelement, splitelement, ad_workflow_id, AD_WINDOW_ID, WORKFLOW_ID, AD_TASK_ID, AD_PROCESS_ID, AD_FORM_ID,  AD_IMAGE_ID, AD_WF_RESPONSIBLE_ID, AD_COLUMN_ID, ATTRIBUTENAME, ATTRIBUTEVALUE, PRIORITY, STARTMODE, FINISHMODE, ISCENTRALLYMAINTAINED) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_WF_Node'),'(DocPrepare)','(DocPrepare)',
'Y',
'W742',
'D',
'PR',
'X',
'X',
(select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert'),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workflow_ID from AD_Workflow where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_WF_Responsible_ID from AD_WF_Responsible where Name = ''),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = '')),
'',
'',
0,
'',
'',
'Y'
 from dual  
where not exists (select 1 from AD_WF_Node where Value = '(DocPrepare)'  and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert'));

update AD_WF_Node set Updated = sysdate, UpdatedBy = 0, name = '(DocPrepare)', isactive = 'Y', entitytype = 'W742', action = 'D', docaction = 'PR', joinelement = 'X', splitelement = 'X', ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert'), AD_WINDOW_ID = (select AD_Window_ID from AD_Window where Value = ''), WORKFLOW_ID = (select AD_Workflow_ID from AD_Workflow where Value = ''), AD_TASK_ID = (select AD_Task_ID from AD_Task where Name = ''), AD_PROCESS_ID = (select AD_Process_ID from AD_Process where Value = ''), AD_FORM_ID = (select AD_Form_ID from AD_Form where Name = ''), AD_IMAGE_ID = (select AD_Image_ID from AD_Image where Name = ''), AD_WF_RESPONSIBLE_ID = (select AD_WF_Responsible_ID from AD_WF_Responsible where Name = ''), AD_COLUMN_ID = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = '')), ATTRIBUTENAME = '', ATTRIBUTEVALUE = '', PRIORITY = 0, STARTMODE = '', FINISHMODE = '', ISCENTRALLYMAINTAINED = 'Y' 
where Value = '(DocPrepare)'  and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert');

insert into AD_WF_Node_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_Node_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_WF_Node_ID from AD_WF_Node where Value='(DocPrepare)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_WF_Node_Trl where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(DocPrepare)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'nl_BE');

update AD_WF_Node_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(DocPrepare)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_WF_Node_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_Node_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_WF_Node_ID from AD_WF_Node where Value='(DocPrepare)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')), 'fr_FR', 'Y', '(Standard Node)','','(DocPrepare)'
 from dual  
where not exists (select 1 from AD_WF_Node_Trl where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(DocPrepare)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'fr_FR');

update AD_WF_Node_Trl set Updated = sysdate, UpdatedBy = 0,Description = '(Standard Node)',Help = '',Name = '(DocPrepare)' where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(DocPrepare)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_WF_Node (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_Node_ID,Value,name, isactive, entitytype, action, docaction, joinelement, splitelement, ad_workflow_id, AD_WINDOW_ID, WORKFLOW_ID, AD_TASK_ID, AD_PROCESS_ID, AD_FORM_ID,  AD_IMAGE_ID, AD_WF_RESPONSIBLE_ID, AD_COLUMN_ID, ATTRIBUTENAME, ATTRIBUTEVALUE, PRIORITY, STARTMODE, FINISHMODE, ISCENTRALLYMAINTAINED) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_WF_Node'),'(DocComplete)','(DocComplete)',
'Y',
'W742',
'D',
'CO',
'X',
'X',
(select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert'),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workflow_ID from AD_Workflow where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_WF_Responsible_ID from AD_WF_Responsible where Name = ''),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = '')),
'',
'',
0,
'',
'',
'Y'
 from dual  
where not exists (select 1 from AD_WF_Node where Value = '(DocComplete)'  and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert'));

update AD_WF_Node set Updated = sysdate, UpdatedBy = 0, name = '(DocComplete)', isactive = 'Y', entitytype = 'W742', action = 'D', docaction = 'CO', joinelement = 'X', splitelement = 'X', ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert'), AD_WINDOW_ID = (select AD_Window_ID from AD_Window where Value = ''), WORKFLOW_ID = (select AD_Workflow_ID from AD_Workflow where Value = ''), AD_TASK_ID = (select AD_Task_ID from AD_Task where Name = ''), AD_PROCESS_ID = (select AD_Process_ID from AD_Process where Value = ''), AD_FORM_ID = (select AD_Form_ID from AD_Form where Name = ''), AD_IMAGE_ID = (select AD_Image_ID from AD_Image where Name = ''), AD_WF_RESPONSIBLE_ID = (select AD_WF_Responsible_ID from AD_WF_Responsible where Name = ''), AD_COLUMN_ID = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = '')), ATTRIBUTENAME = '', ATTRIBUTEVALUE = '', PRIORITY = 0, STARTMODE = '', FINISHMODE = '', ISCENTRALLYMAINTAINED = 'Y' 
where Value = '(DocComplete)'  and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert');

insert into AD_WF_Node_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_Node_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_WF_Node_ID from AD_WF_Node where Value='(DocComplete)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_WF_Node_Trl where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(DocComplete)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'nl_BE');

update AD_WF_Node_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(DocComplete)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_WF_Node_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_Node_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_WF_Node_ID from AD_WF_Node where Value='(DocComplete)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')), 'fr_FR', 'Y', '(Standard Node)','','(DocComplete)'
 from dual  
where not exists (select 1 from AD_WF_Node_Trl where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(DocComplete)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'fr_FR');

update AD_WF_Node_Trl set Updated = sysdate, UpdatedBy = 0,Description = '(Standard Node)',Help = '',Name = '(DocComplete)' where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(DocComplete)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_WF_Node (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_Node_ID,Value,name, isactive, entitytype, action, docaction, joinelement, splitelement, ad_workflow_id, AD_WINDOW_ID, WORKFLOW_ID, AD_TASK_ID, AD_PROCESS_ID, AD_FORM_ID,  AD_IMAGE_ID, AD_WF_RESPONSIBLE_ID, AD_COLUMN_ID, ATTRIBUTENAME, ATTRIBUTEVALUE, PRIORITY, STARTMODE, FINISHMODE, ISCENTRALLYMAINTAINED) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_WF_Node'),'(DocAuto)','(DocAuto)',
'Y',
'W742',
'D',
'--',
'X',
'X',
(select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert'),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workflow_ID from AD_Workflow where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_WF_Responsible_ID from AD_WF_Responsible where Name = ''),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = '')),
'',
'',
0,
'',
'',
'Y'
 from dual  
where not exists (select 1 from AD_WF_Node where Value = '(DocAuto)'  and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert'));

update AD_WF_Node set Updated = sysdate, UpdatedBy = 0, name = '(DocAuto)', isactive = 'Y', entitytype = 'W742', action = 'D', docaction = '--', joinelement = 'X', splitelement = 'X', ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert'), AD_WINDOW_ID = (select AD_Window_ID from AD_Window where Value = ''), WORKFLOW_ID = (select AD_Workflow_ID from AD_Workflow where Value = ''), AD_TASK_ID = (select AD_Task_ID from AD_Task where Name = ''), AD_PROCESS_ID = (select AD_Process_ID from AD_Process where Value = ''), AD_FORM_ID = (select AD_Form_ID from AD_Form where Name = ''), AD_IMAGE_ID = (select AD_Image_ID from AD_Image where Name = ''), AD_WF_RESPONSIBLE_ID = (select AD_WF_Responsible_ID from AD_WF_Responsible where Name = ''), AD_COLUMN_ID = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = '')), ATTRIBUTENAME = '', ATTRIBUTEVALUE = '', PRIORITY = 0, STARTMODE = '', FINISHMODE = '', ISCENTRALLYMAINTAINED = 'Y' 
where Value = '(DocAuto)'  and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert');

insert into AD_WF_Node_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_Node_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_WF_Node_ID from AD_WF_Node where Value='(DocAuto)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_WF_Node_Trl where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(DocAuto)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'nl_BE');

update AD_WF_Node_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(DocAuto)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'nl_BE';

insert into AD_WF_Node_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_Node_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_WF_Node_ID from AD_WF_Node where Value='(DocAuto)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')), 'fr_FR', 'Y', '(Standard Node)','','(DocAuto)'
 from dual  
where not exists (select 1 from AD_WF_Node_Trl where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(DocAuto)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'fr_FR');

update AD_WF_Node_Trl set Updated = sysdate, UpdatedBy = 0,Description = '(Standard Node)',Help = '',Name = '(DocAuto)' where AD_WF_Node_ID in (select AD_WF_Node_ID from AD_WF_Node where Value='(DocAuto)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')) and ad_language = 'fr_FR';

insert into AD_WF_NodeNext (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_NodeNext_ID,SeqNo,ad_wf_node_id, ad_wf_next_id, isactive, entitytype, isstduserworkflow, description) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_WF_NodeNext'),'10',(select AD_WF_Node_ID from AD_WF_Node where Value = '(Start)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')),
(select AD_WF_Node_ID from AD_WF_Node where Value = '(DocPrepare)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')),
'Y',
'W742',
'Y',
'(Standard Approval)'
 from dual  
where not exists (select 1 from AD_WF_NodeNext where SeqNo = '10'  and ad_wf_node_id in (select ad_wf_node_id from ad_wf_node where value = '(Start)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')));

update AD_WF_NodeNext set Updated = sysdate, UpdatedBy = 0, ad_wf_node_id = (select AD_WF_Node_ID from AD_WF_Node where Value = '(Start)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')), ad_wf_next_id = (select AD_WF_Node_ID from AD_WF_Node where Value = '(DocPrepare)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')), isactive = 'Y', entitytype = 'W742', isstduserworkflow = 'Y', description = '(Standard Approval)' 
where SeqNo = '10'  and ad_wf_node_id in (select ad_wf_node_id from ad_wf_node where value = '(Start)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert'));

insert into AD_WF_NodeNext (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_NodeNext_ID,SeqNo,ad_wf_node_id, ad_wf_next_id, isactive, entitytype, isstduserworkflow, description) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_WF_NodeNext'),'100',(select AD_WF_Node_ID from AD_WF_Node where Value = '(DocPrepare)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')),
(select AD_WF_Node_ID from AD_WF_Node where Value = '(DocComplete)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')),
'Y',
'W742',
'N',
'(Standard Transition)'
 from dual  
where not exists (select 1 from AD_WF_NodeNext where SeqNo = '100'  and ad_wf_node_id in (select ad_wf_node_id from ad_wf_node where value = '(DocPrepare)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')));

update AD_WF_NodeNext set Updated = sysdate, UpdatedBy = 0, ad_wf_node_id = (select AD_WF_Node_ID from AD_WF_Node where Value = '(DocPrepare)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')), ad_wf_next_id = (select AD_WF_Node_ID from AD_WF_Node where Value = '(DocComplete)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')), isactive = 'Y', entitytype = 'W742', isstduserworkflow = 'N', description = '(Standard Transition)' 
where SeqNo = '100'  and ad_wf_node_id in (select ad_wf_node_id from ad_wf_node where value = '(DocPrepare)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert'));

insert into AD_WF_NodeNext (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_WF_NodeNext_ID,SeqNo,ad_wf_node_id, ad_wf_next_id, isactive, entitytype, isstduserworkflow, description) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_WF_NodeNext'),'100',(select AD_WF_Node_ID from AD_WF_Node where Value = '(Start)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')),
(select AD_WF_Node_ID from AD_WF_Node where Value = '(DocAuto)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')),
'Y',
'W742',
'N',
'(Standard Transition)'
 from dual  
where not exists (select 1 from AD_WF_NodeNext where SeqNo = '100'  and ad_wf_node_id in (select ad_wf_node_id from ad_wf_node where value = '(Start)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert')));

update AD_WF_NodeNext set Updated = sysdate, UpdatedBy = 0, ad_wf_node_id = (select AD_WF_Node_ID from AD_WF_Node where Value = '(Start)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')), ad_wf_next_id = (select AD_WF_Node_ID from AD_WF_Node where Value = '(DocAuto)' and AD_Workflow_ID in (select AD_Workflow_ID from AD_Workflow where Value = 'Process_BankTransfert')), isactive = 'Y', entitytype = 'W742', isstduserworkflow = 'N', description = '(Standard Transition)' 
where SeqNo = '100'  and ad_wf_node_id in (select ad_wf_node_id from ad_wf_node where value = '(Start)' and ad_workflow_id in (select ad_workflow_id from ad_workflow where value = 'Process_BankTransfert'));

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_AMOUNTZEROBKTFT','W742',
'Montant Zero du Transfert, le Montant doit être > 0',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_AMOUNTZEROBKTFT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'W742', msgtext = 'Montant Zero du Transfert, le Montant doit être > 0', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_AMOUNTZEROBKTFT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_AMOUNTZEROBKTFT'), 'nl_BE', 'Y', 'Montant Zero du Transfert, le Montant doit être > 0',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_AMOUNTZEROBKTFT') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Montant Zero du Transfert, le Montant doit être > 0',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_AMOUNTZEROBKTFT') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_AMOUNTZEROBKTFT'), 'fr_FR', 'Y', 'Montant Zero',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_AMOUNTZEROBKTFT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Montant Zero',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_AMOUNTZEROBKTFT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_BPARTNERBKTFT','W742',
'Aucun Tiers n''est coché "Tiers de Bank Transfert"',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_BPARTNERBKTFT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'W742', msgtext = 'Aucun Tiers n''est coché "Tiers de Bank Transfert"', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_BPARTNERBKTFT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_BPARTNERBKTFT'), 'nl_BE', 'Y', 'Aucun Tiers n''est coché "Tiers de Bank Transfert"',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNERBKTFT') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Aucun Tiers n''est coché "Tiers de Bank Transfert"',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNERBKTFT') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_BPARTNERBKTFT'), 'fr_FR', 'Y', 'Aucun Tiers n''est coché "Tiers de Bank Transfert"',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNERBKTFT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Aucun Tiers n''est coché "Tiers de Bank Transfert"',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNERBKTFT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_PAYMENTONBKTRT','W742',
'Paiement sur baque de transfert',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_PAYMENTONBKTRT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'W742', msgtext = 'Paiement sur baque de transfert', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_PAYMENTONBKTRT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_PAYMENTONBKTRT'), 'nl_BE', 'Y', 'Paiement sur baque de transfert',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_PAYMENTONBKTRT') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Paiement sur baque de transfert',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_PAYMENTONBKTRT') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_PAYMENTONBKTRT'), 'fr_FR', 'Y', 'Paiement sur baque de transfert',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_PAYMENTONBKTRT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Paiement sur baque de transfert',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_PAYMENTONBKTRT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_BPARTNERONETFT','W742',
'Un seul Fournisseur avec "Tft Bancaire" coché autorisé',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_BPARTNERONETFT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'W742', msgtext = 'Un seul Fournisseur avec "Tft Bancaire" coché autorisé', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_BPARTNERONETFT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_BPARTNERONETFT'), 'nl_BE', 'Y', 'Un seul Fournisseur avec "Tft Bancaire" coché autorisé',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNERONETFT') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Un seul Fournisseur avec "Tft Bancaire" coché autorisé',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNERONETFT') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_BPARTNERONETFT'), 'fr_FR', 'Y', 'Un seul Fournisseur avec "Tft Bancaire" coché autorisé',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNERONETFT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Un seul Fournisseur avec "Tft Bancaire" coché autorisé',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNERONETFT') and ad_language = 'fr_FR';

insert into C_DocBaseType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,C_DocBaseType_ID,Name,description, help, isactive, docbasetype, entitytype, accountingclassname, ad_table_id ) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('C_DocBaseType'),'Transfert Banque','',
'',
'Y',
'BTR',
'W742',
'',
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')
 from dual  
where not exists (select 1 from C_DocBaseType where Name = 'Transfert Banque' );

update C_DocBaseType set Updated = sysdate, UpdatedBy = 0, description = '', help = '', isactive = 'Y', docbasetype = 'BTR', entitytype = 'W742', accountingclassname = '', ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert') 
where Name = 'Transfert Banque' ;

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '30742 - Mouvements de Trésorerie', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'W742' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'W742', help = '', importtable = 'N', loadseq = 0, name = 'Saisie des Transferts de compte', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'Y', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Saisie des Transferts de compte'), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'Z_BankTransfert' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'generer od retrocession') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'generer od retrocession')); 

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Saisie des Transferts de compte') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Saisie des Transferts de compte')); 