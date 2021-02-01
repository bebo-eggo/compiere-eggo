insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J051','J051 - New fields Download',
'',
'',
'Y',
'',
'',
'',
'N',
'3.6',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'J051' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J051 - New fields Download', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.6', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J051' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DateTo',(select AD_Element_ID from AD_Element where ColumnName = 'DateTo'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_ProductDownload'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'End date of a date range',
'J051',
7,
'The Date To indicates the end date of a range (inclusive)',
'Date To',
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
where not exists (select 1 from AD_Column where ColumnName = 'DateTo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DateTo'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_ProductDownload'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'End date of a date range', entitytype = 'J051', fieldlength = 7, help = 'The Date To indicates the end date of a range (inclusive)', name = 'Date To', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DateTo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')), 'nl_BE', 'Y', 'Date To'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date To' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')), 'fr_FR', 'Y', 'Date To'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date To' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DateFrom',(select AD_Element_ID from AD_Element where ColumnName = 'DateFrom'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_ProductDownload'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Starting date for a range',
'J051',
7,
'The Date From indicates the starting date of a range.',
'Date From',
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
where not exists (select 1 from AD_Column where ColumnName = 'DateFrom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DateFrom'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_ProductDownload'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Starting date for a range', entitytype = 'J051', fieldlength = 7, help = 'The Date From indicates the starting date of a range.', name = 'Date From', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DateFrom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')), 'nl_BE', 'Y', 'Date From'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date From' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')), 'fr_FR', 'Y', 'Date From'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date From' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Download_707' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Date From',
'Starting date for a range',
7,
'',
'J051',
'The Date From indicates the starting date of a range.',
'',
90,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Download_707' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Date From', description = 'Starting date for a range', displaylength = 7, displaylogic = '', entitytype = 'J051', help = 'The Date From indicates the starting date of a range.', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_BE', 'Y', 'Starting date for a range','The Date From indicates the starting date of a range.','Date From'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Starting date for a range',Help = 'The Date From indicates the starting date of a range.',Name = 'Date From' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', 'Starting date for a range','The Date From indicates the starting date of a range.','Date dédut de validité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Starting date for a range',Help = 'The Date From indicates the starting date of a range.',Name = 'Date dédut de validité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Download_707' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Date To',
'End date of a date range',
7,
'',
'J051',
'The Date To indicates the end date of a range (inclusive)',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Download_707' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Date To', description = 'End date of a date range', displaylength = 7, displaylogic = '', entitytype = 'J051', help = 'The Date To indicates the end date of a range (inclusive)', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_BE', 'Y', 'End date of a date range','The Date To indicates the end date of a range (inclusive)','Date To'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'End date of a date range',Help = 'The Date To indicates the end date of a range (inclusive)',Name = 'Date To' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', 'End date of a date range','The Date To indicates the end date of a range (inclusive)','Date de fin de validité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'End date of a date range',Help = 'The Date To indicates the end date of a range (inclusive)',Name = 'Date de fin de validité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductDownload')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Download_707' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J051 - New fields Download', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.6', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J051' ;

