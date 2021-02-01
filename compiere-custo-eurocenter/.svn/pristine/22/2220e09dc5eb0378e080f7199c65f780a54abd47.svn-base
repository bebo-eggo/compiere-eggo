insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'25TZ','71487 - Réception par import de fichier et matchnig avec OA',
'Evolution #71487',
'',
'Y',
'',
'',
'',
'N',
'361.22.0',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '25TZ' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '71487 - Réception par import de fichier et matchnig avec OA', description = 'Evolution #71487', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361.22.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '25TZ' ;

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'Import_Shipment','Import Shipment',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'Import Shipment',
'25TZ',
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
where not exists (select 1 from AD_Window where Value = 'Import_Shipment' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Import Shipment', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = 'Import Shipment', entitytype = '25TZ', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'Import_Shipment' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Import_Shipment'), 'nl_NL', 'Y', 'Import des réceptions','Import des réceptions',''
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Import_Shipment') and ad_language = 'nl_NL');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import des réceptions',Description = 'Import des réceptions',Help = '' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Import_Shipment') and ad_language = 'nl_NL';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Import_Shipment'), 'fr_FR', 'Y', 'Import des réceptions','Import des réceptions',''
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Import_Shipment') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import des réceptions',Description = 'Import des réceptions',Help = '' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Import_Shipment') and ad_language = 'fr_FR';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'I_Inout','2',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Import Shipment',
'25TZ',
'',
'',
145,
'Import Shipment',
'L',
'Y',
'Y',
'N',
'N',
'N',
(select AD_Window_ID from AD_Window where Value = 'Import_Shipment'),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'I_Inout' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '2', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = 'Import Shipment', entitytype = '25TZ', help = '', importtable = '', loadseq = 145, name = 'Import Shipment', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Import_Shipment'), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'I_Inout' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='I_Inout'), 'nl_NL', 'Y', 'Import Shipment'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_Inout') and ad_language = 'nl_NL');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Shipment' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_Inout') and ad_language = 'nl_NL';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='I_Inout'), 'fr_FR', 'Y', 'Import Shipment'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_Inout') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Shipment' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_Inout') and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Import_Shipment','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'org.compiere.process.ImportInOut',
'Import Shipment',
'25TZ',
'',
'',
'',
'Import Shipment',
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
where not exists (select 1 from AD_Process where Value = 'Import_Shipment' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'org.compiere.process.ImportInOut', description = 'Import Shipment', entitytype = '25TZ', help = '', jasperreport = '', procedurename = '', name = 'Import Shipment', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Import_Shipment' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Import_Shipment'), 'nl_NL', 'Y', 'Import Shipment','Import Shipment',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_Shipment') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Shipment',Description = 'Import Shipment',Help = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_Shipment') and ad_language = 'nl_NL';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Import_Shipment'), 'fr_FR', 'Y', 'Import Shipment','Import Shipment',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_Shipment') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Shipment',Description = 'Import Shipment',Help = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_Shipment') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'I_Inout_ID','Import Shipment',
'25TZ',
'',
'Import Shipment',
'',
'',
'',
'',
'Import Shipment',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'I_Inout_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Import Shipment', entitytype = '25TZ', help = '', name = 'Import Shipment', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Import Shipment', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'I_Inout_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,PO_PrintName,PO_Name,PO_Description,Help,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='I_Inout_ID'), 'nl_NL', 'Y', 'Import Shipment','Import Shipment','Import Shipment','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_Inout_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Import Shipment',Name = 'Import Shipment',PrintName = 'Import Shipment',PO_PrintName = '',PO_Name = '',PO_Description = '',Help = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_Inout_ID') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,PO_PrintName,PO_Name,PO_Description,Help,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='I_Inout_ID'), 'fr_FR', 'Y', 'Import Shipment','Import Shipment','Import Shipment','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_Inout_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Import Shipment',Name = 'Import Shipment',PrintName = 'Import Shipment',PO_PrintName = '',PO_Name = '',PO_Description = '',Help = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_Inout_ID') and ad_language = 'fr_FR';

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'C_DocType Inout','C_DocType.DocBaseType IN (''MMR'')',
'C_DocType Inout',
'25TZ',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'C_DocType Inout' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'C_DocType.DocBaseType IN (''MMR'')', description = 'C_DocType Inout', entitytype = '25TZ', type = 'S', isactive = 'Y' 
where Name = 'C_DocType Inout' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'I_Inout_ID',(select AD_Element_ID from AD_Element where ColumnName = 'I_Inout_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Import Shipment',
'25TZ',
22,
'',
'Import Shipment',
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
where not exists (select 1 from AD_Column where ColumnName = 'I_Inout_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'I_Inout_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'ID'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Import Shipment', entitytype = '25TZ', fieldlength = 22, help = '', name = 'Import Shipment', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'Y', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'I_Inout_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Import Shipment'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Shipment' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Import Shipment'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Shipment' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Identifies a Business Partner',
'25TZ',
22,
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
'Business Partner',
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
'Y',
'',
'N',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Identifies a Business Partner', entitytype = '25TZ', fieldlength = 22, help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', name = 'Business Partner', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'N', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Relatie'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Relatie' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Tiers'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tiers' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'QtyOrdered',(select AD_Element_ID from AD_Element where ColumnName = 'QtyOrdered'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'0',
'Ordered Quantity',
'25TZ',
22,
'The Ordered Quantity indicates the quantity of a product that was ordered.',
'Quantity Ordered',
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
where not exists (select 1 from AD_Column where ColumnName = 'QtyOrdered'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'QtyOrdered'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Costs+Prices'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '0', description = 'Ordered Quantity', entitytype = '25TZ', fieldlength = 22, help = 'The Ordered Quantity indicates the quantity of a product that was ordered.', name = 'Quantity Ordered', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'QtyOrdered'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Bestelde Hoeveelheid'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Bestelde Hoeveelheid' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Quantité commandée'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantité commandée' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PurchaseOrderNO',(select AD_Element_ID from AD_Element where ColumnName = 'PurchaseOrderNO'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'25TZ',
22,
'',
'PurchaseOrderNO',
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
where not exists (select 1 from AD_Column where ColumnName = 'PurchaseOrderNO'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PurchaseOrderNO'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '25TZ', fieldlength = 22, help = '', name = 'PurchaseOrderNO', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PurchaseOrderNO'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'PurchaseOrderNO'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PurchaseOrderNO' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Ordre d''Achat'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ordre d''Achat' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'I_IsImported',(select AD_Element_ID from AD_Element where ColumnName = 'I_IsImported'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = '_IsImported'),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'25TZ',
1,
'',
'I_IsImported',
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
where not exists (select 1 from AD_Column where ColumnName = 'I_IsImported'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'I_IsImported'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = '_IsImported'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = '25TZ', fieldlength = 1, help = '', name = 'I_IsImported', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'I_IsImported'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Geimporteerd'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Geimporteerd' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Importé'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Importé' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'25TZ',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = '25TZ', fieldlength = 22, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Client'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Client' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Société'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Société' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Organizational entity within Tenant',
'25TZ',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Organizational entity within Tenant', entitytype = '25TZ', fieldlength = 22, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Organisatie'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisatie' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Organisation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'25TZ',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = '25TZ', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Gemaakt Op'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Gemaakt Op' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Créé'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Créé' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'25TZ',
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
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = '25TZ', fieldlength = 22, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Gemaakt Door'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Gemaakt Door' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Créée par'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Créée par' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'The record is active in the system',
'25TZ',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'The record is active in the system', entitytype = '25TZ', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Aktief'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Aktief' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Actif'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Actif' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'25TZ',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = '25TZ', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Gewijzigd Op'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Gewijzigd Op' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Modifié'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modifié' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'25TZ',
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
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = '25TZ', fieldlength = 22, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Gewijzigd Door'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Gewijzigd Door' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Modifié par'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modifié par' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Product, Service, Item',
'25TZ',
22,
'Identifies an item which is either purchased or sold in this organization.',
'Product',
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
'Y',
'',
'N',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Product, Service, Item', entitytype = '25TZ', fieldlength = 22, help = 'Identifies an item which is either purchased or sold in this organization.', name = 'Product', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'N', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ProductValue',(select AD_Element_ID from AD_Element where ColumnName = 'ProductValue'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Key of the Product',
'25TZ',
22,
'',
'Product Key',
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
where not exists (select 1 from AD_Column where ColumnName = 'ProductValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ProductValue'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Key of the Product', entitytype = '25TZ', fieldlength = 22, help = '', name = 'Product Key', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ProductValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Alleen Product Waarde'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Alleen Product Waarde' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Seulement avec les valeurs'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Seulement avec les valeurs' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'OrgValue',(select AD_Element_ID from AD_Element where ColumnName = 'OrgValue'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Key of the Organization',
'25TZ',
22,
'',
'Organization Key',
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
where not exists (select 1 from AD_Column where ColumnName = 'OrgValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'OrgValue'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Key of the Organization', entitytype = '25TZ', fieldlength = 22, help = '', name = 'Organization Key', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'OrgValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Organisatie Sleutel'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisatie Sleutel' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Clé Org'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clé Org' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Processed',(select AD_Element_ID from AD_Element where ColumnName = 'Processed'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'The document has been processed',
'25TZ',
1,
'The Processed checkbox indicates that a document has been processed.',
'Processed',
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
where not exists (select 1 from AD_Column where ColumnName = 'Processed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Processed'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = 'The document has been processed', entitytype = '25TZ', fieldlength = 1, help = 'The Processed checkbox indicates that a document has been processed.', name = 'Processed', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Processed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Verwerkt'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Verwerkt' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Traité'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Traité' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Processing',(select AD_Element_ID from AD_Element where ColumnName = 'Processing'),
(select AD_Process_ID from AD_Process where Value = 'Import_Shipment'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'25TZ',
1,
'',
'Process Now',
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
where not exists (select 1 from AD_Column where ColumnName = 'Processing'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Processing'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import_Shipment'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = '25TZ', fieldlength = 1, help = '', name = 'Process Now', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Processing'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Verwerk Nu'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Verwerk Nu' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Traiter maintenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Traiter maintenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'BPartnerValue',(select AD_Element_ID from AD_Element where ColumnName = 'BPartnerValue'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Key of the Business Partner',
'25TZ',
22,
'',
'Business Partner Key',
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
where not exists (select 1 from AD_Column where ColumnName = 'BPartnerValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'BPartnerValue'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Key of the Business Partner', entitytype = '25TZ', fieldlength = 22, help = '', name = 'Business Partner Key', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'BPartnerValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Relatie Zoeksleutel'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Relatie Zoeksleutel' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Clé tiers'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clé tiers' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Order_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Order',
'25TZ',
22,
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
'Order',
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
'Y',
'',
'N',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Order', entitytype = '25TZ', fieldlength = 22, help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', name = 'Order', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'N', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Verkoop Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Verkoop Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Ordre de vente'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ordre de vente' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_InOut_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_InOut_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Material Shipment Document',
'25TZ',
22,
'The Material Shipment / Receipt',
'Shipment/Receipt',
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
'Y',
'',
'N',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'M_InOut_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_InOut_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Material Shipment Document', entitytype = '25TZ', fieldlength = 22, help = 'The Material Shipment / Receipt', name = 'Shipment/Receipt', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'N', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_InOut_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Verzending / Ontvangst'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Verzending / Ontvangst' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Expédition/Réception'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Expédition/Réception' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'I_ErrorMsg',(select AD_Element_ID from AD_Element where ColumnName = 'I_ErrorMsg'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Messages generated from import process',
'25TZ',
2000,
'The Import Error Message displays any error messages generated during the import process.',
'Import Error Message',
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
where not exists (select 1 from AD_Column where ColumnName = 'I_ErrorMsg'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'I_ErrorMsg'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Messages generated from import process', entitytype = '25TZ', fieldlength = 2000, help = 'The Import Error Message displays any error messages generated during the import process.', name = 'Import Error Message', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'I_ErrorMsg'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'nl_NL', 'Y', 'Import Fout Melding'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Fout Melding' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')), 'fr_FR', 'Y', 'Message d''erreur lié à  l''import'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Message d''erreur lié à  l''import' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Import_Shipment_tab','Import Shipment',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Inout')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Inout')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Inout')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Inout'),
(select AD_Window_ID from AD_Window where Value = 'Import_Shipment'),
'',
'Import Shipment',
'25TZ',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'',
10,
0,
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
where not exists (select 1 from AD_Tab where Value = 'Import_Shipment_tab'  and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Import Shipment', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Inout')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Inout')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Inout')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Inout'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Import_Shipment'), commitwarning = '', description = 'Import Shipment', entitytype = '25TZ', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'Y', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Import_Shipment_tab'  and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,Description,Name,Help,CommitWarning) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')), 'nl_NL', 'Y', '','Import des réceptions','',''
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')) and ad_language = 'nl_NL');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Import des réceptions',Help = '',CommitWarning = '' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')) and ad_language = 'nl_NL';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,Description,Name,Help,CommitWarning) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')), 'fr_FR', 'Y', '','Import des réceptions','',''
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Import des réceptions',Help = '',CommitWarning = '' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Data processing'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Active',
'The record is active in the system',
1,
'',
'25TZ',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Data processing'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = '25TZ', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Aktief','Geeft aan of het record aktief is in het systeem','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but availabe for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Aktief',Description = 'Geeft aan of het record aktief is in het systeem',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but availabe for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Actif','L''enregistrement est actif dans le système','Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Actif',Description = 'L''enregistrement est actif dans le système',Help = 'Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Delivery'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Business Partner',
'Identifies a Business Partner',
22,
'',
'25TZ',
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Delivery'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Business Partner', description = 'Identifies a Business Partner', displaylength = 22, displaylogic = '', entitytype = '25TZ', help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Relatie','Geeft een relatie aan.','Een relatie is iedereen met wie u interactie heeft. Dit omvat bijvoorbeeld leveranciers, klanten, peroneelsleden en verkopers.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Relatie',Description = 'Geeft een relatie aan.',Help = 'Een relatie is iedereen met wie u interactie heeft. Dit omvat bijvoorbeeld leveranciers, klanten, peroneelsleden en verkopers.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Tiers','Identifie un tiers','Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut Ãªtre un fournisseur, un client, un employé ou un agent commercial.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tiers',Description = 'Identifie un tiers',Help = 'Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut Ãªtre un fournisseur, un client, un employé ou un agent commercial.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Delivery'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Business Partner Key',
'Key of the Business Partner',
60,
'',
'25TZ',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Delivery'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Business Partner Key', description = 'Key of the Business Partner', displaylength = 60, displaylogic = '', entitytype = '25TZ', help = '', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Relatie Zoeksleutel','Zoeksleutel van deze relatie',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Relatie Zoeksleutel',Description = 'Zoeksleutel van deze relatie',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Clé tiers','Clé du tiers',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clé tiers',Description = 'Clé du tiers',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BPartnerValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Data processing'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'I_IsImported',
'',
1,
'',
'25TZ',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Data processing'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'I_IsImported', description = '', displaylength = 1, displaylogic = '', entitytype = '25TZ', help = '', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Geimporteerd','Deze import is verwerkt.','De geimporteerd checkbox geeft aan of deze import is verwerkt.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Geimporteerd',Description = 'Deze import is verwerkt.',Help = 'De geimporteerd checkbox geeft aan of deze import is verwerkt.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Importé','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Importé',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Data processing'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Import Error Message',
'Messages generated from import process',
2000,
'',
'25TZ',
'The Import Error Message displays any error messages generated during the import process.',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Data processing'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Import Error Message', description = 'Messages generated from import process', displaylength = 2000, displaylogic = '', entitytype = '25TZ', help = 'The Import Error Message displays any error messages generated during the import process.', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Import Fout Melding','Melding uit het import proces.','Het import fout melding veld geeft foutmeldingen die gedurende het import proces worden gegenereerd.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Fout Melding',Description = 'Melding uit het import proces.',Help = 'Het import fout melding veld geeft foutmeldingen die gedurende het import proces worden gegenereerd.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Message d''erreur lié à  l''import','Message généré lors de l''import des données','Affiche les messages d''erreurs générés lors de l''import des données'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Message d''erreur lié à  l''import',Description = 'Message généré lors de l''import des données',Help = 'Affiche les messages d''erreurs générés lors de l''import des données' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Import Shipment',
'Import Shipment',
22,
'',
'25TZ',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Import Shipment', description = 'Import Shipment', displaylength = 22, displaylogic = '', entitytype = '25TZ', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Import Shipment','Import Shipment',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Shipment',Description = 'Import Shipment',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Import Shipment','Import Shipment',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Shipment',Description = 'Import Shipment',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Inout_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Delivery'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Order',
'Order',
22,
'',
'25TZ',
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
'',
70,
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
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Delivery'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Order', description = 'Order', displaylength = 22, displaylogic = '', entitytype = '25TZ', help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Verkoop Order','Verkoop Order','The Sales Order ID is a unique identifier of a Sales Order.  This is controlled by the document sequence for this document type.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Verkoop Order',Description = 'Verkoop Order',Help = 'The Sales Order ID is a unique identifier of a Sales Order.  This is controlled by the document sequence for this document type.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Ordre d''Achat','Ordre d''Achat','Identificateur unique d''une commande. Contrôlé via les documents, et dépendant du type de ceux-ci (compteur différent par type de document)'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ordre d''Achat',Description = 'Ordre d''Achat',Help = 'Identificateur unique d''une commande. Contrôlé via les documents, et dépendant du type de ceux-ci (compteur différent par type de document)' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Delivery'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'25TZ',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Delivery'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = '25TZ', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Organisatie','Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisatie',Description = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Help = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Organisation','Etablissement au sein d''une société','une unité est une partie d''une société, (établissement, succursale, bureau, etc...).'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisation',Description = 'Etablissement au sein d''une société',Help = 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Delivery'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Organization Key',
'Key of the Organization',
60,
'',
'25TZ',
'',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Delivery'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Organization Key', description = 'Key of the Organization', displaylength = 60, displaylogic = '', entitytype = '25TZ', help = '', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Organisatie Sleutel','Sleutel van de organisatie',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisatie Sleutel',Description = 'Sleutel van de organisatie',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Clé Org','Clé de l''organisation',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clé Org',Description = 'Clé de l''organisation',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'OrgValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Data processing'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Import Shipment',
'Import Shipment',
1,
'',
'25TZ',
'',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Data processing'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Import Shipment', description = 'Import Shipment', displaylength = 1, displaylogic = '', entitytype = '25TZ', help = '', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Import des expéditions','Import des expéditions',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import des expéditions',Description = 'Import des expéditions',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Import des réceptions','Import des réceptions',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import des réceptions',Description = 'Import des réceptions',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Data processing'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Processed',
'The document has been processed',
1,
'',
'25TZ',
'The Processed checkbox indicates that a document has been processed.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Data processing'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Processed', description = 'The document has been processed', displaylength = 1, displaylogic = '', entitytype = '25TZ', help = 'The Processed checkbox indicates that a document has been processed.', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Verwerkt','Het document is verwerkt.','The Processed checkbox indicates that a document has been processed. De verwerkt checkbox geeft aan dat een document is verwerkt.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Verwerkt',Description = 'Het document is verwerkt.',Help = 'The Processed checkbox indicates that a document has been processed. De verwerkt checkbox geeft aan dat een document is verwerkt.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Traité','Ce document a été traité','Indique que ce document a été traité.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Traité',Description = 'Ce document a été traité',Help = 'Indique que ce document a été traité.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Line'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Product',
'Product, Service, Item',
22,
'',
'25TZ',
'Identifies an item which is either purchased or sold in this organization.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Line'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Product', description = 'Product, Service, Item', displaylength = 22, displaylogic = '', entitytype = '25TZ', help = 'Identifies an item which is either purchased or sold in this organization.', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Product','Product, service of item.','Geeft een item aan dat  ofwel gekocht, ofwel verkocht wordt binnen deze organisatie.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product',Description = 'Product, service of item.',Help = 'Geeft een item aan dat  ofwel gekocht, ofwel verkocht wordt binnen deze organisatie.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Article','Produit service etc?','Identifie un article vendu ou acheté par cette organisation.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Article',Description = 'Produit service etc?',Help = 'Identifie un article vendu ou acheté par cette organisation.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Line'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Product Key',
'Key of the Product',
60,
'',
'25TZ',
'',
'',
100,
0,
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Line'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Product Key', description = 'Key of the Product', displaylength = 60, displaylogic = '', entitytype = '25TZ', help = '', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Alleen Product Waarde','Genereer een tellijst voor alleen deze product waarde (u kunt % gebruiken).',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Alleen Product Waarde',Description = 'Genereer een tellijst voor alleen deze product waarde (u kunt % gebruiken).',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Clé Article','Générer une liste de comptage uniquement pour les valeurs (vous pouvez utiliser %)',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clé Article',Description = 'Générer une liste de comptage uniquement pour les valeurs (vous pouvez utiliser %)',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Delivery'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'PurchaseOrderNO',
'',
1,
'',
'25TZ',
'',
'',
80,
0,
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Delivery'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'PurchaseOrderNO', description = '', displaylength = 1, displaylogic = '', entitytype = '25TZ', help = '', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'PurchaseOrderNO','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PurchaseOrderNO',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Clé Ordre d''Achat','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clé Ordre d''Achat',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Line'),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Quantity Ordered',
'Ordered Quantity',
22,
'',
'25TZ',
'The Ordered Quantity indicates the quantity of a product that was ordered.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Line'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Quantity Ordered', description = 'Ordered Quantity', displaylength = 22, displaylogic = '', entitytype = '25TZ', help = 'The Ordered Quantity indicates the quantity of a product that was ordered.', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Bestelde Hoeveelheid','Bestelde Hoeveelheid.','Bestelde hoeveelheid geeft aan hoeveel er van een product is besteld.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Bestelde Hoeveelheid',Description = 'Bestelde Hoeveelheid.',Help = 'Bestelde hoeveelheid geeft aan hoeveel er van een product is besteld.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Quantité commandée','Quantité commandée','Indique la quantité commandée pour un article.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantité commandée',Description = 'Quantité commandée',Help = 'Indique la quantité commandée pour un article.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Shipment/Receipt',
'Material Shipment Document',
22,
'',
'25TZ',
'The Material Shipment / Receipt',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Shipment/Receipt', description = 'Material Shipment Document', displaylength = 22, displaylogic = '', entitytype = '25TZ', help = 'The Material Shipment / Receipt', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Verzending / Ontvangst','Verzending / ontvangst document.','Het verzending / ontvangst document volgnummer geeft een uniek document voor deze verzending / ontvangst aan.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Verzending / Ontvangst',Description = 'Verzending / ontvangst document.',Help = 'Het verzending / ontvangst document volgnummer geeft een uniek document voor deze verzending / ontvangst aan.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Expédition/Réception','Document d''expédition ou de réception','L''ID expédition / réception identifie de manière unique l''expédition ou la réception'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Expédition/Réception',Description = 'Document d''expédition ou de réception',Help = 'L''ID expédition / réception identifie de manière unique l''expédition ou la réception' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_InOut_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'25TZ',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import_Shipment_tab' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import_Shipment')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = '25TZ', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'nl_NL', 'Y', 'Client','Client voor deze installatie.','Een client is een bedrijf of een rechtspersoon.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Client',Description = 'Client voor deze installatie.',Help = 'Een client is een bedrijf of een rechtspersoon.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))), 'fr_FR', 'Y', 'Société','Nom de l''entreprise titulaire de la base de données (DB)',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Société',Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Inout')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import_Shipment_tab' and ad_window_id in (select ad_window_id from ad_window where value = 'Import_Shipment'))) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'MovementDate',(select AD_Element_ID from AD_Element where ColumnName = 'MovementDate'),
(select AD_Process_ID from AD_Process where Value = 'Import_Shipment'),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Movement Date',
'sysdate',
'',
'Date a product was moved in or out of inventory',
'25TZ',
7,
'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'MovementDate'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'MovementDate'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import_Shipment'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Movement Date', defaultvalue = 'sysdate', defaultvalue2 = '', description = 'Date a product was moved in or out of inventory', entitytype = '25TZ', fieldlength = 7, help = 'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'MovementDate'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Name,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='MovementDate' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')), 'nl_NL', 'Y', 'De datum dat een product aan de voorraad werd toegevoegd of onttrokken..','Voorraad Mutatie Datum','De voorraad mutatie datum geeft de datum aan dat een product aan de voorraad werd toegevoegd of er van af werd gehaald.'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='MovementDate' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'De datum dat een product aan de voorraad werd toegevoegd of onttrokken..',Name = 'Voorraad Mutatie Datum',Help = 'De voorraad mutatie datum geeft de datum aan dat een product aan de voorraad werd toegevoegd of er van af werd gehaald.' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='MovementDate' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Name,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='MovementDate' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')), 'fr_FR', 'Y', 'Date à  laquelle un article a été rentré ou sorti du stock','Date mouvement','Indique la date à  laquelle un article a été rentré ou sorti du stock, suite à  une expédition, une livraison ou à  l''inventaire.'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='MovementDate' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date à  laquelle un article a été rentré ou sorti du stock',Name = 'Date mouvement',Help = 'Indique la date à  laquelle un article a été rentré ou sorti du stock, suite à  une expédition, une livraison ou à  l''inventaire.' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='MovementDate' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_DocType_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_DocType_ID'),
(select AD_Process_ID from AD_Process where Value = 'Import_Shipment'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = 'C_DocType'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_DocType Inout'),
'Document Type',
'',
'',
'Document type or rules',
'25TZ',
7,
'The Document Type determines document sequence and processing rules',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_DocType_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_DocType_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import_Shipment'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_DocType'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_DocType Inout'), name = 'Document Type', defaultvalue = '', defaultvalue2 = '', description = 'Document type or rules', entitytype = '25TZ', fieldlength = 7, help = 'The Document Type determines document sequence and processing rules', seqno = 30, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_DocType_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Name,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_DocType_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')), 'nl_NL', 'Y', 'Document type of verwerekingsregels','Document Type','Het document type geeft de document volgnummering en verwerkingsregels aan.'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_DocType_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type of verwerekingsregels',Name = 'Document Type',Help = 'Het document type geeft de document volgnummering en verwerkingsregels aan.' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_DocType_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Name,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_DocType_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')), 'fr_FR', 'Y', 'Type Document','Type document','Détermine la séquence du document  et le mode de traitement.'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_DocType_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type Document',Name = 'Type document',Help = 'Détermine la séquence du document  et le mode de traitement.' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_DocType_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'DocAction',(select AD_Element_ID from AD_Element where ColumnName = 'DocAction'),
(select AD_Process_ID from AD_Process where Value = 'Import_Shipment'),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = '_Document Action'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'List - DocAction - Complete or Prepare'),
'Document Action',
'',
'',
'The targeted status of the document',
'25TZ',
0,
'You find the current status in the Document Status field. The options are listed in a popup',
40,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'DocAction'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DocAction'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import_Shipment'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = '_Document Action'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'List - DocAction - Complete or Prepare'), name = 'Document Action', defaultvalue = '', defaultvalue2 = '', description = 'The targeted status of the document', entitytype = '25TZ', fieldlength = 0, help = 'You find the current status in the Document Status field. The options are listed in a popup', seqno = 40, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'DocAction'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Name,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DocAction' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')), 'nl_NL', 'Y', 'De gewenste status van het document.','Document Actie','U vindt de huidige status van het document in het document status veld. De optie worden weergegeven in een pop-up venster.'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DocAction' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'De gewenste status van het document.',Name = 'Document Actie',Help = 'U vindt de huidige status van het document in het document status veld. De optie worden weergegeven in een pop-up venster.' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DocAction' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Name,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DocAction' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')), 'fr_FR', 'Y', 'Statut final du document','Document cible','Vous trouverez le statut en cours au niveau du document. Les options sont données au niveau du popup.'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DocAction' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Statut final du document',Name = 'Document cible',Help = 'Vous trouverez le statut en cours au niveau du document. Les options sont données au niveau du popup.' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DocAction' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = 'Import_Shipment'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'Tenant',
'',
'',
'Identifies the Client/Tenant for this installation.',
'25TZ',
7,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import_Shipment'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), name = 'Tenant', defaultvalue = '', defaultvalue2 = '', description = 'Identifies the Client/Tenant for this installation.', entitytype = '25TZ', fieldlength = 7, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Name,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')), 'nl_NL', 'Y', 'Client voor deze installatie.','Client','Een client is een bedrijf of een rechtspersoon.'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Client voor deze installatie.',Name = 'Client',Help = 'Een client is een bedrijf of een rechtspersoon.' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Name,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')), 'fr_FR', 'Y', 'Nom de l''entreprise titulaire de la base de données (DB)','Société',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Name = 'Société',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Shipment')) and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Import_shipment','Import Shipment',
'W',
'Import Shipment',
'25TZ',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'Import_Shipment'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Import_shipment' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Import Shipment', action = 'W', description = 'Import Shipment', entitytype = '25TZ', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Import_Shipment'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Import_shipment' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Import_shipment'), 'nl_NL', 'Y', 'Import des réceptions','Import des réceptions'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import_shipment') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Import des réceptions',Name = 'Import des réceptions' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import_shipment') and ad_language = 'nl_NL';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Import_shipment'), 'fr_FR', 'Y', 'Import des réceptions','Import des réceptions'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import_shipment') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Import des réceptions',Name = 'Import des réceptions' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import_shipment') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '71487 - Réception par import de fichier et matchnig avec OA', description = 'Evolution #71487', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361.22.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '25TZ' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '2', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = 'Import Shipment', entitytype = '25TZ', help = '', importtable = '', loadseq = 145, name = 'Import Shipment', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Import_Shipment'), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'I_Inout' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Import_shipment') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Import_shipment')); 
