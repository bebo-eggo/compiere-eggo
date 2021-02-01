insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'1Z8P','1Z8P - 64790: SMILE-3219-Modification Sélection Liste de Pri',
'SMILE-3219-Modification Sélection Liste de Prix dans Rapport des inventaires valorisés',
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
where not exists (select 1 from AD_EntityType where EntityType = '1Z8P' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '1Z8P - 64790: SMILE-3219-Modification Sélection Liste de Pri', description = 'SMILE-3219-Modification Sélection Liste de Prix dans Rapport des inventaires valorisés', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '1Z8P' ;

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'M_PriceList_Version for Client and M_PriceList','',
'1Z8P',
'',
'T',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'M_PriceList_Version for Client and M_PriceList' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '1Z8P', help = '', validationtype = 'T', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'M_PriceList_Version for Client and M_PriceList' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='M_PriceList_Version for Client and M_PriceList'), 'fr_FR', 'Y', '','','M_PriceList_Version for Client and M_PriceList'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_PriceList_Version for Client and M_PriceList') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'M_PriceList_Version for Client and M_PriceList' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_PriceList_Version for Client and M_PriceList') and ad_language = 'fr_FR';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='M_PriceList_Version for Client and M_PriceList'), 'nl_NL', 'Y', '','','M_PriceList_Version for Client and M_PriceList'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_PriceList_Version for Client and M_PriceList') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'M_PriceList_Version for Client and M_PriceList' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_PriceList_Version for Client and M_PriceList') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsCostList','',
'1Z8P',
'',
'Liste de Coûts ',
'',
'',
'',
'',
'Liste de Coûts ',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsCostList' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '1Z8P', help = '', name = 'Liste de Coûts ', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Liste de Coûts ', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsCostList' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsCostList'), 'fr_FR', 'Y', '','','Liste de Coûts ','','','','','Liste de Coûts '
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCostList') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Liste de Coûts ',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Liste de Coûts ' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCostList') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsCostList'), 'nl_NL', 'Y', '','','Liste de Coûts ','','','','','Liste de Coûts '
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCostList') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Liste de Coûts ',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Liste de Coûts ' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCostList') and ad_language = 'nl_NL';

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'M_PriceList est CostList','M_PriceList.IsCostList=''Y''',
'',
'1Z8P',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'M_PriceList est CostList' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'M_PriceList.IsCostList=''Y''', description = '', entitytype = '1Z8P', type = 'S', isactive = 'Y' 
where Name = 'M_PriceList est CostList' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsCostList',(select AD_Element_ID from AD_Element where ColumnName = 'IsCostList'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_PriceList'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'''N''',
'',
'1Z8P',
1,
'',
'Liste de Coûts ',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsCostList'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsCostList'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_PriceList'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '''N''', description = '', entitytype = '1Z8P', fieldlength = 1, help = '', name = 'Liste de Coûts ', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsCostList'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList')), 'fr_FR', 'Y', 'Liste de Coûts '
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Liste de Coûts ' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList')), 'nl_NL', 'Y', 'Liste de Coûts '
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Liste de Coûts ' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Price List_191' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Price List_146')),
'Liste de Coûts ',
'',
0,
'',
'1Z8P',
'',
'',
120,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price List_191' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Price List_191' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Price List_146')), name = 'Liste de Coûts ', description = '', displaylength = 0, displaylogic = '', entitytype = '1Z8P', help = '', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price List_191' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price List_191' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))), 'fr_FR', 'Y', '','','Liste de Coûts '
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price List_191' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Liste de Coûts ' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price List_191' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price List_191' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))), 'nl_NL', 'Y', '','','Liste de Coûts '
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price List_191' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Liste de Coûts ' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCostList' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_PriceList')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price List_191' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))) and ad_language = 'nl_NL';

insert into AD_Ref_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Column_Key_ID, ad_table_id, Column_Display_ID, entitytype, orderbyclause, whereclause, isactive, isvaluedisplayed, isDisplayIdentifiers) 
select 0,0,sysdate, sysdate,0,0,(select ad_reference_id from ad_reference where name = 'M_PriceList_Version for Client and M_PriceList'),(select AD_Column_ID from AD_Column where columnName = 'M_PriceList_Version_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'M_PriceList_Version')),
(select AD_Table_ID from AD_Table where TableName = 'M_PriceList_Version'),
(select AD_Column_ID from AD_Column where columnName = 'Name' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'M_PriceList_Version')),
'1Z8P',
'',
'M_PriceList_Version.AD_Client_ID=@#AD_Client_ID@ AND M_PriceList_Version.M_PriceList_ID=@M_PriceList_ID@',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Ref_Table where  ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_PriceList_Version for Client and M_PriceList'));

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'M_PriceList_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Inventaire valorisé par magasin proc.'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'M_PriceList est CostList'),
'Liste de Prix',
'',
'',
'',
'1Z8P',
0,
'',
25,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'M_PriceList_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Inventaire valorisé par magasin proc.'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Inventaire valorisé par magasin proc.'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'M_PriceList est CostList'), name = 'Liste de Prix', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '1Z8P', fieldlength = 0, help = '', seqno = 25, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'M_PriceList_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Inventaire valorisé par magasin proc.');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Inventaire valorisé par magasin proc.')), 'fr_FR', 'Y', '','','Liste de Prix'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Inventaire valorisé par magasin proc.')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Liste de Prix' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Inventaire valorisé par magasin proc.')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Inventaire valorisé par magasin proc.')), 'nl_NL', 'Y', '','','Liste de Prix'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Inventaire valorisé par magasin proc.')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Liste de Prix' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='M_PriceList_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Inventaire valorisé par magasin proc.')) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '1Z8P - 64790: SMILE-3219-Modification Sélection Liste de Pri', description = 'SMILE-3219-Modification Sélection Liste de Prix dans Rapport des inventaires valorisés', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '1Z8P' ;





UPDATE AD_Process_Para
SET ad_val_rule_id =
  (SELECT AD_Val_Rule_ID
  FROM AD_Val_Rule
  WHERE Name = 'M_PriceList_Version by M_PriceList_ID'
  )
WHERE columnname  = 'M_PriceList_Version_ID'
AND ad_process_id =
  (SELECT AD_Process_ID
  FROM AD_Process
  WHERE Value = 'Inventaire valorisé par magasin proc.'
  );
