 ALTER TABLE I_PosOrder ADD DateExported DATE;
 ALTER TABLE I_PosOrder ADD IsExported CHAR(1) DEFAULT 'N' CHECK (IsExported IN ('Y','N'));
 ALTER TABLE Z_PosNumber ADD VersionNo NVARCHAR2(22);
 
 insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J003','J003 - IsExported &'||' DateExported',
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
where not exists (select 1 from AD_EntityType where EntityType = 'J003' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J003 - IsExported &'||' DateExported', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J003' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'DateExported','',
'J003',
'',
'DateExported',
'',
'',
'',
'',
'DateExported',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'DateExported' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'J003', help = '', name = 'DateExported', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'DateExported', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'DateExported' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='DateExported'), 'nl_BE', 'Y', '','','DateExported','','','','','DateExported'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='DateExported') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'DateExported',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'DateExported' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='DateExported') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='DateExported'), 'fr_FR', 'Y', '','','Date d''exportation','','','','','Date d''exportation'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='DateExported') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Date d''exportation',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Date d''exportation' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='DateExported') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DateExported',(select AD_Element_ID from AD_Element where ColumnName = 'DateExported'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_PosOrder'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'J003',
9,
'',
'DateExported',
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
where not exists (select 1 from AD_Column where ColumnName = 'DateExported'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DateExported'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_PosOrder'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'J003', fieldlength = 9, help = '', name = 'DateExported', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DateExported'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')), 'nl_BE', 'Y', 'DateExported'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'DateExported' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')), 'fr_FR', 'Y', 'Date d''exportation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date d''exportation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsExported',(select AD_Element_ID from AD_Element where ColumnName = 'IsExported'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_PosOrder'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'Is data exported or imported?',
'J003',
1,
'',
'Export data',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsExported'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsExported'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_PosOrder'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = 'Is data exported or imported?', entitytype = 'J003', fieldlength = 1, help = '', name = 'Export data', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsExported'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')), 'nl_BE', 'Y', 'Export data'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Export data' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')), 'fr_FR', 'Y', 'Données Exportées'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Données Exportées' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'VersionNo',(select AD_Element_ID from AD_Element where ColumnName = 'VersionNo'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_PosNumber'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Version Number',
'J003',
22,
'',
'Version No',
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
where not exists (select 1 from AD_Column where ColumnName = 'VersionNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'VersionNo'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_PosNumber'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Version Number', entitytype = 'J003', fieldlength = 22, help = '', name = 'Version No', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'VersionNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='VersionNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')), 'nl_BE', 'Y', 'Version No'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VersionNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Version No' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VersionNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='VersionNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')), 'fr_FR', 'Y', 'N° Version'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VersionNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° Version' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VersionNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosNumber')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'POS Header' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')),
'DateExported',
'',
9,
'',
'J003',
'',
'',
190,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'POS Header' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')), name = 'DateExported', description = '', displaylength = 9, displaylogic = '', entitytype = 'J003', help = '', obscuretype = '', seqno = 190, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'nl_BE', 'Y', '','','DateExported'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'DateExported' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'fr_FR', 'Y', '','','Date d''exportation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Date d''exportation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'POS Header' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')),
'Export data',
'Is data exported or imported?',
1,
'',
'J003',
'',
'',
189,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'POS Header' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')), name = 'Export data', description = 'Is data exported or imported?', displaylength = 1, displaylogic = '', entitytype = 'J003', help = '', obscuretype = '', seqno = 189, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'nl_BE', 'Y', 'Is data exported or imported?','','Export data'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Is data exported or imported?',Help = '',Name = 'Export data' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'fr_FR', 'Y', 'Les données sont-elles exportées ou importées?','','Export données'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Les données sont-elles exportées ou importées?',Help = '',Name = 'Export données' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsExported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrder')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'POS Header' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J003 - IsExported &'||' DateExported', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J003' ;

