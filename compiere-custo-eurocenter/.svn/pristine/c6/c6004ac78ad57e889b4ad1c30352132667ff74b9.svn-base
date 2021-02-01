insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J002','J002 - NEW FIELD POS',
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
where not exists (select 1 from AD_EntityType where EntityType = 'J002' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J002 - NEW FIELD POS', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J002' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsCashier','',
'J002',
'',
'IsCashier',
'',
'',
'',
'',
'IsCashier',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsCashier' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'J002', help = '', name = 'IsCashier', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'IsCashier', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsCashier' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsCashier'), 'nl_BE', 'Y', '','','IsCashier','','','','','IsCashier'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCashier') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsCashier',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsCashier' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCashier') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsCashier'), 'fr_FR', 'Y', '','','IsCashier','','','','','IsCashier'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCashier') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsCashier',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsCashier' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCashier') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsCashier',(select AD_Element_ID from AD_Element where ColumnName = 'IsCashier'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_PosNumber'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'J002',
1,
'',
'IsCashier',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsCashier'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsCashier'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_PosNumber'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'J002', fieldlength = 1, help = '', name = 'IsCashier', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsCashier'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')), 'nl_BE', 'Y', 'IsCashier'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsCashier' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')), 'fr_FR', 'Y', 'IsCashier'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsCashier' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Pos En Ligne' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Pos En Ligne')),
'IsCashier',
'',
1,
'',
'J002',
'',
'',
70,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos En Ligne' and ad_window_id in (select ad_window_id from ad_window where value = 'Pos En Ligne')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Pos En Ligne' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Pos En Ligne')), name = 'IsCashier', description = '', displaylength = 1, displaylogic = '', entitytype = 'J002', help = '', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos En Ligne' and ad_window_id in (select ad_window_id from ad_window where value = 'Pos En Ligne'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos En Ligne' and ad_window_id in (select ad_window_id from ad_window where value = 'Pos En Ligne'))), 'nl_BE', 'Y', '','','IsCashier'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos En Ligne' and ad_window_id in (select ad_window_id from ad_window where value = 'Pos En Ligne'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsCashier' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos En Ligne' and ad_window_id in (select ad_window_id from ad_window where value = 'Pos En Ligne'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos En Ligne' and ad_window_id in (select ad_window_id from ad_window where value = 'Pos En Ligne'))), 'fr_FR', 'Y', '','','IsCashier'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos En Ligne' and ad_window_id in (select ad_window_id from ad_window where value = 'Pos En Ligne'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsCashier' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashier' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Pos En Ligne' and ad_window_id in (select ad_window_id from ad_window where value = 'Pos En Ligne'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J002 - NEW FIELD POS', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J002' ;

