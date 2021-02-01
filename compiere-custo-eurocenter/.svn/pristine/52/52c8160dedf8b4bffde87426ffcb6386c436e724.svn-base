insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'Z950','Z950 - XlsExportFormat',
'XlsExportFormat on Process',
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
where not exists (select 1 from AD_EntityType where EntityType = 'Z950' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'Z950 - XlsExportFormat', description = 'XlsExportFormat on Process', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'Z950' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XLSExportFormat','XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )',
'Z950',
'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )',
'XLS Export Format',
'',
'',
'',
'',
'XLS Export Format ',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XLSExportFormat' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )', entitytype = 'Z950', help = 'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )', name = 'XLS Export Format', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'XLS Export Format ', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XLSExportFormat' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XLSExportFormat'), 'fr_FR', 'Y', 'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )','XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )','XLS Export Format','','','','','XLS Export Format '
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XLSExportFormat') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )',Help = 'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )',Name = 'XLS Export Format',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'XLS Export Format ' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XLSExportFormat') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XLSExportFormat',(select AD_Element_ID from AD_Element where ColumnName = 'XLSExportFormat'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Process'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )',
'Z950',
2000,
'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )',
'XLS Export Format',
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
where not exists (select 1 from AD_Column where ColumnName = 'XLSExportFormat'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Process'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XLSExportFormat'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Process'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )', entitytype = 'Z950', fieldlength = 2000, help = 'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )', name = 'XLS Export Format', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XLSExportFormat'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Process');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XLSExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Process')), 'fr_FR', 'Y', 'XLS Export Format'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XLSExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Process')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'XLS Export Format' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XLSExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Process')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XLSExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Process')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Report &'||' Process_245' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Report &'||' Process_165')),
'XLS Export Format',
'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )',
0,
'',
'Z950',
'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )',
'',
145,
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
145
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XLSExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Process'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Report &'||' Process_245' and ad_window_id in (select ad_window_id from ad_window where value = 'Report &'||' Process_165')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Report &'||' Process_245' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Report &'||' Process_165')), name = 'XLS Export Format', description = 'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )', displaylength = 0, displaylogic = '', entitytype = 'Z950', help = 'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )', obscuretype = '', seqno = 145, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 145 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XLSExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Process'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Report &'||' Process_245' and ad_window_id in (select ad_window_id from ad_window where value = 'Report &'||' Process_165'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XLSExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Process')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Report &'||' Process_245' and ad_window_id in (select ad_window_id from ad_window where value = 'Report &'||' Process_165'))), 'fr_FR', 'Y', 'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )','XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )','XLS Export Format'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XLSExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Process')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Report &'||' Process_245' and ad_window_id in (select ad_window_id from ad_window where value = 'Report &'||' Process_165'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )',Help = 'XLS Export Format (FORMAT=> P:Property1=Value1;P:Property2=Value2;B:HEADER;B:DETAIL )',Name = 'XLS Export Format' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XLSExportFormat' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Process')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Report &'||' Process_245' and ad_window_id in (select ad_window_id from ad_window where value = 'Report &'||' Process_165'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'Z950 - XlsExportFormat', description = 'XlsExportFormat on Process', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'Z950' ;

