alter table Z_TYPEECHEANCE add C_DocType_ID number(10);
alter table AD_OrgInfo add TelFree varchar2(50);
alter table Z_S_Famille add IsOrderBy number(10) default 99;

insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG35','EG35 - New fields',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EG35' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG35 - New fields', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG35' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Facture EGGO','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'ru.compiere.report.RusReportStarter',
'',
'EG35',
'',
'EGGO_Invoice.jasper',
'',
'Facture EGGO',
'',
'Y',
'N',
'N',
'Y',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
(select AD_BView_ID from AD_BView where Name = ''),
(select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Process where Value = 'Facture EGGO' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'ru.compiere.report.RusReportStarter', description = '', entitytype = 'EG35', help = '', jasperreport = 'EGGO_Invoice.jasper', procedurename = '', name = 'Facture EGGO', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'Y', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Facture EGGO' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Facture EGGO'), 'nl_NL', 'Y', '','','Facture EGGO'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Facture EGGO') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Facture EGGO' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Facture EGGO') and ad_language = 'nl_NL';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Facture EGGO'), 'fr_FR', 'Y', '','','Facture EGGO'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Facture EGGO') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Facture EGGO' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Facture EGGO') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'TelFree','',
'EG35',
'',
'Tel Gratuit',
'',
'',
'',
'',
'Tel Gratuit',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'TelFree' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG35', help = '', name = 'Tel Gratuit', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Tel Gratuit', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'TelFree' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TelFree'), 'nl_NL', 'Y', '','','Tel Gratuit','','','','','Tel Gratuit'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelFree') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tel Gratuit',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Tel Gratuit' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelFree') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TelFree'), 'fr_FR', 'Y', '','','Tel Gratuit','','','','','Tel Gratuit'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelFree') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tel Gratuit',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Tel Gratuit' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TelFree') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'TelFree',(select AD_Element_ID from AD_Element where ColumnName = 'TelFree'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_OrgInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EG35',
20,
'',
'Tel Gratuit',
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
where not exists (select 1 from AD_Column where ColumnName = 'TelFree'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'TelFree'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_OrgInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EG35', fieldlength = 20, help = '', name = 'Tel Gratuit', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'TelFree'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')), 'nl_NL', 'Y', 'Tel Gratuit'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tel Gratuit' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')), 'fr_FR', 'Y', 'Tel Gratuit'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tel Gratuit' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsOrderBy',(select AD_Element_ID from AD_Element where ColumnName = 'IsOrderBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_S_Famille'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'99',
'Include in sort order',
'EG35',
10,
'The records are ordered by the value of this column. If a column is used for grouping, it needs to be included in the sort order as well.',
'Order by',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsOrderBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsOrderBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_S_Famille'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '99', description = 'Include in sort order', entitytype = 'EG35', fieldlength = 10, help = 'The records are ordered by the value of this column. If a column is used for grouping, it needs to be included in the sort order as well.', name = 'Order by', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsOrderBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')), 'nl_NL', 'Y', 'Groeperen per'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Groeperen per' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')), 'fr_FR', 'Y', 'Trié par'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Trié par' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_DocType_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_DocType_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Document type or rules',
'EG35',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_DocType_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_DocType_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Document type or rules', entitytype = 'EG35', fieldlength = 22, help = 'The Document Type determines document sequence and processing rules', name = 'Document Type', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_DocType_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_NL', 'Y', 'Document Type'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Type' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'Document Type'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Type' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Organization Info_170' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'Tel Gratuit',
'',
0,
'',
'EG35',
'',
'',
10030,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Organization Info_170' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'Tel Gratuit', description = '', displaylength = 0, displaylogic = '', entitytype = 'EG35', help = '', obscuretype = '', seqno = 10030, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_NL', 'Y', '','','Tel Gratuit'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tel Gratuit' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','Tel Gratuit'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tel Gratuit' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TelFree' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_OrgInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization Info_170' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sous_Famille' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')),
'Order by',
'Include in sort order',
10,
'',
'EG35',
'The records are ordered by the value of this column. If a column is used for grouping, it needs to be included in the sort order as well.',
'',
0,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sous_Famille' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')), name = 'Order by', description = 'Include in sort order', displaylength = 10, displaylogic = '', entitytype = 'EG35', help = 'The records are ordered by the value of this column. If a column is used for grouping, it needs to be included in the sort order as well.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'nl_NL', 'Y', 'Kolom meenemen in groepering','Kolommen die worden gebruikt voor groeperen dienen ook in de sorteervolgorder te worden opgenomen.','Groeperen per'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Kolom meenemen in groepering',Help = 'Kolommen die worden gebruikt voor groeperen dienen ook in de sorteervolgorder te worden opgenomen.',Name = 'Groeperen per' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'fr_FR', 'Y', 'à inclure dans le tri','Les enregistrements sont triés par la valeur de cette colonne. Si une colonne est utilisée au niveau des regroupements, il faut également qu''il soit spécifié au niveau du tri','Trié par'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'à inclure dans le tri',Help = 'Les enregistrements sont triés par la valeur de cette colonne. Si une colonne est utilisée au niveau des regroupements, il faut également qu''il soit spécifié au niveau du tri',Name = 'Trié par' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsOrderBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')),
'Document Type',
'Document type or rules',
22,
'',
'EG35',
'The Document Type determines document sequence and processing rules',
'',
0,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')), name = 'Document Type', description = 'Document type or rules', displaylength = 22, displaylogic = '', entitytype = 'EG35', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'nl_NL', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'fr_FR', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG35 - New fields', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG35' ;

