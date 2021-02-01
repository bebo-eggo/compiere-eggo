insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J029','J029 - POS Tax',
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
where not exists (select 1 from AD_EntityType where EntityType = 'J029' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J029 - POS Tax', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J029' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Tax_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Tax_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_PosOrderLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Tax identifier',
'J029',
22,
'The Tax indicates the type of tax used in document line.',
'Tax',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Tax_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Tax_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_PosOrderLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Tax identifier', entitytype = 'J029', fieldlength = 22, help = 'The Tax indicates the type of tax used in document line.', name = 'Tax', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Tax_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')), 'nl_BE', 'Y', 'Tax'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tax' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')), 'fr_FR', 'Y', 'Tax'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tax' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsPosDisplay',(select AD_Element_ID from AD_Element where ColumnName = 'IsPosDisplay'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Tax'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'J029',
1,
'',
'IsPosDisplay',
'',
0,
'',
'',
1,
'',
'Y',
'N',
'N',
'N',
'N',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsPosDisplay'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsPosDisplay'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Tax'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'J029', fieldlength = 1, help = '', name = 'IsPosDisplay', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsPosDisplay'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')), 'nl_BE', 'Y', 'IsPosDisplay'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsPosDisplay' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')), 'fr_FR', 'Y', 'IsPosDisplay'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsPosDisplay' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Pos Line' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')),
'Tax',
'Tax identifier',
22,
'',
'J029',
'The Tax indicates the type of tax used in document line.',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos Line' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Pos Line' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')), name = 'Tax', description = 'Tax identifier', displaylength = 22, displaylogic = '', entitytype = 'J029', help = 'The Tax indicates the type of tax used in document line.', obscuretype = '', seqno = 260, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos Line' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos Line' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'nl_BE', 'Y', 'Tax identifier','The Tax indicates the type of tax used in document line.','Tax'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos Line' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Tax identifier',Help = 'The Tax indicates the type of tax used in document line.',Name = 'Tax' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos Line' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos Line' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'fr_FR', 'Y', 'Tax identifier','The Tax indicates the type of tax used in document line.','Tax'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos Line' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Tax identifier',Help = 'The Tax indicates the type of tax used in document line.',Name = 'Tax' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Tax_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos Line' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Tax Rate (Audaxis)_Tax' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Tax Rate (Audaxis)')),
'IsPosDisplay',
'',
1,
'',
'J029',
'',
'',
220,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Tax Rate (Audaxis)_Tax' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Tax Rate (Audaxis)')), name = 'IsPosDisplay', description = '', displaylength = 1, displaylogic = '', entitytype = 'J029', help = '', obscuretype = '', seqno = 220, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))), 'nl_BE', 'Y', '','','IsPosDisplay'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsPosDisplay' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))), 'fr_FR', 'Y', '','','Visible POS '
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Visible POS ' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsPosDisplay' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Tax')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Rate (Audaxis)_Tax' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Rate (Audaxis)'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J029 - POS Tax', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J029' ;

