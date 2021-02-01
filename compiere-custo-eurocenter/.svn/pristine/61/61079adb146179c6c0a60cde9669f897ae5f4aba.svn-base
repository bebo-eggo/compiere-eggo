insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'Y174','39174-Ventilation et refacturation',
'',
'',
'Y',
'',
'',
'',
'N',
'3.6.1',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'Y174' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '39174-Ventilation et refacturation', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.6.1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'Y174' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsRefact','',
'Y174',
'',
'Refacturation',
'',
'',
'',
'',
'Refacturation',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsRefact' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'Y174', help = '', name = 'Refacturation', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Refacturation', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsRefact' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsRefact'), 'nl_BE', 'Y', '','','Refacturation','','','','','Refacturation'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsRefact') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Refacturation',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Refacturation' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsRefact') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsRefact'), 'fr_FR', 'Y', '','','Refacturation','','','','','Refacturation'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsRefact') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Refacturation',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Refacturation' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsRefact') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsMag','',
'Y174',
'',
'Magasin',
'',
'',
'',
'',
'Magasin',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsMag' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'Y174', help = '', name = 'Magasin', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Magasin', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsMag' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsMag'), 'nl_BE', 'Y', '','','Magasin','','','','','Magasin'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsMag') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Magasin' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsMag') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsMag'), 'fr_FR', 'Y', '','','Magasin','','','','','Magasin'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsMag') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Magasin' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsMag') and ad_language = 'fr_FR';

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'AD_Org Trx Security validation(ventilation)','AD_Org.AD_Org_ID <> 0 AND AD_Org.IsSummary =''N'' AND AD_Org.IsMag=(CASE @IsMag@ WHEN  ''Y'' THEN ''Y'' ELSE ''N'' END)',
'Not Summary - Not 0   (CASE    WHEN (''@IsSoTrx@''  =''N''    AND @AD_Org_ID@ IN (SELECT AD_Org_ID FROM AD_Org WHERE IsMag=''Y'')) THEN ''Y'' ELSE ''N'' END)',
'Y174',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'AD_Org Trx Security validation(ventilation)' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'AD_Org.AD_Org_ID <> 0 AND AD_Org.IsSummary =''N'' AND AD_Org.IsMag=(CASE @IsMag@ WHEN  ''Y'' THEN ''Y'' ELSE ''N'' END)', description = 'Not Summary - Not 0   (CASE    WHEN (''@IsSoTrx@''  =''N''    AND @AD_Org_ID@ IN (SELECT AD_Org_ID FROM AD_Org WHERE IsMag=''Y'')) THEN ''Y'' ELSE ''N'' END)', entitytype = 'Y174', type = 'S', isactive = 'Y' 
where Name = 'AD_Org Trx Security validation(ventilation)' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsMag',(select AD_Element_ID from AD_Element where ColumnName = 'IsMag'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Org'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'Y174',
1,
'',
'Magasin',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsMag'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsMag'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Org'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'Y174', fieldlength = 1, help = '', name = 'Magasin', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsMag'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')), 'fr_FR', 'Y', 'Magasin'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Magasin' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsRefact',(select AD_Element_ID from AD_Element where ColumnName = 'IsRefact'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Org'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'Y174',
1,
'',
'Refacturation',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsRefact'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsRefact'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Org'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'Y174', fieldlength = 1, help = '', name = 'Refacturation', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsRefact'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')), 'nl_BE', 'Y', ''
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')), 'fr_FR', 'Y', 'isRefact'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'isRefact' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Organization_143' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'Magasin',
'',
0,
'',
'Y174',
'',
'',
12,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Organization_143' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'Magasin', description = '', displaylength = 0, displaylogic = '', entitytype = 'Y174', help = '', obscuretype = '', seqno = 12, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_BE', 'Y', '','','Magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','Magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsMag' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Organization_143' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'Refacturation',
'',
0,
'',
'Y174',
'',
'',
15,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Organization_143' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'Refacturation', description = '', displaylength = 0, displaylogic = '', entitytype = 'Y174', help = '', obscuretype = '', seqno = 15, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_BE', 'Y', '','','Refacturation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Refacturation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','Refacturation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Refacturation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsRefact' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'User2_ID',(select AD_Element_ID from AD_Element where ColumnName = 'User2_ID'),
(select AD_Process_ID from AD_Process where Value = 'RV_Fact_Acct'),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'Account_ID - User2'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'User List 2',
'',
'',
'User defined list element #2',
'Y174',
0,
'The user defined element displays the optional elements that have been defined for this account combination.',
55,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'User2_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'User2_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'RV_Fact_Acct'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Account_ID - User2'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'User List 2', defaultvalue = '', defaultvalue2 = '', description = 'User defined list element #2', entitytype = 'Y174', fieldlength = 0, help = 'The user defined element displays the optional elements that have been defined for this account combination.', seqno = 55, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'User2_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='User2_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct')), 'nl_BE', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='User2_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct')) and ad_language = 'nl_BE');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='User2_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct')) and ad_language = 'nl_BE';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='User2_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct')), 'fr_FR', 'Y', 'User defined list element #2','The user defined element displays the optional elements that have been defined for this account combination.','User List 2'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='User2_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'User defined list element #2',Help = 'The user defined element displays the optional elements that have been defined for this account combination.',Name = 'User List 2' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='User2_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_Fact_Acct')) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '39174-Ventilation et refacturation', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.6.1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'Y174' ;
