insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'0776','34776 - Bouton charge change sur ligne extrait bancaire',
'',
'',
'Y',
'',
'',
'',
'N',
'',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '0776' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '34776 - Bouton charge change sur ligne extrait bancaire', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '0776' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'ZChargeChangeBkStatement','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.process.ZChargeChangeBkStatement',
'',
'0776',
'',
'',
'',
'ZChargeChangeBkStatement',
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
where not exists (select 1 from AD_Process where Value = 'ZChargeChangeBkStatement' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.process.ZChargeChangeBkStatement', description = '', entitytype = '0776', help = '', jasperreport = '', procedurename = '', name = 'ZChargeChangeBkStatement', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'ZChargeChangeBkStatement' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ZChargeChangeBkStatement'), 'fr_FR', 'Y', '','','ZChargeChangeBkStatement'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZChargeChangeBkStatement') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ZChargeChangeBkStatement' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZChargeChangeBkStatement') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZChargeChange',(select AD_Element_ID from AD_Element where ColumnName = 'ZChargeChange'),
(select AD_Process_ID from AD_Process where Value = 'ZChargeChangeBkStatement'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatementLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'0776',
1,
'',
'Change Charge',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZChargeChange'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZChargeChange'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ZChargeChangeBkStatement'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankStatementLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '0776', fieldlength = 1, help = '', name = 'Change Charge', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZChargeChange'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZChargeChange' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')), 'fr_FR', 'Y', 'Changer Code Imputation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZChargeChange' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Changer Code Imputation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZChargeChange' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZChargeChange' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Statement Line_329' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')),
'Change Charge',
'',
0,
'@ChargeAmt@!0',
'0776',
'',
'',
155,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZChargeChange' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Statement Line_329' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Statement Line_329' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank Statement_194')), name = 'Change Charge', description = '', displaylength = 0, displaylogic = '@ChargeAmt@!0', entitytype = '0776', help = '', obscuretype = '', seqno = 155, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZChargeChange' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Statement Line_329' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZChargeChange' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Statement Line_329' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))), 'fr_FR', 'Y', '','','Change Charge'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZChargeChange' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Statement Line_329' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Change Charge' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZChargeChange' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Statement Line_329' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank Statement_194'))) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_Charge_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Charge_ID'),
(select AD_Process_ID from AD_Process where Value = 'ZChargeChangeBkStatement'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Charge',
'',
'',
'Additional document charges',
'0776',
0,
'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_Charge_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZChargeChangeBkStatement'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Charge_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ZChargeChangeBkStatement'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Charge', defaultvalue = '', defaultvalue2 = '', description = 'Additional document charges', entitytype = '0776', fieldlength = 0, help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_Charge_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZChargeChangeBkStatement');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Charge_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZChargeChangeBkStatement')), 'fr_FR', 'Y', 'Charge supplémentaires du document','Indique les types de charge supplémentaires tels que l''emballage, la manutention, le stockage, etc.','Code Imputation'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Charge_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZChargeChangeBkStatement')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Charge supplémentaires du document',Help = 'Indique les types de charge supplémentaires tels que l''emballage, la manutention, le stockage, etc.',Name = 'Code Imputation' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Charge_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZChargeChangeBkStatement')) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '34776 - Bouton charge change sur ligne extrait bancaire', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '0776' ;