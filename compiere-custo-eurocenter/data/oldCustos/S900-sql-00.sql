insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'S900','S900 - PartnerGLJournal',
'PartnerGLJournal',
'',
'Y',
'',
'',
'',
'Y',
'361',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'S900' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'S900 - PartnerGLJournal', description = 'PartnerGLJournal', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'S900' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'XLS',(select AD_Reference_ID from AD_Reference where Name = 'FILEFORMATPDFXLS'),
'',
'S900',
'XLS',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'XLS'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'FILEFORMATPDFXLS'), description = '', entitytype = 'S900', name = 'XLS', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'XLS'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='XLS' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS')), 'fr_FR', 'Y', '','XLS'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='XLS' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'XLS' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='XLS' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'PDF',(select AD_Reference_ID from AD_Reference where Name = 'FILEFORMATPDFXLS'),
'',
'S900',
'PDF',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'PDF'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'FILEFORMATPDFXLS'), description = '', entitytype = 'S900', name = 'PDF', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'PDF'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='PDF' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS')), 'fr_FR', 'Y', '','PDF'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='PDF' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'PDF' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='PDF' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS')) and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'Y_C_BP_Group Value','',
'S900',
'',
'T',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'Y_C_BP_Group Value' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S900', help = '', validationtype = 'T', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'Y_C_BP_Group Value' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='Y_C_BP_Group Value'), 'fr_FR', 'Y', '','','Y_C_BP_Group Value'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Y_C_BP_Group Value') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Y_C_BP_Group Value' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Y_C_BP_Group Value') and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'FILEFORMATPDFXLS','',
'S900',
'',
'L',
'   ',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'FILEFORMATPDFXLS' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S900', help = '', validationtype = 'L', vformat = '   ', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'FILEFORMATPDFXLS' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='FILEFORMATPDFXLS'), 'fr_FR', 'Y', '','','FILEFORMATPDFXLS'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='FILEFORMATPDFXLS') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'FILEFORMATPDFXLS' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='FILEFORMATPDFXLS') and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'XLS',(select AD_Reference_ID from AD_Reference where Name = 'FILEFORMATPDFXLS'),
'',
'S900',
'XLS',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'XLS'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'FILEFORMATPDFXLS'), description = '', entitytype = 'S900', name = 'XLS', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'XLS'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='XLS' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS')), 'fr_FR', 'Y', '','XLS'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='XLS' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'XLS' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='XLS' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'PDF',(select AD_Reference_ID from AD_Reference where Name = 'FILEFORMATPDFXLS'),
'',
'S900',
'PDF',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'PDF'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'FILEFORMATPDFXLS'), description = '', entitytype = 'S900', name = 'PDF', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'PDF'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='PDF' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS')), 'fr_FR', 'Y', '','PDF'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='PDF' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'PDF' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='PDF' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'FILEFORMATPDFXLS')) and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'PartnerGLJournal','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.re4a.acct.process.AcctExport',
'',
'S900',
'',
'PartnerGLJournal',
'',
'Partner GL Journal',
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
where not exists (select 1 from AD_Process where Value = 'PartnerGLJournal' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.re4a.acct.process.AcctExport', description = '', entitytype = 'S900', help = '', jasperreport = 'PartnerGLJournal', procedurename = '', name = 'Partner GL Journal', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'PartnerGLJournal' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='PartnerGLJournal'), 'fr_FR', 'Y', '','','Partner GL Journal'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='PartnerGLJournal') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Partner GL Journal' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='PartnerGLJournal') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ShowBeginningBalance','',
'S900',
'',
'Show Beginning Balance',
'',
'',
'',
'',
'Show Beginning Balance',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ShowBeginningBalance' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S900', help = '', name = 'Show Beginning Balance', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Show Beginning Balance', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ShowBeginningBalance' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ShowBeginningBalance'), 'fr_FR', 'Y', '','','Affichage cumuls antérieurs','','','','','Affichage cumuls antérieurs'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShowBeginningBalance') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Affichage cumuls antérieurs',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Affichage cumuls antérieurs' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShowBeginningBalance') and ad_language = 'fr_FR';

