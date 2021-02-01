insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'3N2R','3N2R-119896',
'',
'',
'Y',
'',
'',
'',
'N',
'50',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '3N2R' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '3N2R-119896', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '50', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '3N2R' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_Role_Able_Exped','',
'3N2R',
'',
'Autorisation Expédition par rôle',
'',
'',
'',
'',
'Autorisation Expédition par rôle',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_Role_Able_Exped' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '3N2R', help = '', name = 'Autorisation Expédition par rôle', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Autorisation Expédition par rôle', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_Role_Able_Exped' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Help,PO_Help,PO_Name,PO_PrintName,Name,Description,PO_Description,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_Role_Able_Exped'), 'fr_FR', 'Y', '','','','','Autorisation Expédition par rôle','','','Autorisation Expédition par rôle'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Role_Able_Exped') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',PO_Help = '',PO_Name = '',PO_PrintName = '',Name = 'Autorisation Expédition par rôle',Description = '',PO_Description = '',PrintName = 'Autorisation Expédition par rôle' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Role_Able_Exped') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Help,PO_Help,PO_Name,PO_PrintName,Name,Description,PO_Description,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_Role_Able_Exped'), 'nl_NL', 'Y', '','','','','Autorisation Expédition par rôle','','','Autorisation Expédition par rôle'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Role_Able_Exped') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',PO_Help = '',PO_Name = '',PO_PrintName = '',Name = 'Autorisation Expédition par rôle',Description = '',PO_Description = '',PrintName = 'Autorisation Expédition par rôle' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Role_Able_Exped') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_Role_Able_Exped',(select AD_Element_ID from AD_Element where ColumnName = 'XX_Role_Able_Exped'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_Product_Category'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3N2R',
1,
'',
'Autorisation Expédition par rôle',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_Role_Able_Exped'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_Role_Able_Exped'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_Product_Category'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3N2R', fieldlength = 1, help = '', name = 'Autorisation Expédition par rôle', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_Role_Able_Exped'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category')), 'fr_FR', 'Y', 'Autorisation Expédition par rôle'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Autorisation Expédition par rôle' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category')), 'nl_NL', 'Y', 'Autorisation Expédition par rôle'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Autorisation Expédition par rôle' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_Role_Able_Exped',(select AD_Element_ID from AD_Element where ColumnName = 'XX_Role_Able_Exped'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3N2R',
1,
'',
'Autorisation Expédition par rôle',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_Role_Able_Exped'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_Role_Able_Exped'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3N2R', fieldlength = 1, help = '', name = 'Autorisation Expédition par rôle', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_Role_Able_Exped'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')), 'fr_FR', 'Y', 'Autorisation Expédition par rôle'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Autorisation Expédition par rôle' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')), 'nl_NL', 'Y', 'Autorisation Expédition par rôle'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Autorisation Expédition par rôle' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_Role_Able_Exped',(select AD_Element_ID from AD_Element where ColumnName = 'XX_Role_Able_Exped'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_S_Famille'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'3N2R',
1,
'',
'Autorisation Expédition par rôle',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_Role_Able_Exped'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_Role_Able_Exped'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_S_Famille'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '3N2R', fieldlength = 1, help = '', name = 'Autorisation Expédition par rôle', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_Role_Able_Exped'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')), 'fr_FR', 'Y', 'Autorisation Expédition par rôle'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Autorisation Expédition par rôle' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')), 'nl_NL', 'Y', 'Autorisation Expédition par rôle'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Autorisation Expédition par rôle' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Product Category_189' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')),
'Autorisation Expédition par rôle',
'',
1,
'',
'3N2R',
'',
'',
160,
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
9999
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Category_189' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Product Category_189' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')), name = 'Autorisation Expédition par rôle', description = '', displaylength = 1, displaylogic = '', entitytype = '3N2R', help = '', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 9999 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Category_189' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Category_189' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'fr_FR', 'Y', '','Autorisation Expédition par rôle',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Category_189' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Name = 'Autorisation Expédition par rôle',Description = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Category_189' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Category_189' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'nl_NL', 'Y', '','Autorisation Expédition par rôle',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Category_189' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Name = 'Autorisation Expédition par rôle',Description = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product_Category')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Category_189' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sous_Famille' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')),
'Autorisation Expédition par rôle',
'',
1,
'',
'3N2R',
'',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
999
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sous_Famille' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')), name = 'Autorisation Expédition par rôle', description = '', displaylength = 1, displaylogic = '', entitytype = '3N2R', help = '', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 999 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'fr_FR', 'Y', '','Autorisation Expédition par rôle',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Name = 'Autorisation Expédition par rôle',Description = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'nl_NL', 'Y', '','Autorisation Expédition par rôle',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Name = 'Autorisation Expédition par rôle',Description = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_Famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Product_180' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Autorisation Expédition par rôle',
'',
1,
'',
'3N2R',
'',
'',
450,
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
9999
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Product_180' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Autorisation Expédition par rôle', description = '', displaylength = 1, displaylogic = '', entitytype = '3N2R', help = '', obscuretype = '', seqno = 450, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 9999 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', '','Autorisation Expédition par rôle',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Name = 'Autorisation Expédition par rôle',Description = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_NL', 'Y', '','Autorisation Expédition par rôle',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Name = 'Autorisation Expédition par rôle',Description = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Role_Able_Exped' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'XX_ROLE_NOT_01_RECP_M','3N2R',
'Votre rôle ne permet pas la réception.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'XX_ROLE_NOT_01_RECP_M' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '3N2R', msgtext = 'Votre rôle ne permet pas la réception.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'XX_ROLE_NOT_01_RECP_M' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_RECP_M'), 'fr_FR', 'Y', '','Votre rôle ne permet pas la réception'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_RECP_M') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Votre rôle ne permet pas la réception' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_RECP_M') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_RECP_M'), 'nl_NL', 'Y', '','Votre rôle ne permet pas la réception'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_RECP_M') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Votre rôle ne permet pas la réception' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_RECP_M') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'XX_ROLE_NOT_01_EXP','3N2R',
'1000740;1001767',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'XX_ROLE_NOT_01_EXP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '3N2R', msgtext = '1000740;1001767', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'XX_ROLE_NOT_01_EXP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_EXP'), 'fr_FR', 'Y', '','1000740;1001767'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_EXP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = '1000740;1001767' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_EXP') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_EXP'), 'nl_NL', 'Y', '','1000740;1001767'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_EXP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = '1000740;1001767' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_EXP') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'XX_ROLE_NOT_01_RECP','3N2R',
'1000740;1001767',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'XX_ROLE_NOT_01_RECP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '3N2R', msgtext = '1000740;1001767', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'XX_ROLE_NOT_01_RECP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_RECP'), 'fr_FR', 'Y', '','1000740;1001767'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_RECP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = '1000740;1001767' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_RECP') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_RECP'), 'nl_NL', 'Y', '','1000740;1001767'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_RECP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = '1000740;1001767' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_RECP') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'XX_ROLE_NOT_01_EXP_M','3N2R',
'Votre rôle ne permet pas l''expédition sur un xx-01',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'XX_ROLE_NOT_01_EXP_M' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '3N2R', msgtext = 'Votre rôle ne permet pas l''expédition sur un xx-01', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'XX_ROLE_NOT_01_EXP_M' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_EXP_M'), 'fr_FR', 'Y', '','Votre rôle ne permet pas l''expédition sur un xx-01'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_EXP_M') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Votre rôle ne permet pas l''expédition sur un xx-01' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_EXP_M') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_EXP_M'), 'nl_NL', 'Y', '','Votre rôle ne permet pas l''expédition sur un xx-01'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_EXP_M') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Votre rôle ne permet pas l''expédition sur un xx-01' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_ROLE_NOT_01_EXP_M') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '3N2R-119896', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '50', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '3N2R' ;

