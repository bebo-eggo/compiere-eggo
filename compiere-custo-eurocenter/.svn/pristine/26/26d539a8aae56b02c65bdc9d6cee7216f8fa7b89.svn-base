insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2KYA','2KYA - 84938: Modification processus Import Facture Nobilia:',
'Evolution #84938 (Entity Type : 2KYA)-Modification processus Import Facture Nobilia: Journal Achat',
'',
'Y',
'',
'',
'',
'N',
'0',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '2KYA' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2KYA - 84938: Modification processus Import Facture Nobilia:', description = 'Evolution #84938 (Entity Type : 2KYA)-Modification processus Import Facture Nobilia: Journal Achat', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2KYA' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_InvTypeImport','',
'2KYA',
'',
'Type Import Facture',
'',
'',
'',
'',
'Type Import Facture',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_InvTypeImport' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2KYA', help = '', name = 'Type Import Facture', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Type Import Facture', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_InvTypeImport' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_InvTypeImport'), 'fr_FR', 'Y', '','','Type Import Facture','','','','','Type Import Facture'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_InvTypeImport') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Type Import Facture',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Type Import Facture' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_InvTypeImport') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_InvTypeImport'), 'nl_NL', 'Y', '','','Type Import Facture','','','','','Type Import Facture'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_InvTypeImport') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Type Import Facture',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Type Import Facture' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_InvTypeImport') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_InvTypeImport',(select AD_Element_ID from AD_Element where ColumnName = 'Z_InvTypeImport'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_DocTypeInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2KYA',
30,
'',
'Type Import Facture',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_InvTypeImport'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_InvTypeImport'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_DocTypeInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2KYA', fieldlength = 30, help = '', name = 'Type Import Facture', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_InvTypeImport'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')), 'fr_FR', 'Y', 'Type Import Facture'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type Import Facture' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')), 'nl_NL', 'Y', 'Type Import Facture'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type Import Facture' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types de document Info' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Document Type_135')),
'Type Import Facture',
'',
0,
'',
'2KYA',
'',
'',
275,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types de document Info' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Document Type_135')), name = 'Type Import Facture', description = '', displaylength = 0, displaylogic = '', entitytype = '2KYA', help = '', obscuretype = '', seqno = 275, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))), 'fr_FR', 'Y', '','','Type Import Facture'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Type Import Facture' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))), 'nl_NL', 'Y', '','','Type Import Facture'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Type Import Facture' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_InvTypeImport' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2KYA - 84938: Modification processus Import Facture Nobilia:', description = 'Evolution #84938 (Entity Type : 2KYA)-Modification processus Import Facture Nobilia: Journal Achat', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2KYA' ;