insert into AD_Ref_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Column_Key_ID, ad_table_id, Column_Display_ID, entitytype, orderbyclause, whereclause, isactive, isvaluedisplayed, isDisplayIdentifiers) 
select 0,0,sysdate, sysdate,0,0,(select ad_reference_id from ad_reference where name = 'Y_C_BP_Group Value'),(select AD_Column_ID from AD_Column where columnName = 'C_BP_Group_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_BP_Group')),
(select AD_Table_ID from AD_Table where TableName = 'C_BP_Group'),
(select AD_Column_ID from AD_Column where columnName = 'Value' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_BP_Group')),
'S900',
'C_BP_Group.Value',
'',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Ref_Table where  ad_reference_id in (select ad_reference_id from ad_reference where name = 'Y_C_BP_Group Value'));

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_BP_Group_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BP_Group_ID'),
(select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'Y_C_BP_Group Value'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Business Partner Group',
'',
'',
'Business Partner Group',
'S900',
22,
'The Business Partner Group provides a method of defining defaults to be used for individual Business Partners.',
30,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_BP_Group_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BP_Group_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Y_C_BP_Group Value'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Business Partner Group', defaultvalue = '', defaultvalue2 = '', description = 'Business Partner Group', entitytype = 'S900', fieldlength = 22, help = 'The Business Partner Group provides a method of defining defaults to be used for individual Business Partners.', seqno = 30, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'Y', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_BP_Group_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BP_Group_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')), 'fr_FR', 'Y', 'Groupe de tiers','Définit des paramètres par défaut appliqués ensuite aux tiers appartenant à ce groupe.','Groupe de tiers'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BP_Group_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Groupe de tiers',Help = 'Définit des paramètres par défaut appliqués ensuite aux tiers appartenant à ce groupe.',Name = 'Groupe de tiers' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BP_Group_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'DateReport',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Date',
'@SQL=SELECT TRUNC(SYSDATE,''YEAR'') AS DefaultValue FROM Dual',
'@SQL=SELECT LAST_DAY(ADD_MONTHS(SYSDATE,12 - TO_NUMBER(TO_CHAR(SYSDATE,''MM'')))) AS DefaultValue FROM DUAL',
'',
'S900',
7,
'',
20,
'',
'',
'',
'Y',
'N',
'Y',
'Y',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'DateReport'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Date', defaultvalue = '@SQL=SELECT TRUNC(SYSDATE,''YEAR'') AS DefaultValue FROM Dual', defaultvalue2 = '@SQL=SELECT LAST_DAY(ADD_MONTHS(SYSDATE,12 - TO_NUMBER(TO_CHAR(SYSDATE,''MM'')))) AS DefaultValue FROM DUAL', description = '', entitytype = 'S900', fieldlength = 7, help = '', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'N', ismandatory = 'Y', isrange = 'Y', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'DateReport'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateReport' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')), 'fr_FR', 'Y', '','','Date'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateReport' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Date' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateReport' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'),
(select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Business Partner',
'',
'',
'Identifies a Business Partner',
'S900',
22,
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
40,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Business Partner', defaultvalue = '', defaultvalue2 = '', description = 'Identifies a Business Partner', entitytype = 'S900', fieldlength = 22, help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', seqno = 40, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')), 'fr_FR', 'Y', 'Identifie un tiers','Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.','Tiers'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifie un tiers',Help = 'Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.',Name = 'Tiers' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'FileFormat',(select AD_Element_ID from AD_Element where ColumnName = 'FileFormat'),
(select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'FILEFORMATPDFXLS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'FileFormat',
'XLS',
'',
'',
'S900',
3,
'',
70,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'FileFormat'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'FileFormat'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'FILEFORMATPDFXLS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'FileFormat', defaultvalue = 'XLS', defaultvalue2 = '', description = '', entitytype = 'S900', fieldlength = 3, help = '', seqno = 70, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'FileFormat'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='FileFormat' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')), 'fr_FR', 'Y', '','','Format d''export'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='FileFormat' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Format d''export' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='FileFormat' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'IsSOTrx',(select AD_Element_ID from AD_Element where ColumnName = 'IsSOTrx'),
(select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Sales Transaction',
'',
'',
'This is a Sales Transaction',
'S900',
1,
'The Sales Transaction checkbox indicates if this item is a Sales Transaction.',
50,
'',
'',
'',
'Y',
'N',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'IsSOTrx'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsSOTrx'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Sales Transaction', defaultvalue = '', defaultvalue2 = '', description = 'This is a Sales Transaction', entitytype = 'S900', fieldlength = 1, help = 'The Sales Transaction checkbox indicates if this item is a Sales Transaction.', seqno = 50, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'N', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'IsSOTrx'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='IsSOTrx' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')), 'fr_FR', 'Y', 'Clients','Clients / Fournisseurs','Clients'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='IsSOTrx' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Clients',Help = 'Clients / Fournisseurs',Name = 'Clients' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='IsSOTrx' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'ShowBeginningBalance',(select AD_Element_ID from AD_Element where ColumnName = 'ShowBeginningBalance'),
(select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Show Beginning Balance',
'',
'',
'',
'S900',
1,
'',
60,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'ShowBeginningBalance'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ShowBeginningBalance'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Show Beginning Balance', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'S900', fieldlength = 1, help = '', seqno = 60, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'ShowBeginningBalance'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ShowBeginningBalance' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')), 'fr_FR', 'Y', '','','Affichage cumuls antérieurs'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ShowBeginningBalance' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Affichage cumuls antérieurs' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ShowBeginningBalance' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_AcctSchema_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_AcctSchema_ID'),
(select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Accounting Schema',
'',
'',
'Rules for accounting',
'S900',
22,
'An Accounting Schema defines the rules used in accounting such as costing method, currency and calendar',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_AcctSchema_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_AcctSchema_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Accounting Schema', defaultvalue = '', defaultvalue2 = '', description = 'Rules for accounting', entitytype = 'S900', fieldlength = 22, help = 'An Accounting Schema defines the rules used in accounting such as costing method, currency and calendar', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_AcctSchema_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')), 'fr_FR', 'Y', 'Définit les paramètres d''une écriture comptable','Définit les paramètres d''une écriture comptable tels que devises, dates, comptes etc...','Plan comptable'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Définit les paramètres d''une écriture comptable',Help = 'Définit les paramètres d''une écriture comptable tels que devises, dates, comptes etc...',Name = 'Plan comptable' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'PartnerGLJournal')) and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'PartnerGLJournal (sre)','Partner GL Journal (sre)',
'R',
'',
'S900',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'PartnerGLJournal (sre)' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Partner GL Journal (sre)', action = 'R', description = '', entitytype = 'S900', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'PartnerGLJournal'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'PartnerGLJournal (sre)' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='PartnerGLJournal (sre)'), 'fr_FR', 'Y', '','Grand Livre Tiers (sre)'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='PartnerGLJournal (sre)') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Grand Livre Tiers (sre)' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='PartnerGLJournal (sre)') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'S900 - PartnerGLJournal', description = 'PartnerGLJournal', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'S900' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'PartnerGLJournal (sre)') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'PartnerGLJournal (sre)')); 

