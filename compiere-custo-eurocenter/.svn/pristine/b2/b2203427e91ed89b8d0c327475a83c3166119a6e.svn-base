insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG39','EG39 - 29/08',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EG39' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG39 - 29/08', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG39' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Import BPartner Custo','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'org.compiere.process.ZImportBPartner',
'',
'EG39',
'',
'',
'',
'Import BPartner Custo',
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
where not exists (select 1 from AD_Process where Value = 'Import BPartner Custo' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'org.compiere.process.ZImportBPartner', description = '', entitytype = 'EG39', help = '', jasperreport = '', procedurename = '', name = 'Import BPartner Custo', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Import BPartner Custo' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Import BPartner Custo'), 'nl_NL', 'Y', '','','Import BPartner Custo'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import BPartner Custo') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import BPartner Custo' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import BPartner Custo') and ad_language = 'nl_NL';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Import BPartner Custo'), 'fr_FR', 'Y', '','','Import BPartner Custo'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import BPartner Custo') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import BPartner Custo' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import BPartner Custo') and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Traitement des inventaires','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.ZProcessInventory',
'',
'EG39',
'',
'',
'',
'Traitement des inventaires',
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
where not exists (select 1 from AD_Process where Value = 'Traitement des inventaires' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.ZProcessInventory', description = '', entitytype = 'EG39', help = '', jasperreport = '', procedurename = '', name = 'Traitement des inventaires', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Traitement des inventaires' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Traitement des inventaires'), 'nl_NL', 'Y', '','','Traitement des inventaires'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Traitement des inventaires') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Traitement des inventaires' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Traitement des inventaires') and ad_language = 'nl_NL';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Traitement des inventaires'), 'fr_FR', 'Y', '','','Traitement des inventaires'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Traitement des inventaires') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Traitement des inventaires' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Traitement des inventaires') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsTaxIDUpdateable','',
'EG39',
'',
'IsTaxIDUpdateable',
'',
'',
'',
'',
'IsTaxIDUpdateable',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsTaxIDUpdateable' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG39', help = '', name = 'IsTaxIDUpdateable', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'IsTaxIDUpdateable', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsTaxIDUpdateable' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsTaxIDUpdateable'), 'nl_NL', 'Y', '','','IsTaxIDUpdateable','','','','','IsTaxIDUpdateable'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTaxIDUpdateable') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsTaxIDUpdateable',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsTaxIDUpdateable' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTaxIDUpdateable') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsTaxIDUpdateable'), 'fr_FR', 'Y', '','','IsTaxIDUpdateable','','','','','IsTaxIDUpdateable'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTaxIDUpdateable') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsTaxIDUpdateable',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsTaxIDUpdateable' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTaxIDUpdateable') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Language',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Language'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_Language'),
(select AD_Table_ID from AD_Table where TableName = 'I_BPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Language for this entity',
'EG39',
10,
'The Language identifies the language to use for display and formatting',
'Language',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Language'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Language'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_Language'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_BPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Language for this entity', entitytype = 'EG39', fieldlength = 10, help = 'The Language identifies the language to use for display and formatting', name = 'Language', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Language'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Language' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')), 'nl_NL', 'Y', 'Language'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Language' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Language' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Language' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Language' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')), 'fr_FR', 'Y', 'Language'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Language' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Language' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Language' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'OldValue',(select AD_Element_ID from AD_Element where ColumnName = 'OldValue'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'The old file data',
'EG39',
50,
'Old data overwritten in the field',
'Old Value',
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
where not exists (select 1 from AD_Column where ColumnName = 'OldValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'OldValue'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'The old file data', entitytype = 'EG39', fieldlength = 50, help = 'Old data overwritten in the field', name = 'Old Value', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'OldValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'nl_NL', 'Y', 'Old Value'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Old Value' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'fr_FR', 'Y', 'Old Value'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Old Value' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'OldValue',(select AD_Element_ID from AD_Element where ColumnName = 'OldValue'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'The old file data',
'EG39',
50,
'Old data overwritten in the field',
'Old Value',
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
where not exists (select 1 from AD_Column where ColumnName = 'OldValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'OldValue'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'The old file data', entitytype = 'EG39', fieldlength = 50, help = 'Old data overwritten in the field', name = 'Old Value', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'OldValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')), 'nl_NL', 'Y', 'Old Value'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Old Value' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')), 'fr_FR', 'Y', 'Old Value'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Old Value' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DeliveryViaRule',(select AD_Element_ID from AD_Element where ColumnName = 'DeliveryViaRule'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'C_Order DeliveryViaRule'),
(select AD_Table_ID from AD_Table where TableName = 'I_BPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'How the order will be delivered',
'EG39',
1,
'The Shipping Method indicates how the products should be delivered. For example, will the order be picked up or shipped.',
'Shipping Method',
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
where not exists (select 1 from AD_Column where ColumnName = 'DeliveryViaRule'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DeliveryViaRule'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_Order DeliveryViaRule'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_BPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'How the order will be delivered', entitytype = 'EG39', fieldlength = 1, help = 'The Shipping Method indicates how the products should be delivered. For example, will the order be picked up or shipped.', name = 'Shipping Method', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DeliveryViaRule'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DeliveryViaRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')), 'nl_NL', 'Y', 'Shipping Method'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DeliveryViaRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Shipping Method' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DeliveryViaRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DeliveryViaRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')), 'fr_FR', 'Y', 'Shipping Method'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DeliveryViaRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Shipping Method' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DeliveryViaRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'OldValue',(select AD_Element_ID from AD_Element where ColumnName = 'OldValue'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_BPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'The old file data',
'EG39',
50,
'Old data overwritten in the field',
'Old Value',
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
where not exists (select 1 from AD_Column where ColumnName = 'OldValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'OldValue'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_BPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'The old file data', entitytype = 'EG39', fieldlength = 50, help = 'Old data overwritten in the field', name = 'Old Value', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'OldValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')), 'nl_NL', 'Y', 'Old Value'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Old Value' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')), 'fr_FR', 'Y', 'Old Value'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Old Value' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='OldValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_BPartner')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsTaxIDUpdateable',(select AD_Element_ID from AD_Element where ColumnName = 'IsTaxIDUpdateable'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EG39',
1,
'',
'IsTaxIDUpdateable',
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
'(Select case when cb.TaxID =''AC'' then ''Y''  when cb.TaxID is null then  ''Y'' else ''N'' end  from C_BPartner cb where C_BPartner.C_BPartner_ID = cb.C_BPartner_ID)',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsTaxIDUpdateable'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsTaxIDUpdateable'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EG39', fieldlength = 1, help = '', name = 'IsTaxIDUpdateable', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '(Select case when cb.TaxID =''AC'' then ''Y''  when cb.TaxID is null then  ''Y'' else ''N'' end  from C_BPartner cb where C_BPartner.C_BPartner_ID = cb.C_BPartner_ID)', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsTaxIDUpdateable'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'nl_NL', 'Y', 'IsTaxIDUpdateable'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsTaxIDUpdateable' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'fr_FR', 'Y', 'IsTaxIDUpdateable'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsTaxIDUpdateable' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')),
'IsTaxIDUpdateable',
'',
0,
'1=2',
'EG39',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')), name = 'IsTaxIDUpdateable', description = '', displaylength = 0, displaylogic = '1=2', entitytype = 'EG39', help = '', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'nl_NL', 'Y', '','','IsTaxIDUpdateable'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsTaxIDUpdateable' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'fr_FR', 'Y', '','','IsTaxIDUpdateable'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsTaxIDUpdateable' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220_1000120' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'IsTaxIDUpdateable',
'',
0,
'1=2',
'EG39',
'',
'',
130,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220_1000120' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'IsTaxIDUpdateable', description = '', displaylength = 0, displaylogic = '1=2', entitytype = 'EG39', help = '', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', '','','IsTaxIDUpdateable'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsTaxIDUpdateable' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', '','','IsTaxIDUpdateable'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsTaxIDUpdateable' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTaxIDUpdateable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = 'Import BPartner Custo'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Tenant',
'',
'',
'',
'EG39',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import BPartner Custo'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Tenant', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG39', fieldlength = 0, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo')), 'nl_NL', 'Y', '','','AD_Client_ID'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'AD_Client_ID' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo')), 'fr_FR', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'DeleteOldImported',(select AD_Element_ID from AD_Element where ColumnName = 'DeleteOldImported'),
(select AD_Process_ID from AD_Process where Value = 'Import BPartner Custo'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Delete old imported records',
'N',
'',
'Before processing delete old imported records in the import table',
'EG39',
0,
'Deletes any imported records that are on the import table',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'DeleteOldImported'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DeleteOldImported'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import BPartner Custo'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Delete old imported records', defaultvalue = 'N', defaultvalue2 = '', description = 'Before processing delete old imported records in the import table', entitytype = 'EG39', fieldlength = 0, help = 'Deletes any imported records that are on the import table', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'DeleteOldImported'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo')), 'nl_NL', 'Y', 'Before processing delete old imported records in the import table','Deletes any imported records that are on the import table','Delete old imported records'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Before processing delete old imported records in the import table',Help = 'Deletes any imported records that are on the import table',Name = 'Delete old imported records' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo')), 'fr_FR', 'Y', 'Avant de traiter les enregistrements, suppression des anciens enregistrements importés','','Suppression des anciens enregistrements importés'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Avant de traiter les enregistrements, suppression des anciens enregistrements importés',Help = '',Name = 'Suppression des anciens enregistrements importés' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DeleteOldImported' and ad_process_id in (select ad_process_id from ad_process where value = 'Import BPartner Custo')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = 'Traitement des inventaires'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Magasin',
'',
'',
'',
'EG39',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Traitement des inventaires'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Magasin', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG39', fieldlength = 0, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')), 'nl_NL', 'Y', '','','Magasin'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')), 'fr_FR', 'Y', '','','Magasin'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'M_Warehouse_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Warehouse_ID'),
(select AD_Process_ID from AD_Process where Value = 'Traitement des inventaires'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Dépot',
'',
'',
'',
'EG39',
0,
'',
20,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'M_Warehouse_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Warehouse_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Traitement des inventaires'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Dépot', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG39', fieldlength = 0, help = '', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'M_Warehouse_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Warehouse_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')), 'nl_NL', 'Y', '','','Dépot'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Warehouse_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Dépot' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Warehouse_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Warehouse_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')), 'fr_FR', 'Y', '','','Dépot'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Warehouse_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Dépot' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Warehouse_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_DocType_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_DocType_ID'),
(select AD_Process_ID from AD_Process where Value = 'Traitement des inventaires'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_DocType Material Inventory'),
'Type de document',
'',
'',
'',
'EG39',
0,
'',
5,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_DocType_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_DocType_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Traitement des inventaires'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_DocType Material Inventory'), name = 'Type de document', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG39', fieldlength = 0, help = '', seqno = 5, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_DocType_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_DocType_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')), 'nl_NL', 'Y', '','','Type de document'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_DocType_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Type de document' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_DocType_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_DocType_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')), 'fr_FR', 'Y', '','','Type de document'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_DocType_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Type de document' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_DocType_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'ValidFrom',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Traitement des inventaires'),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Date d''inventaire',
'',
'',
'',
'EG39',
0,
'',
40,
'',
'',
'',
'Y',
'Y',
'N',
'Y',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'ValidFrom'  and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Traitement des inventaires'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Date d''inventaire', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG39', fieldlength = 0, help = '', seqno = 40, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'Y', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'ValidFrom'  and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ValidFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')), 'nl_NL', 'Y', '','','Date d''inventaire'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ValidFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Date d''inventaire' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ValidFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ValidFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')), 'fr_FR', 'Y', '','','Date d''inventaire'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ValidFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Date d''inventaire' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ValidFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'M_Inventory_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Traitement des inventaires'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Inventaire spécifique',
'',
'',
'',
'EG39',
0,
'',
30,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'M_Inventory_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Traitement des inventaires'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Inventaire spécifique', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG39', fieldlength = 0, help = '', seqno = 30, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'M_Inventory_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Inventory_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')), 'nl_NL', 'Y', '','','Inventaire spécifique'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Inventory_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Inventaire spécifique' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Inventory_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Inventory_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')), 'fr_FR', 'Y', '','','Inventaire spécifique'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Inventory_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Inventaire spécifique' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_Inventory_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Traitement des inventaires')) and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Traitement des inventaires','Traitement des inventaires',
'P',
'',
'EG39',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'Traitement des inventaires'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Traitement des inventaires' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Traitement des inventaires', action = 'P', description = '', entitytype = 'EG39', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Traitement des inventaires'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Traitement des inventaires' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Traitement des inventaires'), 'nl_NL', 'Y', '','Traitement des inventaires'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Traitement des inventaires') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Traitement des inventaires' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Traitement des inventaires') and ad_language = 'nl_NL';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Traitement des inventaires'), 'fr_FR', 'Y', '','Traitement des inventaires'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Traitement des inventaires') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Traitement des inventaires' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Traitement des inventaires') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG39 - 29/08', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG39' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Traitement des inventaires') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Traitement des inventaires')); 

