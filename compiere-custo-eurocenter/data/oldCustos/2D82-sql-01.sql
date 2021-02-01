insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2D82','78082-Tarifs chez KM',
'',
'',
'Y',
'',
'',
'',
'N',
'3.61',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '2D82' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '78082-Tarifs chez KM', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.61', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2D82' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_PriceList_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_PriceList_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_DocTypeInfo'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Unique identifier of a Price List',
'2D82',
10,
'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',
'Price List',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_PriceList_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_PriceList_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_DocTypeInfo'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Unique identifier of a Price List', entitytype = '2D82', fieldlength = 10, help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.', name = 'Price List', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_PriceList_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')), 'fr_FR', 'Y', 'Price List'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Price List' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')), 'nl_NL', 'Y', 'Price List'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Price List' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Types de document Info' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Document Type_135')),
'Price List',
'Unique identifier of a Price List',
0,
'',
'2D82',
'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',
'',
285,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Types de document Info' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Document Type_135')), name = 'Price List', description = 'Unique identifier of a Price List', displaylength = 0, displaylogic = '', entitytype = '2D82', help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.', obscuretype = '', seqno = 285, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))), 'fr_FR', 'Y', 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.','Unique identifier of a Price List','Price List'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',Description = 'Unique identifier of a Price List',Name = 'Price List' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))), 'nl_NL', 'Y', 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.','Unique identifier of a Price List','Price List'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',Description = 'Unique identifier of a Price List',Name = 'Price List' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_PriceList_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocTypeInfo')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Types de document Info' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '78082-Tarifs chez KM', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.61', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2D82' ;

