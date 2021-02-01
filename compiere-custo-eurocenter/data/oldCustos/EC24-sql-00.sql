insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC24','EC24 - UoM DA',
'',
'',
'Y',
'',
'',
'',
'Y',
'3.6.1',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'EC24' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC24 - UoM DA', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '3.6.1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC24' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_UOM_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_UOM_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_RequisitionLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Unit of Measure',
'EC24',
22,
'The UOM defines a unique non monetary Unit of Measure',
'UOM',
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
'(SELECT C_Uom_ID from M_Product_PO where M_PRODUCT_ID=m_RequisitionLine.M_Product_ID and ISCURRENTVENDOR =''Y'')',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_UOM_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_UOM_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_RequisitionLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Unit of Measure', entitytype = 'EC24', fieldlength = 22, help = 'The UOM defines a unique non monetary Unit of Measure', name = 'UOM', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '(SELECT C_Uom_ID from M_Product_PO where M_PRODUCT_ID=m_RequisitionLine.M_Product_ID and ISCURRENTVENDOR =''Y'')', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_UOM_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')), 'nl_NL', 'Y', 'UOM'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'UOM' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')), 'fr_FR', 'Y', 'UOM'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'UOM' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Requisition Line_642' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Requisition_322')),
'UOM',
'Unit of Measure',
26,
'',
'EC24',
'The UOM defines a unique non monetary Unit of Measure',
'',
67,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Requisition Line_642' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Requisition_322')), name = 'UOM', description = 'Unit of Measure', displaylength = 26, displaylogic = '', entitytype = 'EC24', help = 'The UOM defines a unique non monetary Unit of Measure', obscuretype = '', seqno = 67, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'))), 'nl_NL', 'Y', 'Unit of Measure','The UOM defines a unique non monetary Unit of Measure','UOM'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unit of Measure',Help = 'The UOM defines a unique non monetary Unit of Measure',Name = 'UOM' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'))), 'fr_FR', 'Y', 'Unit of Measure','The UOM defines a unique non monetary Unit of Measure','Unité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unit of Measure',Help = 'The UOM defines a unique non monetary Unit of Measure',Name = 'Unité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_UOM_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC24 - UoM DA', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '3.6.1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC24' ;

