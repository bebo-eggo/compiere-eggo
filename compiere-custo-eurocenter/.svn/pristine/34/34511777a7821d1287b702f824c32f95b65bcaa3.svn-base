
insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Z_BalanceTiersBNXLS','6',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'ru.compiere.report.RusReportStarter',
'Business Partner Per Country XLS',
'21XR',
'',
'balance_tiersBNXLS.jasper',
'',
'Business Partner Per Country XLS',
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
where not exists (select 1 from AD_Process where Value = 'Z_BalanceTiersBNXLS' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '6', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'ru.compiere.report.RusReportStarter', description = 'Business Partner Per Country XLS', entitytype = '21XR', help = '', jasperreport = 'balance_tiersBNXLS.jasper', procedurename = '', name = 'Business Partner Per Country XLS', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'Y', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Z_BalanceTiersBNXLS' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Z_BalanceTiersBNXLS'), 'fr_FR', 'Y', 'Balance Tiers Par Pays XLS','','Balance Tiers Par Pays XLS'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Z_BalanceTiersBNXLS') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Balance Tiers Par Pays XLS',Help = '',Name = 'Balance Tiers Par Pays XLS' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Z_BalanceTiersBNXLS') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Z_BalanceTiersBNXLS'), 'nl_NL', 'Y', 'Business Partner Per Country XLS','','Business Partner Per Country XLS'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Z_BalanceTiersBNXLS') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Business Partner Per Country XLS',Help = '',Name = 'Business Partner Per Country XLS' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Z_BalanceTiersBNXLS') and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Summary',(select AD_Element_ID from AD_Element where ColumnName = 'Summary'),
(select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Summary',
'N',
'',
'Textual summary of this request',
'21XR',
1,
'The Summary allows free form text entry of a recap of this request.',
60,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'Summary'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Summary'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Summary', defaultvalue = 'N', defaultvalue2 = '', description = 'Textual summary of this request', entitytype = '21XR', fieldlength = 1, help = 'The Summary allows free form text entry of a recap of this request.', seqno = 60, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Summary'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Summary' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')), 'fr_FR', 'Y', 'Résumé de la requête','Permet de saisir un résumé de la requête.','Résumé'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Summary' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Résumé de la requête',Help = 'Permet de saisir un résumé de la requête.',Name = 'Résumé' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Summary' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Summary' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')), 'nl_NL', 'Y', 'Tekstuele samenvatting van deze aanvraag.','De samenvatting biedt de mogelijkheid voor een vrije invoer van tekst als een samenvatting van deze aanvraag.','Samenvatting'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Summary' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Tekstuele samenvatting van deze aanvraag.',Help = 'De samenvatting biedt de mogelijkheid voor een vrije invoer van tekst als een samenvatting van deze aanvraag.',Name = 'Samenvatting' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Summary' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'DateFrom',(select AD_Element_ID from AD_Element where ColumnName = 'DateFrom'),
(select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Date From',
'@#Date@',
'',
'Starting date for a range',
'21XR',
0,
'The Date From indicates the starting date of a range.',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'DateFrom'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DateFrom'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Date From', defaultvalue = '@#Date@', defaultvalue2 = '', description = 'Starting date for a range', entitytype = '21XR', fieldlength = 0, help = 'The Date From indicates the starting date of a range.', seqno = 40, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'DateFrom'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')), 'fr_FR', 'Y', 'Date de début de période','Indique le début d''une période (incluse).','Date début'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date de début de période',Help = 'Indique le début d''une période (incluse).',Name = 'Date début' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')), 'nl_NL', 'Y', 'Start datum voor een periode.','De vanaf datum geeft de startdatum van een periode aan.','Vanaf Datum'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Start datum voor een periode.',Help = 'De vanaf datum geeft de startdatum van een periode aan.',Name = 'Vanaf Datum' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateFrom' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'IsSOTrx',(select AD_Element_ID from AD_Element where ColumnName = 'IsSOTrx'),
(select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Sales Transaction',
'Y',
'',
'This is a Sales Transaction',
'21XR',
1,
'The Sales Transaction checkbox indicates if this item is a Sales Transaction.',
50,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'IsSOTrx'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsSOTrx'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Sales Transaction', defaultvalue = 'Y', defaultvalue2 = '', description = 'This is a Sales Transaction', entitytype = '21XR', fieldlength = 1, help = 'The Sales Transaction checkbox indicates if this item is a Sales Transaction.', seqno = 50, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'IsSOTrx'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='IsSOTrx' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')), 'fr_FR', 'Y', 'Ceci est une transaction de vente','Indique que cet enregistrement est une transaction de vente.','Transaction vente'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='IsSOTrx' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ceci est une transaction de vente',Help = 'Indique que cet enregistrement est une transaction de vente.',Name = 'Transaction vente' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='IsSOTrx' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='IsSOTrx' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')), 'nl_NL', 'Y', 'Dit is een verkoop transactie','De checkbox verkoop transactie geeft aan of dit item een verkoop transactie is.','Verkoop Transactie'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='IsSOTrx' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Dit is een verkoop transactie',Help = 'De checkbox verkoop transactie geeft aan of dit item een verkoop transactie is.',Name = 'Verkoop Transactie' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='IsSOTrx' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_AcctSchema_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_AcctSchema_ID'),
(select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_AcctSchema validation'),
'Accounting Schema',
'',
'',
'Rules for accounting',
'21XR',
0,
'An Accounting Schema defines the rules used in accounting such as costing method, currency and calendar',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_AcctSchema_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_AcctSchema_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_AcctSchema validation'), name = 'Accounting Schema', defaultvalue = '', defaultvalue2 = '', description = 'Rules for accounting', entitytype = '21XR', fieldlength = 0, help = 'An Accounting Schema defines the rules used in accounting such as costing method, currency and calendar', seqno = 30, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_AcctSchema_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')), 'fr_FR', 'Y', 'Définit les paramètres d''une écriture comptable','Définit les paramètres d''une écriture comptable tels que devises, dates, comptes etc...','Plan comptable'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Définit les paramètres d''une écriture comptable',Help = 'Définit les paramètres d''une écriture comptable tels que devises, dates, comptes etc...',Name = 'Plan comptable' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')), 'nl_NL', 'Y', 'Stelsel van grootboekrekeningen','Een rekening stelsel geeft de boekhoudregels zoals costing method, valuta en kalenderjaar aan.','Rekening Stelsel'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Stelsel van grootboekrekeningen',Help = 'Een rekening stelsel geeft de boekhoudregels zoals costing method, valuta en kalenderjaar aan.',Name = 'Rekening Stelsel' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_AcctSchema_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Trx Security validation'),
'Tenant',
'',
'',
'Identifies the Client/Tenant for this installation.',
'21XR',
0,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Trx Security validation'), name = 'Tenant', defaultvalue = '', defaultvalue2 = '', description = 'Identifies the Client/Tenant for this installation.', entitytype = '21XR', fieldlength = 0, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')), 'fr_FR', 'Y', 'Nom de l''entreprise titulaire de la base de données (DB)','','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Help = '',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')), 'nl_NL', 'Y', 'Client voor deze installatie.','Een client is een bedrijf of een rechtspersoon.','Client'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Client voor deze installatie.',Help = 'Een client is een bedrijf of een rechtspersoon.',Name = 'Client' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Organization',
'0',
'',
'Organizational entity within Tenant',
'21XR',
0,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Organization', defaultvalue = '0', defaultvalue2 = '', description = 'Organizational entity within Tenant', entitytype = '21XR', fieldlength = 0, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')), 'fr_FR', 'Y', 'Etablissement au sein d''une société','une unité est une partie d''une société, (établissement, succursale, bureau, etc...).','Organisation'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Etablissement au sein d''une société',Help = 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).',Name = 'Organisation' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')), 'nl_NL', 'Y', 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Organisatie'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Help = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Name = 'Organisatie' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiersBNXLS')) and ad_language = 'nl_NL';



insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Balance Tiers Par Pays XLS','Business Partner Par Country XLS',
'R',
'',
'21XR',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Balance Tiers Par Pays XLS' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Business Partner Par Country XLS', action = 'R', description = '', entitytype = '21XR', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiersBNXLS'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Balance Tiers Par Pays XLS' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Balance Tiers Par Pays XLS'), 'fr_FR', 'Y', '','Balance Tiers Par Pays XLS'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Balance Tiers Par Pays XLS') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Balance Tiers Par Pays XLS' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Balance Tiers Par Pays XLS') and ad_language = 'fr_FR';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Balance Tiers Par Pays XLS'), 'nl_NL', 'Y', '','Balance Tiers Par Pays XLS'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Balance Tiers Par Pays XLS') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Balance Tiers Par Pays XLS' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Balance Tiers Par Pays XLS') and ad_language = 'nl_NL';



INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Balance Tiers Par Pays XLS') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Balance Tiers Par Pays XLS')); 

