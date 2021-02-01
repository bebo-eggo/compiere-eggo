insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'ME10','68976 - NEC - Gestion adresse et contact',
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
where not exists (select 1 from AD_EntityType where EntityType = 'ME10' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '68976 - NEC - Gestion adresse et contact', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'ME10' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'CopyLocationCuisine','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.CopyLocationCuisine',
'',
'ME10',
'',
'',
'',
'CopyLocationCuisine',
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
where not exists (select 1 from AD_Process where Value = 'CopyLocationCuisine' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.CopyLocationCuisine', description = '', entitytype = 'ME10', help = '', jasperreport = '', procedurename = '', name = 'CopyLocationCuisine', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'CopyLocationCuisine' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='CopyLocationCuisine'), 'fr_FR', 'Y', '','','CopyLocationCuisine'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='CopyLocationCuisine') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'CopyLocationCuisine' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='CopyLocationCuisine') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='CopyLocationCuisine'), 'nl_NL', 'Y', '','','CopyLocationCuisine'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='CopyLocationCuisine') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'CopyLocationCuisine' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='CopyLocationCuisine') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'CopyLocationCuisine','',
'ME10',
'',
'Copy Location Cuisine',
'',
'',
'',
'',
'Copy Location Cuisine',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'CopyLocationCuisine' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'ME10', help = '', name = 'Copy Location Cuisine', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Copy Location Cuisine', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'CopyLocationCuisine' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CopyLocationCuisine'), 'fr_FR', 'Y', '','','Copie adresse Cuisine','','','','','Copie adresse Cuisine'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CopyLocationCuisine') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Copie adresse Cuisine',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Copie adresse Cuisine' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CopyLocationCuisine') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CopyLocationCuisine'), 'nl_NL', 'Y', '','','Copie adresse Cuisine','','','','','Copie adresse Cuisine'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CopyLocationCuisine') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Copie adresse Cuisine',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Copie adresse Cuisine' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CopyLocationCuisine') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CopyLocationCuisine',(select AD_Element_ID from AD_Element where ColumnName = 'CopyLocationCuisine'),
(select AD_Process_ID from AD_Process where Value = 'CopyLocationCuisine'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BPartner_Location'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'ME10',
1,
'',
'Copy Location Cuisine',
'@IsEggo@=N',
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
where not exists (select 1 from AD_Column where ColumnName = 'CopyLocationCuisine'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CopyLocationCuisine'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'CopyLocationCuisine'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BPartner_Location'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'ME10', fieldlength = 1, help = '', name = 'Copy Location Cuisine', readonlylogic = '@IsEggo@=N', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CopyLocationCuisine'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')), 'fr_FR', 'Y', 'Copy Location Cuisine'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Copy Location Cuisine' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')), 'nl_NL', 'Y', 'Copy Location Cuisine'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Copy Location Cuisine' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_222' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')),
'Copy Location Cuisine',
'',
22,
'@IsEggo@=''N'' &'||' @IsBillTo@=''N'' &'||' @IsShipTo@=''Y''',
'ME10',
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
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
170
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_222' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')), name = 'Copy Location Cuisine', description = '', displaylength = 22, displaylogic = '@IsEggo@=''N'' &'||' @IsBillTo@=''N'' &'||' @IsShipTo@=''Y''', entitytype = 'ME10', help = '', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 170 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'fr_FR', 'Y', '','','Copie adresse Cuisine'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Copie adresse Cuisine' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'nl_NL', 'Y', '','','Copie adresse Cuisine'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Copie adresse Cuisine' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EGGO_POS_ALREADYEXIST','ME10',
'Tiers a déjà une adresse de Livraison cuisine',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EGGO_POS_ALREADYEXIST' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'ME10', msgtext = 'Tiers a déjà une adresse de Livraison cuisine', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EGGO_POS_ALREADYEXIST' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EGGO_POS_ALREADYEXIST'), 'fr_FR', 'Y', 'Tiers a déjà une adresse de Livraison cuisine',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_POS_ALREADYEXIST') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tiers a déjà une adresse de Livraison cuisine',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_POS_ALREADYEXIST') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EGGO_POS_ALREADYEXIST'), 'nl_NL', 'Y', 'Tiers a déjà une adresse de Livraison cuisine',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_POS_ALREADYEXIST') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tiers a déjà une adresse de Livraison cuisine',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_POS_ALREADYEXIST') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '68976 - NEC - Gestion adresse et contact', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'ME10' ;
