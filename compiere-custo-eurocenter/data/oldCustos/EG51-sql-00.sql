insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG51','EG51 - Devis Frame',
'EG51 - Devis Frame',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EG51' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG51 - Devis Frame', description = 'EG51 - Devis Frame', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG51' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Y_DocType_ID','',
'EG51',
'',
'Journal',
'',
'',
'',
'',
'Journal',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Y_DocType_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG51', help = '', name = 'Journal', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Journal', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Y_DocType_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Y_DocType_ID'), 'fr_FR', 'Y', '','','Journal','','','','','Journal'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Y_DocType_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Journal' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Y_DocType_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Y_DocType_ID'), 'nl_NL', 'Y', '','','Journal','','','','','Journal'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Y_DocType_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Journal' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Y_DocType_ID') and ad_language = 'nl_NL';

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'Document Tpe for QUOT ','C_DocType.DocBaseType IN (''SOO'') AND C_DocType.C_DocType_ID in (1002593,1001674)',
'Document Tpe for QUOT ',
'EG51',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'Document Tpe for QUOT ' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'C_DocType.DocBaseType IN (''SOO'') AND C_DocType.C_DocType_ID in (1002593,1001674)', description = 'Document Tpe for QUOT ', entitytype = 'EG51', type = 'S', isactive = 'Y' 
where Name = 'Document Tpe for QUOT ' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Y_DocType_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Y_DocType_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'C_DocType SO+PO'),
(select AD_Table_ID from AD_Table where TableName = 'C_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'Document Tpe for QUOT '),
'',
'@C_DocTypeTarget_ID@',
'',
'EG51',
10,
'',
'Journal',
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
'Y',
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
80,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Y_DocType_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Y_DocType_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_DocType SO+PO'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'Document Tpe for QUOT '), callout = '', defaultvalue = '@C_DocTypeTarget_ID@', description = '', entitytype = 'EG51', fieldlength = 10, help = '', name = 'Journal', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 80, SUMMARYSEQNO = 0 
where ColumnName = 'Y_DocType_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'fr_FR', 'Y', 'Journal'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Journal' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'nl_NL', 'Y', 'Journal'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Journal' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Devis' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')),
'Journal',
'',
0,
'1=2',
'EG51',
'',
'',
280,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Devis' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Devis' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')), name = 'Journal', description = '', displaylength = 0, displaylogic = '1=2', entitytype = 'EG51', help = '', obscuretype = '', seqno = 280, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Devis' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Devis' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'fr_FR', 'Y', '','','Journal'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Devis' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Devis' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Devis' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'nl_NL', 'Y', '','','Journal'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Devis' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Devis' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG51 - Devis Frame', description = 'EG51 - Devis Frame', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG51' ;

