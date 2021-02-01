insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J042','J042 - Consignation',
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
where not exists (select 1 from AD_EntityType where EntityType = 'J042' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J042 - Consignation', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J042' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'CONSIGNATION',(select AD_Reference_ID from AD_Reference where Name = 'EGGO-CTX'),
'',
'J042',
'CONSIGNATION',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'CONSIGNATION'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'EGGO-CTX'), description = '', entitytype = 'J042', name = 'CONSIGNATION', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'CONSIGNATION'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CONSIGNATION' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')), 'nl_BE', 'Y', '','CONSIGNATION'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CONSIGNATION' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'CONSIGNATION' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CONSIGNATION' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CONSIGNATION' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')), 'fr_FR', 'Y', '','CONSIGNATION'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CONSIGNATION' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'CONSIGNATION' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CONSIGNATION' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'CONSIGNATION',(select AD_Reference_ID from AD_Reference where Name = 'EGGO-CTX'),
'',
'J042',
'CONSIGNATION',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'CONSIGNATION'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'EGGO-CTX'), description = '', entitytype = 'J042', name = 'CONSIGNATION', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'CONSIGNATION'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CONSIGNATION' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')), 'nl_BE', 'Y', '','CONSIGNATION'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CONSIGNATION' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'CONSIGNATION' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CONSIGNATION' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CONSIGNATION' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')), 'fr_FR', 'Y', '','CONSIGNATION'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CONSIGNATION' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'CONSIGNATION' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CONSIGNATION' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsConsignation','',
'J042',
'',
'IsConsignation',
'',
'',
'',
'',
'IsConsignation',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsConsignation' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'J042', help = '', name = 'IsConsignation', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'IsConsignation', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsConsignation' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsConsignation'), 'nl_BE', 'Y', '','','IsConsignation','','','','','IsConsignation'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsConsignation') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsConsignation',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsConsignation' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsConsignation') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsConsignation'), 'fr_FR', 'Y', '','','IsConsignation','','','','','IsConsignation'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsConsignation') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsConsignation',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsConsignation' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsConsignation') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsConsignation',(select AD_Element_ID from AD_Element where ColumnName = 'IsConsignation'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_DocType'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'J042',
1,
'',
'IsConsignation',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsConsignation'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsConsignation'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_DocType'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'J042', fieldlength = 1, help = '', name = 'IsConsignation', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsConsignation'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')), 'nl_BE', 'Y', 'IsConsignation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsConsignation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')), 'fr_FR', 'Y', 'IsConsignation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsConsignation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Document Type_167' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Document Type_135')),
'IsConsignation',
'',
0,
'',
'J042',
'',
'',
10050,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Document Type_167' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Document Type_135')), name = 'IsConsignation', description = '', displaylength = 0, displaylogic = '', entitytype = 'J042', help = '', obscuretype = '', seqno = 10050, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))), 'nl_BE', 'Y', '','','IsConsignation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsConsignation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))), 'fr_FR', 'Y', '','','Document de Consignation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Document de Consignation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J042 - Consignation', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J042' ;

