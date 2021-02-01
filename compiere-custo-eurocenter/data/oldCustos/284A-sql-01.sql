insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'284A','284A-73866-EGGO PRO',
'',
'',
'Y',
'',
'',
'',
'Y',
'3.61',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '284A' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '284A-73866-EGGO PRO', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '3.61', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '284A' ;

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'C_BPartner (Promoter)','Business Partner Promoter',
'284A',
'',
'T',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'C_BPartner (Promoter)' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = 'Business Partner Promoter', entitytype = '284A', help = '', validationtype = 'T', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'C_BPartner (Promoter)' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='C_BPartner (Promoter)'), 'fr_FR', 'Y', '','Business Partner Promoter','C_BPartner (Promoter)'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BPartner (Promoter)') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Business Partner Promoter',Name = 'C_BPartner (Promoter)' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BPartner (Promoter)') and ad_language = 'fr_FR';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='C_BPartner (Promoter)'), 'nl_NL', 'Y', '','Business Partner Promoter','C_BPartner (Promoter)'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BPartner (Promoter)') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Business Partner Promoter',Name = 'C_BPartner (Promoter)' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BPartner (Promoter)') and ad_language = 'nl_NL';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'GenerateInvoiceProm','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.GenerateInvoiceProm',
'',
'284A',
'',
'',
'',
'GenerateInvoiceProm',
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
where not exists (select 1 from AD_Process where Value = 'GenerateInvoiceProm' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.GenerateInvoiceProm', description = '', entitytype = '284A', help = '', jasperreport = '', procedurename = '', name = 'GenerateInvoiceProm', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'GenerateInvoiceProm' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='GenerateInvoiceProm'), 'fr_FR', 'Y', 'GenerateInvoiceProm','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='GenerateInvoiceProm') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'GenerateInvoiceProm',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='GenerateInvoiceProm') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='GenerateInvoiceProm'), 'nl_NL', 'Y', 'GenerateInvoiceProm','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='GenerateInvoiceProm') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'GenerateInvoiceProm',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='GenerateInvoiceProm') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'PROM_BPartner_Location_ID','Location Promoter',
'284A',
'',
'PROM_BPartner_Location_ID',
'',
'',
'',
'',
'Location Promoter',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'PROM_BPartner_Location_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Location Promoter', entitytype = '284A', help = '', name = 'PROM_BPartner_Location_ID', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Location Promoter', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'PROM_BPartner_Location_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PROM_BPartner_Location_ID'), 'fr_FR', 'Y', '','Adresse du tiers promoteur','','','Adresse du tiers promoteur','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_BPartner_Location_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Adresse du tiers promoteur',Help = '',PO_PrintName = '',PrintName = 'Adresse du tiers promoteur',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_BPartner_Location_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PROM_BPartner_Location_ID'), 'nl_NL', 'Y', '','PROM_BPartner_Location_ID','','','Location Promoter','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_BPartner_Location_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'PROM_BPartner_Location_ID',Help = '',PO_PrintName = '',PrintName = 'Location Promoter',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_BPartner_Location_ID') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'PROM_Comments','Comments Promoter',
'284A',
'',
'PROM_Comments',
'',
'',
'',
'',
'Comments Promoter',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'PROM_Comments' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Comments Promoter', entitytype = '284A', help = '', name = 'PROM_Comments', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Comments Promoter', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'PROM_Comments' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PROM_Comments'), 'fr_FR', 'Y', 'Commentaire','Commentaire','Ce commentaireapparaitra sur la facture Prom.','','Commentairer','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_Comments') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Commentaire',Name = 'Commentaire',Help = 'Ce commentaireapparaitra sur la facture Prom.',PO_PrintName = '',PrintName = 'Commentairer',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_Comments') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PROM_Comments'), 'nl_NL', 'Y', 'Comments Promoter','PROM_Comments','','','Comments Promoter','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_Comments') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Comments Promoter',Name = 'PROM_Comments',Help = '',PO_PrintName = '',PrintName = 'Comments Promoter',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_Comments') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'PROM_INV','Invoice Promoter',
'284A',
'',
'PROM_INV',
'',
'',
'',
'',
'Invoice Promoter',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'PROM_INV' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Invoice Promoter', entitytype = '284A', help = '', name = 'PROM_INV', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Invoice Promoter', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'PROM_INV' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PROM_INV'), 'fr_FR', 'Y', 'Facturer finale promoteur','Facturer promoteur','','','Facturer promoteur','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_INV') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Facturer finale promoteur',Name = 'Facturer promoteur',Help = '',PO_PrintName = '',PrintName = 'Facturer promoteur',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_INV') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PROM_INV'), 'nl_NL', 'Y', 'Invoice Promoter','PROM_INV','','','Invoice Promoter','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_INV') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Invoice Promoter',Name = 'PROM_INV',Help = '',PO_PrintName = '',PrintName = 'Invoice Promoter',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_INV') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsProm','',
'284A',
'',
'IsProm',
'',
'',
'',
'',
'Promoter',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsProm' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '284A', help = '', name = 'IsProm', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Promoter', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsProm' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsProm'), 'fr_FR', 'Y', 'Promoteur','Promoteur','','','Promoteur','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsProm') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Promoteur',Name = 'Promoteur',Help = '',PO_PrintName = '',PrintName = 'Promoteur',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsProm') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsProm'), 'nl_NL', 'Y', '','IsProm','','','Promoter','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsProm') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'IsProm',Help = '',PO_PrintName = '',PrintName = 'Promoter',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsProm') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'PROM_BPartner_ID','',
'284A',
'',
'PROM_BPartner_ID',
'',
'',
'',
'',
'PROM_BPartner_ID',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'PROM_BPartner_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '284A', help = '', name = 'PROM_BPartner_ID', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'PROM_BPartner_ID', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'PROM_BPartner_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PROM_BPartner_ID'), 'fr_FR', 'Y', '','Tiers promoteur','','','Tiers promoteur','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_BPartner_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Tiers promoteur',Help = '',PO_PrintName = '',PrintName = 'Tiers promoteur',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_BPartner_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PROM_BPartner_ID'), 'nl_NL', 'Y', '','PROM_BPartner_ID','','','PROM_BPartner_ID','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_BPartner_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'PROM_BPartner_ID',Help = '',PO_PrintName = '',PrintName = 'PROM_BPartner_ID',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_BPartner_ID') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'PROM_Amount','Commission Amount',
'284A',
'',
'PROM_Amount',
'',
'',
'',
'',
'Commission Amount',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'PROM_Amount' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Commission Amount', entitytype = '284A', help = '', name = 'PROM_Amount', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Commission Amount', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'PROM_Amount' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PROM_Amount'), 'fr_FR', 'Y', 'Montant commission','Montant commission','','','Montant commission','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_Amount') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Montant commission',Name = 'Montant commission',Help = '',PO_PrintName = '',PrintName = 'Montant commission',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_Amount') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PROM_Amount'), 'nl_NL', 'Y', 'Amount Promoter','PROM_Amount','','','Amount Promoter','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_Amount') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Amount Promoter',Name = 'PROM_Amount',Help = '',PO_PrintName = '',PrintName = 'Amount Promoter',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_Amount') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'PROM_INV_ID','Promoter invoice',
'284A',
'',
'PROM_INV_ID',
'',
'',
'',
'',
'Promoter invoice',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'PROM_INV_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Promoter invoice', entitytype = '284A', help = '', name = 'PROM_INV_ID', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Promoter invoice', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'PROM_INV_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PROM_INV_ID'), 'fr_FR', 'Y', 'Facture Fin Prom.','Facture Prom.','','','Facture Fin Prom.','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_INV_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Facture Fin Prom.',Name = 'Facture Prom.',Help = '',PO_PrintName = '',PrintName = 'Facture Fin Prom.',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_INV_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PROM_INV_ID'), 'nl_NL', 'Y', 'Promoter invoice','PROM_INV_ID','','','Promoter invoice','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_INV_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Promoter invoice',Name = 'PROM_INV_ID',Help = '',PO_PrintName = '',PrintName = 'Promoter invoice',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PROM_INV_ID') and ad_language = 'nl_NL';

