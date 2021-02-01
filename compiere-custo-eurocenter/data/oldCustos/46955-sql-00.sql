insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'4955','46955: EC-SFD9000-003-Rapport Factures Non Matchées Réceptio',
'',
'',
'Y',
'',
'',
'',
'N',
'1.0',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '4955' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '46955: EC-SFD9000-003-Rapport Factures Non Matchées Réceptio', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '4955' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'ZInvoiceUnmatched','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'ru.compiere.report.RusReportStarter',
'Rapport des factures à réconcilier',
'4955',
'',
'ZInvoiceUnmatched.jasper',
'',
'Rapport des factures à réconcilier',
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
where not exists (select 1 from AD_Process where Value = 'ZInvoiceUnmatched' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'ru.compiere.report.RusReportStarter', description = 'Rapport des factures à réconcilier', entitytype = '4955', help = '', jasperreport = 'ZInvoiceUnmatched.jasper', procedurename = '', name = 'Rapport des factures à réconcilier', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'ZInvoiceUnmatched' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ZInvoiceUnmatched'), 'nl_BE', 'Y', 'Rapport des factures à réconcilier','','Rapport des factures à réconcilier'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZInvoiceUnmatched') and ad_language = 'nl_BE');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Rapport des factures à réconcilier',Help = '',Name = 'Rapport des factures à réconcilier' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZInvoiceUnmatched') and ad_language = 'nl_BE';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ZInvoiceUnmatched'), 'fr_FR', 'Y', 'Rapport des factures à réconcilier','','Rapport des factures à réconcilier'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZInvoiceUnmatched') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Rapport des factures à réconcilier',Help = '',Name = 'Rapport des factures à réconcilier' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ZInvoiceUnmatched') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Vendor_TO_ID','',
'4955',
'',
'Vendor To',
'',
'',
'',
'',
'Vendor To',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Vendor_TO_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '4955', help = '', name = 'Vendor To', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Vendor To', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Vendor_TO_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Vendor_TO_ID'), 'nl_BE', 'Y', '','','Vendor To','','','','','Vendor To'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Vendor_TO_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Vendor To',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Vendor To' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Vendor_TO_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Vendor_TO_ID'), 'fr_FR', 'Y', '','','Fournisseur à','','','','','Fournisseur à'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Vendor_TO_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur à',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Fournisseur à' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Vendor_TO_ID') and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Vendor_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Vendor_ID'),
(select AD_Process_ID from AD_Process where Value = 'ZInvoiceUnmatched'),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_BPartner Vendors'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Vendor',
'',
'',
'The Vendor of the product/service',
'4955',
12,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'Vendor_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Vendor_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ZInvoiceUnmatched'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_BPartner Vendors'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Vendor', defaultvalue = '', defaultvalue2 = '', description = 'The Vendor of the product/service', entitytype = '4955', fieldlength = 12, help = '', seqno = 30, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Vendor_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Vendor_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')), 'nl_BE', 'Y', 'The Vendor of the product/service','','Vendor'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Vendor_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'nl_BE');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The Vendor of the product/service',Help = '',Name = 'Vendor' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Vendor_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'nl_BE';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Vendor_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')), 'fr_FR', 'Y', '','','Fournisseur'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Vendor_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Vendor_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = 'ZInvoiceUnmatched'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Tenant',
'',
'',
'Identifies the Client/Tenant for this installation.',
'4955',
12,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ZInvoiceUnmatched'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Tenant', defaultvalue = '', defaultvalue2 = '', description = 'Identifies the Client/Tenant for this installation.', entitytype = '4955', fieldlength = 12, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')), 'nl_BE', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'nl_BE');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'nl_BE';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')), 'fr_FR', 'Y', 'Nom de l''entreprise titulaire de la base de données (DB)','','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Help = '',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = 'ZInvoiceUnmatched'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Organization',
'',
'',
'Organizational entity within Tenant',
'4955',
12,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ZInvoiceUnmatched'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Organization', defaultvalue = '', defaultvalue2 = '', description = 'Organizational entity within Tenant', entitytype = '4955', fieldlength = 12, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')), 'nl_BE', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'nl_BE');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'nl_BE';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')), 'fr_FR', 'Y', 'Etablissement au sein d''une société','une unité est une partie d''une société, (établissement, succursale, bureau, etc...).','Organisation'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Etablissement au sein d''une société',Help = 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).',Name = 'Organisation' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Vendor_TO_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Vendor_TO_ID'),
(select AD_Process_ID from AD_Process where Value = 'ZInvoiceUnmatched'),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_BPartner Vendors'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Vendor To',
'',
'',
'',
'4955',
12,
'',
40,
'',
'',
'',
'N',
'Y',
'N',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Vendor_TO_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Vendor_TO_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ZInvoiceUnmatched'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_BPartner Vendors'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Vendor To', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '4955', fieldlength = 12, help = '', seqno = 40, valuemax = '', valuemin = '', vformat = '', isactive = 'N', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Vendor_TO_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Vendor_TO_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')), 'nl_BE', 'Y', '','','Vendor To'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Vendor_TO_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'nl_BE');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Vendor To' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Vendor_TO_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'nl_BE';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Vendor_TO_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')), 'fr_FR', 'Y', '','','Fournisseur à'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Vendor_TO_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur à' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Vendor_TO_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZInvoiceUnmatched')) and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Rapport des factures à réconcilier','Rapport des factures à réconcilier',
'R',
'Rapport des factures à réconcilier',
'4955',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'ZInvoiceUnmatched'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Rapport des factures à réconcilier' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Rapport des factures à réconcilier', action = 'R', description = 'Rapport des factures à réconcilier', entitytype = '4955', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ZInvoiceUnmatched'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Rapport des factures à réconcilier' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Rapport des factures à réconcilier'), 'nl_BE', 'Y', 'Rapport des factures à réconcilier','Rapport des factures à réconcilier'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Rapport des factures à réconcilier') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Rapport des factures à réconcilier',Name = 'Rapport des factures à réconcilier' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Rapport des factures à réconcilier') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Rapport des factures à réconcilier'), 'fr_FR', 'Y', 'Rapport des factures à réconcilier','Rapport des factures à réconcilier'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Rapport des factures à réconcilier') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Rapport des factures à réconcilier',Name = 'Rapport des factures à réconcilier' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Rapport des factures à réconcilier') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '46955: EC-SFD9000-003-Rapport Factures Non Matchées Réceptio', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '4955' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Rapport des factures à réconcilier') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Rapport des factures à réconcilier')); 
