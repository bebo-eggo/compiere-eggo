insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2ZEZ','2ZEZ - 97727',
'',
'',
'Y',
'',
'',
'',
'N',
'1',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '2ZEZ' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2ZEZ - 97727', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2ZEZ' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Lettrage Automatique de Compte/Tiers','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.MatchAccountAuto',
'',
'2ZEZ',
'',
'',
'',
'Lettrage Automatique de Compte/Tiers',
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
where not exists (select 1 from AD_Process where Value = 'Lettrage Automatique de Compte/Tiers' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.MatchAccountAuto', description = '', entitytype = '2ZEZ', help = '', jasperreport = '', procedurename = '', name = 'Lettrage Automatique de Compte/Tiers', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Lettrage Automatique de Compte/Tiers' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Lettrage Automatique de Compte/Tiers'), 'fr_FR', 'Y', 'Lettrage Automatique de Compte/Tiers','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Lettrage Automatique de Compte/Tiers') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Lettrage Automatique de Compte/Tiers',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Lettrage Automatique de Compte/Tiers') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Lettrage Automatique de Compte/Tiers'), 'nl_NL', 'Y', 'Lettrage Automatique de Compte/Tiers','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Lettrage Automatique de Compte/Tiers') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Lettrage Automatique de Compte/Tiers',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Lettrage Automatique de Compte/Tiers') and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Lettrage Automatique de Compte/Tiers'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Société',
'',
'',
'',
'2ZEZ',
0,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Lettrage Automatique de Compte/Tiers'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Société', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '2ZEZ', fieldlength = 0, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')), 'fr_FR', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')), 'nl_NL', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Lettrage Automatique de Compte/Tiers'),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_BPartner IsCustomer = Y'),
'Tiers',
'',
'',
'',
'2ZEZ',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Lettrage Automatique de Compte/Tiers'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_BPartner IsCustomer = Y'), name = 'Tiers', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '2ZEZ', fieldlength = 0, help = '', seqno = 30, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')), 'fr_FR', 'Y', '','','Tiers'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tiers' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')), 'nl_NL', 'Y', '','','Tiers'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Tiers' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Ecart',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Lettrage Automatique de Compte/Tiers'),
(select AD_Reference_ID from AD_Reference where Name = 'Number'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Montant (Fourchette)',
'',
'',
'',
'2ZEZ',
0,
'',
40,
'',
'',
'',
'Y',
'Y',
'Y',
'Y',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Ecart'  and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Lettrage Automatique de Compte/Tiers'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Number'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Montant (Fourchette)', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '2ZEZ', fieldlength = 0, help = '', seqno = 40, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'Y', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Ecart'  and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Ecart' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')), 'fr_FR', 'Y', '','','Montant (Fourchette)'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Ecart' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant (Fourchette)' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Ecart' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Ecart' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')), 'nl_NL', 'Y', '','','Montant (Fourchette)'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Ecart' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant (Fourchette)' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Ecart' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'DateFact',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Lettrage Automatique de Compte/Tiers'),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Date',
'',
'',
'',
'2ZEZ',
0,
'',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'DateFact'  and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Lettrage Automatique de Compte/Tiers'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Date', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '2ZEZ', fieldlength = 0, help = '', seqno = 40, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'DateFact'  and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFact' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')), 'fr_FR', 'Y', '','','Date'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFact' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Date' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFact' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFact' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')), 'nl_NL', 'Y', '','','Date'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFact' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Date' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFact' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Account_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Account_ID'),
(select AD_Process_ID from AD_Process where Value = 'Lettrage Automatique de Compte/Tiers'),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'Account_ID'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_ElementValue of AcctSchema'),
'Compte',
'',
'',
'',
'2ZEZ',
0,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'Account_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Account_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Lettrage Automatique de Compte/Tiers'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Account_ID'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_ElementValue of AcctSchema'), name = 'Compte', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '2ZEZ', fieldlength = 0, help = '', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Account_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')), 'fr_FR', 'Y', '','','Compte'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Compte' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')), 'nl_NL', 'Y', '','','Compte'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Compte' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Account_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Lettrage Automatique de Compte/Tiers')) and ad_language = 'nl_NL';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Lettrage Automatique de Compte/Tiers','Lettrage Automatique de Compte/Tiers',
'P',
'',
'2ZEZ',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'Lettrage Automatique de Compte/Tiers'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Lettrage Automatique de Compte/Tiers' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Lettrage Automatique de Compte/Tiers', action = 'P', description = '', entitytype = '2ZEZ', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Lettrage Automatique de Compte/Tiers'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Lettrage Automatique de Compte/Tiers' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Lettrage Automatique de Compte/Tiers'), 'fr_FR', 'Y', '','Lettrage Automatique de Compte/Tiers'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Lettrage Automatique de Compte/Tiers') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Lettrage Automatique de Compte/Tiers' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Lettrage Automatique de Compte/Tiers') and ad_language = 'fr_FR';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Lettrage Automatique de Compte/Tiers'), 'nl_NL', 'Y', '','Lettrage Automatique de Compte/Tiers'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Lettrage Automatique de Compte/Tiers') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Lettrage Automatique de Compte/Tiers' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Lettrage Automatique de Compte/Tiers') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2ZEZ - 97727', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2ZEZ' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Lettrage Automatique de Compte/Tiers') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Lettrage Automatique de Compte/Tiers')); 