insert into AD_FieldGroup (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,Name,entitytype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_FieldGroup'),'Promoteur','284A',
'Y'
 from dual  
where not exists (select 1 from AD_FieldGroup where Name = 'Promoteur' );

update AD_FieldGroup set Updated = sysdate, UpdatedBy = 0, entitytype = '284A', isactive = 'Y' 
where Name = 'Promoteur' ;

insert into AD_FieldGroup_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_FieldGroup_ID from AD_FieldGroup where Name='Promoteur'), 'fr_FR', 'Y', 'Promoteur'
 from dual  
where not exists (select 1 from AD_FieldGroup_Trl where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Promoteur') and ad_language = 'fr_FR');

update AD_FieldGroup_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Promoteur' where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Promoteur') and ad_language = 'fr_FR';

insert into AD_FieldGroup_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_FieldGroup_ID from AD_FieldGroup where Name='Promoteur'), 'nl_NL', 'Y', 'Promoteur'
 from dual  
where not exists (select 1 from AD_FieldGroup_Trl where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Promoteur') and ad_language = 'nl_NL');

update AD_FieldGroup_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Promoteur' where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Promoteur') and ad_language = 'nl_NL';

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'Promoter BPartner','EXISTS (SELECT  C_BPartner.C_BPartner_ID FROM C_BPartner WHERE C_BPartner.C_BP_Group_ID=(SELECT C_BP_Group_ID FROM C_BP_Group WHERE Value=''PROMOTEUR'') )',
'',
'284A',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'Promoter BPartner' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'EXISTS (SELECT  C_BPartner.C_BPartner_ID FROM C_BPartner WHERE C_BPartner.C_BP_Group_ID=(SELECT C_BP_Group_ID FROM C_BP_Group WHERE Value=''PROMOTEUR'') )', description = '', entitytype = '284A', type = 'S', isactive = 'Y' 
where Name = 'Promoter BPartner' ;

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'C_BPartner_LocProm','C_BPartner_Location.C_BPartner_ID=@PROM_BPartner_ID@ AND C_BPartner_Location.ISEGGO = ''Y'' ',
'',
'284A',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'C_BPartner_LocProm' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'C_BPartner_Location.C_BPartner_ID=@PROM_BPartner_ID@ AND C_BPartner_Location.ISEGGO = ''Y'' ', description = '', entitytype = '284A', type = 'S', isactive = 'Y' 
where Name = 'C_BPartner_LocProm' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PROM_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = 'PROM_BPartner_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_BPartner (Promoter)'),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'284A',
10,
'',
'PROM_BPartner_ID',
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
where not exists (select 1 from AD_Column where ColumnName = 'PROM_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PROM_BPartner_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_BPartner (Promoter)'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '284A', fieldlength = 10, help = '', name = 'PROM_BPartner_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PROM_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'fr_FR', 'Y', 'Tiers promoteur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tiers promoteur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'nl_NL', 'Y', 'PROM_BPartner_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PROM_BPartner_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PROM_BPartner_Location_ID',(select AD_Element_ID from AD_Element where ColumnName = 'PROM_BPartner_Location_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_BPartner Location'),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_BPartner_LocProm'),
'',
'',
'Location Promoter',
'284A',
10,
'',
'PROM_BPartner_Location_ID',
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
where not exists (select 1 from AD_Column where ColumnName = 'PROM_BPartner_Location_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PROM_BPartner_Location_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_BPartner Location'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_BPartner_LocProm'), callout = '', defaultvalue = '', description = 'Location Promoter', entitytype = '284A', fieldlength = 10, help = '', name = 'PROM_BPartner_Location_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PROM_BPartner_Location_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'fr_FR', 'Y', 'PROMO_BPartner_Locat'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PROMO_BPartner_Locat' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'nl_NL', 'Y', 'PROMO_BPartner_Locat'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PROMO_BPartner_Locat' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PROM_Amount',(select AD_Element_ID from AD_Element where ColumnName = 'PROM_Amount'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'0',
'Commission Amount',
'284A',
14,
'',
'PROM_Amount',
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
where not exists (select 1 from AD_Column where ColumnName = 'PROM_Amount'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PROM_Amount'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '0', description = 'Commission Amount', entitytype = '284A', fieldlength = 14, help = '', name = 'PROM_Amount', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PROM_Amount'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'fr_FR', 'Y', 'Montant commission'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant commission' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'nl_NL', 'Y', 'PROM_Amount'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PROM_Amount' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PROM_Comments',(select AD_Element_ID from AD_Element where ColumnName = 'PROM_Comments'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Comments Promoter',
'284A',
255,
'',
'PROM_Comments',
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
where not exists (select 1 from AD_Column where ColumnName = 'PROM_Comments'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PROM_Comments'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Comments Promoter', entitytype = '284A', fieldlength = 255, help = '', name = 'PROM_Comments', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PROM_Comments'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'fr_FR', 'Y', 'Commentaire'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Commentaire' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'nl_NL', 'Y', 'PROM_Comments'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PROM_Comments' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PROM_INV_ID',(select AD_Element_ID from AD_Element where ColumnName = 'PROM_INV_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_Invoice'),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Promoter invoice',
'284A',
1,
'',
'PROM_INV_ID',
'@#AD_Role_ID@!1000000 | @C_Invoice_ID@!0 &'||' @#AD_Role_ID@!1000000 &'||' @#AD_Role_ID@!1001764 &'||' @#AD_Role_ID@!1001775 &'||' @#AD_Role_ID@!1000937',
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
where not exists (select 1 from AD_Column where ColumnName = 'PROM_INV_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PROM_INV_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_Invoice'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Promoter invoice', entitytype = '284A', fieldlength = 1, help = '', name = 'PROM_INV_ID', readonlylogic = '@#AD_Role_ID@!1000000 | @C_Invoice_ID@!0 &'||' @#AD_Role_ID@!1000000 &'||' @#AD_Role_ID@!1001764 &'||' @#AD_Role_ID@!1001775 &'||' @#AD_Role_ID@!1000937', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PROM_INV_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'fr_FR', 'Y', 'Facture Prom.'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Facture Prom.' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'nl_NL', 'Y', 'PROM_INV_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PROM_INV_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsProm',(select AD_Element_ID from AD_Element where ColumnName = 'IsProm'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'284A',
1,
'',
'IsProm',
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
'(SELECT isProm FROM Z_TypeEcheance WHERE Z_TypeEcheance_ID = Z_OrderPaymSchedule.Z_TypeEcheance_ID)',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsProm'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsProm'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '284A', fieldlength = 1, help = '', name = 'IsProm', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '(SELECT isProm FROM Z_TypeEcheance WHERE Z_TypeEcheance_ID = Z_OrderPaymSchedule.Z_TypeEcheance_ID)', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsProm'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'fr_FR', 'Y', 'Promoteur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Promoteur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'nl_NL', 'Y', 'IsProm'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsProm' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsProm',(select AD_Element_ID from AD_Element where ColumnName = 'IsProm'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'284A',
1,
'',
'IsProm',
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
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'IsProm'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsProm'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = '284A', fieldlength = 1, help = '', name = 'IsProm', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsProm'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'Promoteur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Promoteur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_NL', 'Y', 'IsProm'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsProm' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PROM_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = 'PROM_BPartner_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_BPartner (Promoter)'),
(select AD_Table_ID from AD_Table where TableName = 'C_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'284A',
10,
'',
'PROM_BPartner_ID',
'@PROM_BPartner_ID@!0 &'||' @#AD_Role_ID@=1000737',
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
where not exists (select 1 from AD_Column where ColumnName = 'PROM_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PROM_BPartner_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_BPartner (Promoter)'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '284A', fieldlength = 10, help = '', name = 'PROM_BPartner_ID', readonlylogic = '@PROM_BPartner_ID@!0 &'||' @#AD_Role_ID@=1000737', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PROM_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'fr_FR', 'Y', 'Tiers Promoteur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tiers Promoteur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'nl_NL', 'Y', 'PROM_BPartner_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PROM_BPartner_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PROM_INV',(select AD_Element_ID from AD_Element where ColumnName = 'PROM_INV'),
(select AD_Process_ID from AD_Process where Value = 'GenerateInvoiceProm'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Invoice Promoter',
'284A',
1,
'',
'PROM_INV',
'@PROM_INV_ID@!0 | @PROM_Amount@=0',
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
where not exists (select 1 from AD_Column where ColumnName = 'PROM_INV'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PROM_INV'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'GenerateInvoiceProm'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Invoice Promoter', entitytype = '284A', fieldlength = 1, help = '', name = 'PROM_INV', readonlylogic = '@PROM_INV_ID@!0 | @PROM_Amount@=0', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PROM_INV'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'fr_FR', 'Y', 'Facturer promoteur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Facturer promoteur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'nl_NL', 'Y', 'PROM_INV'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PROM_INV' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Product, Service, Item',
'284A',
10,
'Identifies an item which is either purchased or sold in this organization.',
'Product',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TypeEcheance'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Product, Service, Item', entitytype = '284A', fieldlength = 10, help = 'Identifies an item which is either purchased or sold in this organization.', name = 'Product', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'fr_FR', 'Y', 'Charge promoteur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Charge promoteur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')), 'nl_NL', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'IsProm',
'',
1,
'',
'284A',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'IsProm', description = '', displaylength = 1, displaylogic = '', entitytype = '284A', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', '','Promoteur','Promoteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Promoteur',Name = 'Promoteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', '','Promoteur','Promoteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Promoteur',Name = 'Promoteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Promoteur'),
(select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'PROM_Amount',
'Commission Amount',
14,
'@IsProm@=''Y'' &'||' @#AD_Role_ID@!1000737',
'284A',
'',
'',
270,
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
270
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Promoteur'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'PROM_Amount', description = 'Commission Amount', displaylength = 14, displaylogic = '@IsProm@=''Y'' &'||' @#AD_Role_ID@!1000737', entitytype = '284A', help = '', obscuretype = '', seqno = 270, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 270 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', '','Montant commission','Montant commission'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Montant commission',Name = 'Montant commission' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', '','Montant commission','Montant commission'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Montant commission',Name = 'Montant commission' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_Amount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Promoteur'),
(select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'PROM_BPartner_ID',
'',
10,
'@IsProm@=''Y'' &'||' @#AD_Role_ID@!1000737',
'284A',
'',
'',
240,
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
240
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Promoteur'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'PROM_BPartner_ID', description = '', displaylength = 10, displaylogic = '@IsProm@=''Y'' &'||' @#AD_Role_ID@!1000737', entitytype = '284A', help = '', obscuretype = '', seqno = 240, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 240 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', '','','Tiers promoteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Tiers promoteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', '','','Tiers promoteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Tiers promoteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Promoteur'),
(select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'PROM_BPartner_Location_ID',
'Location Promoter',
10,
'@IsProm@=''Y'' &'||' @#AD_Role_ID@!1000737',
'284A',
'',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
250
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Promoteur'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'PROM_BPartner_Location_ID', description = 'Location Promoter', displaylength = 10, displaylogic = '@IsProm@=''Y'' &'||' @#AD_Role_ID@!1000737', entitytype = '284A', help = '', obscuretype = '', seqno = 250, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 250 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', '','','Adresse du tiers promoteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Adresse du tiers promoteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', '','','Adresse du tiers promoteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Adresse du tiers promoteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Promoteur'),
(select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'PROM_Comments',
'Comments Promoter',
255,
'@IsProm@=''Y'' &'||' @#AD_Role_ID@!1000737',
'284A',
'',
'',
280,
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
280
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Promoteur'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'PROM_Comments', description = 'Comments Promoter', displaylength = 255, displaylogic = '@IsProm@=''Y'' &'||' @#AD_Role_ID@!1000737', entitytype = '284A', help = '', obscuretype = '', seqno = 280, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 280 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', 'Ce commentaireapparaitra sur la facture Prom.','Commentaire','Commentaire'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Ce commentaireapparaitra sur la facture Prom.',Description = 'Commentaire',Name = 'Commentaire' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', 'Ce commentaireapparaitra sur la facture Prom.','Commentaire','Commentaire'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Ce commentaireapparaitra sur la facture Prom.',Description = 'Commentaire',Name = 'Commentaire' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_Comments' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Promoteur'),
(select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'PROM_INV',
'Invoice Promoter',
1,
'@IsProm@=''Y'' &'||' @#AD_Role_ID@!1000737',
'284A',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
260
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Promoteur'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'PROM_INV', description = 'Invoice Promoter', displaylength = 1, displaylogic = '@IsProm@=''Y'' &'||' @#AD_Role_ID@!1000737', entitytype = '284A', help = '', obscuretype = '', seqno = 260, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 260 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', '','Facturer finale promoteur','Facturer promoteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Facturer finale promoteur',Name = 'Facturer promoteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', '','Facturer finale promoteur','Facturer promoteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Facturer finale promoteur',Name = 'Facturer promoteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_INV' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Promoteur'),
(select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'PROM_INV_ID',
'Promoter invoice',
1,
'@IsProm@=''Y'' &'||' @#AD_Role_ID@!1000737',
'284A',
'',
'',
290,
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
290
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Promoteur'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'PROM_INV_ID', description = 'Promoter invoice', displaylength = 1, displaylogic = '@IsProm@=''Y'' &'||' @#AD_Role_ID@!1000737', entitytype = '284A', help = '', obscuretype = '', seqno = 290, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 290 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', '','Facture Fin Prom.','Facture Prom.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Facture Fin Prom.',Name = 'Facture Prom.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', '','Facture Fin Prom.','Facture Prom.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Facture Fin Prom.',Name = 'Facture Prom.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_INV_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')),
'IsProm',
'',
1,
'',
'284A',
'',
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
'',
'',
'N',
100
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')), name = 'IsProm', description = '', displaylength = 1, displaylogic = '', entitytype = '284A', help = '', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 100 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'fr_FR', 'Y', '','Promoteur','Promoteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Promoteur',Name = 'Promoteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'nl_NL', 'Y', '','Promoteur','Promoteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Promoteur',Name = 'Promoteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProm' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')),
'Product',
'Product, Service, Item',
10,
'@IsProm@=''Y''',
'284A',
'Identifies an item which is either purchased or sold in this organization.',
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
'',
'',
'N',
110
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types Echeances' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'TypesEcheances')), name = 'Product', description = 'Product, Service, Item', displaylength = 10, displaylogic = '@IsProm@=''Y''', entitytype = '284A', help = 'Identifies an item which is either purchased or sold in this organization.', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 110 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'fr_FR', 'Y', 'Identifie un article vendu ou acheté par cette organisation.','Produit service etc?','Article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identifie un article vendu ou acheté par cette organisation.',Description = 'Produit service etc?',Name = 'Article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))), 'nl_NL', 'Y', 'Identifie un article vendu ou acheté par cette organisation.','Produit service etc?','Article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Identifie un article vendu ou acheté par cette organisation.',Description = 'Produit service etc?',Name = 'Article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TypeEcheance')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types Echeances' and ad_window_id in (select ad_window_id from ad_window where value = 'TypesEcheances'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Order_186 ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'PROM_BPartner_ID',
'',
0,
'@C_DocTypeTarget_ID@=1000028 |  @C_DocTypeTarget_ID@=1005282 | @C_DocTypeTarget_ID@=1006385 &'||' @#AD_Client_ID@=1000000 | @#AD_Client_ID@=1000022 | @#AD_Client_ID@=1000024',
'284A',
'',
'',
305,
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
305
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Order_186 ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'PROM_BPartner_ID', description = '', displaylength = 0, displaylogic = '@C_DocTypeTarget_ID@=1000028 |  @C_DocTypeTarget_ID@=1005282 | @C_DocTypeTarget_ID@=1006385 &'||' @#AD_Client_ID@=1000000 | @#AD_Client_ID@=1000022 | @#AD_Client_ID@=1000024', entitytype = '284A', help = '', obscuretype = '', seqno = 305, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 305 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', '','','Tiers promoteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Tiers promoteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', '','','Tiers promoteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Tiers promoteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PROM_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Ref_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Column_Key_ID, ad_table_id, Column_Display_ID, entitytype, orderbyclause, whereclause, isactive, isvaluedisplayed, isDisplayIdentifiers) 
select 0,0,sysdate, sysdate,0,0,(select ad_reference_id from ad_reference where name = 'C_BPartner (Promoter)'),(select AD_Column_ID from AD_Column where columnName = 'C_BPartner_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_BPartner')),
(select AD_Table_ID from AD_Table where TableName = 'C_BPartner'),
(select AD_Column_ID from AD_Column where columnName = 'Name' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_BPartner')),
'284A',
'C_BPartner.Name',
'C_BPartner.C_BP_Group_ID=(select C_BP_Group_ID from C_BP_Group where value=''PROMOTEUR'')',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Ref_Table where  ad_reference_id in (select ad_reference_id from ad_reference where name = 'C_BPartner (Promoter)'));

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'ERR_ACP_PROM1','284A',
'Facture inutile, montant à 0',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'ERR_ACP_PROM1' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '284A', msgtext = 'Facture inutile, montant à 0', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'ERR_ACP_PROM1' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='ERR_ACP_PROM1'), 'fr_FR', 'Y', '','Facture inutile, montant à 0'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='ERR_ACP_PROM1') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Facture inutile, montant à 0' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='ERR_ACP_PROM1') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='ERR_ACP_PROM1'), 'nl_NL', 'Y', '','Facture inutile, montant à 0'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='ERR_ACP_PROM1') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Facture inutile, montant à 0' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='ERR_ACP_PROM1') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '284A-73866-EGGO PRO', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '3.61', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '284A' ;

