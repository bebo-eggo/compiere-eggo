insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC42','EC42 - SMP-329',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EC42' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC42 - SMP-329', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC42' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'SalesRep_ID',(select AD_Element_ID from AD_Element where ColumnName = 'SalesRep_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User - SalesRep'),
(select AD_Table_ID from AD_Table where TableName = 'Z_S_S_Famille'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...',
'EC42',
10,
'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.',
'Representative',
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
where not exists (select 1 from AD_Column where ColumnName = 'SalesRep_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'SalesRep_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User - SalesRep'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_S_S_Famille'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...', entitytype = 'EC42', fieldlength = 10, help = 'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.', name = 'Representative', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'SalesRep_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')), 'fr_FR', 'Y', 'Representative'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Representative' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')), 'nl_NL', 'Y', 'Representative'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Representative' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sous_sous_famille' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')),
'Representative',
'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...',
10,
'',
'EC42',
'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.',
'',
0,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sous_sous_famille' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')), name = 'Representative', description = 'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...', displaylength = 10, displaylogic = '', entitytype = 'EC42', help = 'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'fr_FR', 'Y', 'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...','Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.','Acheteur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...',Help = 'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.',Name = 'Acheteur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'nl_NL', 'Y', 'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...','Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.','Representative'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative...',Help = 'Company Agent is acting on behalf of the company with customers (Sales Representative, Customer Service ...) or vendors (Purchasing Agent ...).  It could be an employee or external party.',Name = 'Representative' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SalesRep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC42 - SMP-329', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC42' ;