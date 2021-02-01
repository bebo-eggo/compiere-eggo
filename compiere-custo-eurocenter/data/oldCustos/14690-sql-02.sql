insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'G690','14690 - Correction Catégorie d''article',
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
where not exists (select 1 from AD_EntityType where EntityType = 'G690' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '14690 - Correction Catégorie d''article', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'G690' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_Production_Discrepency_Acct',(select AD_Element_ID from AD_Element where ColumnName = 'Z_Production_Discrepency_Acct'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Account'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_AcctSchema_Default'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'G690',
22,
'',
'Production Discrepency',
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
'R',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Z_Production_Discrepency_Acct'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_AcctSchema_Default'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_Production_Discrepency_Acct'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Account'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_AcctSchema_Default'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'G690', fieldlength = 22, help = '', name = 'Production Discrepency', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_Production_Discrepency_Acct'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_AcctSchema_Default');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Production_Discrepency_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_AcctSchema_Default')), 'fr_FR', 'Y', 'Ecart de coût sur production'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Production_Discrepency_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_AcctSchema_Default')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ecart de coût sur production' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Production_Discrepency_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_AcctSchema_Default')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_Production_Discrepency_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_AcctSchema_Default')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Product'),
(select AD_Tab_ID from AD_Tab where Value = 'Defaults_252' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Accounting Schema_125')),
'Production Discrepency',
'',
0,
'',
'G690',
'',
'',
295,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Production_Discrepency_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_AcctSchema_Default'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Defaults_252' and ad_window_id in (select ad_window_id from ad_window where value = 'Accounting Schema_125')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Product'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Defaults_252' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Accounting Schema_125')), name = 'Production Discrepency', description = '', displaylength = 0, displaylogic = '', entitytype = 'G690', help = '', obscuretype = '', seqno = 295, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Production_Discrepency_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_AcctSchema_Default'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Defaults_252' and ad_window_id in (select ad_window_id from ad_window where value = 'Accounting Schema_125'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Production_Discrepency_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_AcctSchema_Default')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Defaults_252' and ad_window_id in (select ad_window_id from ad_window where value = 'Accounting Schema_125'))), 'fr_FR', 'Y', '','','Ecart de coût sur production'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Production_Discrepency_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_AcctSchema_Default')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Defaults_252' and ad_window_id in (select ad_window_id from ad_window where value = 'Accounting Schema_125'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ecart de coût sur production' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Production_Discrepency_Acct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_AcctSchema_Default')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Defaults_252' and ad_window_id in (select ad_window_id from ad_window where value = 'Accounting Schema_125'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '14690 - Correction Catégorie d''article', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'G690' ;