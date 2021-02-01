insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'escompte2','',
'Y119',
'',
'escompte',
'',
'',
'',
'',
'escompte',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'escompte2' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'Y119', help = '', name = 'escompte', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'escompte', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'escompte2' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='escompte2'), 'nl_BE', 'Y', '','','escompte','','','','','escompte'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='escompte2') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'escompte',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'escompte' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='escompte2') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='escompte2'), 'fr_FR', 'Y', '','','escompte','','','','','escompte'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='escompte2') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'escompte',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'escompte' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='escompte2') and ad_language = 'fr_FR';
insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'escompte2',(select AD_Element_ID from AD_Element where ColumnName = 'escompte2'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'Y119',
22,
'',
'escompte',
'',
0,
'',
'',
0,
'',
'Y',
'Y',
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
'Y',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'escompte2'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'escompte2'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'Y119', fieldlength = 22, help = '', name = 'escompte', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'Y', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'escompte2'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'nl_BE', 'Y', 'escompte'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'escompte' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'fr_FR', 'Y', 'escompte'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'escompte' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')),
'Nouvel escompte',
'',
22,
'',
'Y119',
'',
'',
338,
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
57
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')), name = 'Nouvel escompte', description = '', displaylength = 22, displaylogic = '', entitytype = 'Y119', help = '', obscuretype = '', seqno = 338, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 57 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'nl_BE', 'Y', '','','Nouvel escompte'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nouvel escompte' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'fr_FR', 'Y', '','','Nouvel escompte'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nouvel escompte' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'escompte2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR';