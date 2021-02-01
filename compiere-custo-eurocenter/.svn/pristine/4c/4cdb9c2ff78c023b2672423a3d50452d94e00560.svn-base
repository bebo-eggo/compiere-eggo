insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC17','Import Article - Description NL',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EC17' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'Import Article - Description NL', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC17' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Description_nl_NL',(select AD_Element_ID from AD_Element where ColumnName = 'Description_nl_NL'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC17',
255,
'',
'Drescription Nl',
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
where not exists (select 1 from AD_Column where ColumnName = 'Description_nl_NL'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Description_nl_NL'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC17', fieldlength = 255, help = '', name = 'Drescription Nl', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Description_nl_NL'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'nl_NL', 'Y', 'Drescription Nl'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Drescription Nl' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')), 'fr_FR', 'Y', 'Drescription Nl'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Drescription Nl' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')),
'Drescription Nl',
'',
60,
'',
'EC17',
'',
'',
95,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Product_442' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Product_247')), name = 'Drescription Nl', description = '', displaylength = 60, displaylogic = '', entitytype = 'EC17', help = '', obscuretype = '', seqno = 95, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'nl_NL', 'Y', '','','Drescription Nl'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Drescription Nl' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))), 'fr_FR', 'Y', '','','Drescription Nl'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Drescription Nl' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description_nl_NL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Product_442' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Product_247'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'Import Article - Description NL', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC17' ;

