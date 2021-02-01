insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG25','EG25 - CopyCustomizeTable',
'',
'',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EG25' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG25 - CopyCustomizeTable', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG25' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'ZCopyCustomization','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.process.CopyCustomizeTable',
'Copy Customization Intégrées par l''utilisateur',
'EG25',
'Cela permet de copier les customizes table d''un utilisateur a un autre en supprimant ceux existants et les recrés a partir de l''utilisateur entré en paramétre.',
'',
'',
'Copy Customization',
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
where not exists (select 1 from AD_Process where Value = 'ZCopyCustomization' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.process.CopyCustomizeTable', description = 'Copy Customization Intégrées par l''utilisateur', entitytype = 'EG25', help = 'Cela permet de copier les customizes table d''un utilisateur a un autre en supprimant ceux existants et les recrés a partir de l''utilisateur entré en paramétre.', jasperreport = '', procedurename = '', name = 'Copy Customization', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'ZCopyCustomization' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ZCopyCustomization'), 'nl_NL', 'Y', 'Copy Customization Intégrées par l''utilisateur','Cela permet de copier les customizes table d''un utilisateur a un autre en supprimant ceux existants et les recrés a partir de l''utilisateur entré en paramétre.','Copy Customization'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZCopyCustomization') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Copy Customization Intégrées par l''utilisateur',Help = 'Cela permet de copier les customizes table d''un utilisateur a un autre en supprimant ceux existants et les recrés a partir de l''utilisateur entré en paramétre.',Name = 'Copy Customization' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZCopyCustomization') and ad_language = 'nl_NL';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ZCopyCustomization'), 'fr_FR', 'Y', 'Copy Customization Intégrées par l''utilisateur','Cela permet de copier les customizes table d''un utilisateur a un autre en supprimant ceux existants et les recrés a partir de l''utilisateur entré en paramétre.','Copy Customization'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZCopyCustomization') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Copy Customization Intégrées par l''utilisateur',Help = 'Cela permet de copier les customizes table d''un utilisateur a un autre en supprimant ceux existants et les recrés a partir de l''utilisateur entré en paramétre.',Name = 'Copy Customization' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZCopyCustomization') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'CopyCustomization','',
'EG25',
'',
'Copy Customization',
'',
'',
'',
'',
'Copy Customization',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'CopyCustomization' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG25', help = '', name = 'Copy Customization', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Copy Customization', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'CopyCustomization' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CopyCustomization'), 'nl_NL', 'Y', '','','Copy Customization','','','','','Copy Customization'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CopyCustomization') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Copy Customization',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Copy Customization' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CopyCustomization') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CopyCustomization'), 'fr_FR', 'Y', '','','Copy Customization','','','','','Copy Customization'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CopyCustomization') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Copy Customization',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Copy Customization' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CopyCustomization') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ApplyForAllUsers','',
'EG25',
'',
'Apply For All Users',
'',
'',
'',
'',
'Apply For All Users',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ApplyForAllUsers' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG25', help = '', name = 'Apply For All Users', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Apply For All Users', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ApplyForAllUsers' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ApplyForAllUsers'), 'nl_NL', 'Y', '','','Apply For All Users','','','','','Apply For All Users'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ApplyForAllUsers') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Apply For All Users',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Apply For All Users' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ApplyForAllUsers') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ApplyForAllUsers'), 'fr_FR', 'Y', '','','Appliquer pour tous les utilisateurs','','','','','Appliquer pour tous les utilisateurs'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ApplyForAllUsers') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Appliquer pour tous les utilisateurs',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Appliquer pour tous les utilisateurs' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ApplyForAllUsers') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'AD_User_From_ID','',
'EG25',
'',
'User from',
'',
'',
'',
'',
'User from',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'AD_User_From_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG25', help = '', name = 'User from', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'User from', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'AD_User_From_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='AD_User_From_ID'), 'nl_NL', 'Y', '','','User from','','','','','User from'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AD_User_From_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'User from',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'User from' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AD_User_From_ID') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='AD_User_From_ID'), 'fr_FR', 'Y', '','','User from','','','','','User from'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AD_User_From_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'User from',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'User from' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='AD_User_From_ID') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CopyCustomization',(select AD_Element_ID from AD_Element where ColumnName = 'CopyCustomization'),
(select AD_Process_ID from AD_Process where Value = 'ZCopyCustomization'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_User'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EG25',
1,
'',
'Copy Customization',
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
where not exists (select 1 from AD_Column where ColumnName = 'CopyCustomization'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CopyCustomization'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ZCopyCustomization'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_User'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EG25', fieldlength = 1, help = '', name = 'Copy Customization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CopyCustomization'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')), 'nl_NL', 'Y', 'Copy Customization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Copy Customization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')), 'fr_FR', 'Y', 'Copy Customization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Copy Customization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'User_118' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'User_108')),
'Copy Customization',
'',
1,
'',
'EG25',
'',
'',
330,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'User_118' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'User_108')), name = 'Copy Customization', description = '', displaylength = 1, displaylogic = '', entitytype = 'EG25', help = '', obscuretype = '', seqno = 330, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'))), 'nl_NL', 'Y', '','','Copy Customization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Copy Customization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'))), 'fr_FR', 'Y', '','','Copy Customization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Copy Customization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyCustomization' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'User_118' and ad_window_id in (select ad_window_id from ad_window where value = 'User_108'))) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_User_From_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_User_From_ID'),
(select AD_Process_ID from AD_Process where Value = 'ZCopyCustomization'),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'User From',
'',
'',
'',
'EG25',
10,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_User_From_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_User_From_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ZCopyCustomization'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'User From', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG25', fieldlength = 10, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_User_From_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_User_From_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization')), 'nl_NL', 'Y', '','','User From'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_User_From_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'User From' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_User_From_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_User_From_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization')), 'fr_FR', 'Y', '','','User From'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_User_From_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'User From' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_User_From_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'ApplyForAllUsers',(select AD_Element_ID from AD_Element where ColumnName = 'ApplyForAllUsers'),
(select AD_Process_ID from AD_Process where Value = 'ZCopyCustomization'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Apply For All Users',
'N',
'',
'',
'EG25',
1,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'ApplyForAllUsers'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ApplyForAllUsers'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ZCopyCustomization'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Apply For All Users', defaultvalue = 'N', defaultvalue2 = '', description = '', entitytype = 'EG25', fieldlength = 1, help = '', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'ApplyForAllUsers'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ApplyForAllUsers' and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization')), 'nl_NL', 'Y', '','','Apply For All Users'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ApplyForAllUsers' and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Apply For All Users' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ApplyForAllUsers' and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ApplyForAllUsers' and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization')), 'fr_FR', 'Y', '','','Appliquer pour tous les utilisateurs'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ApplyForAllUsers' and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Appliquer pour tous les utilisateurs' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ApplyForAllUsers' and ad_process_id in (select ad_process_id from ad_process where value = 'ZCopyCustomization')) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG25 - CopyCustomizeTable', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG25' ;

