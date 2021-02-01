insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC37','EC37 - Quantité transfert',
'',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EC37' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC37 - Quantité transfert', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC37' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsTftTo','',
'EC37',
'',
'Transfert du magasin d''origine',
'',
'',
'',
'',
'Transfert du magasin d''origine',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsTftTo' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC37', help = '', name = 'Transfert du magasin d''origine', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Transfert du magasin d''origine', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsTftTo' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsTftTo'), 'nl_NL', 'Y', '','','Transfert du magasin d''origine','','','','','Transfert du magasin d''origine'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTftTo') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Transfert du magasin d''origine',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Transfert du magasin d''origine' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTftTo') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsTftTo'), 'fr_FR', 'Y', '','','Transfert du magasin d''origine','','','','','Transfert du magasin d''origine'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTftTo') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Transfert du magasin d''origine',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Transfert du magasin d''origine' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTftTo') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsTftFrom','',
'EC37',
'',
'Transfert du magasin de destination',
'',
'',
'',
'',
'Transfert du magasin de destination',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsTftFrom' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC37', help = '', name = 'Transfert du magasin de destination', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Transfert du magasin de destination', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsTftFrom' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsTftFrom'), 'nl_NL', 'Y', '','','Transfert du magasin de destination','','','','','Transfert du magasin de destination'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTftFrom') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Transfert du magasin de destination',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Transfert du magasin de destination' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTftFrom') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsTftFrom'), 'fr_FR', 'Y', '','','Transfert du magasin de destination','','','','','Transfert du magasin de destination'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTftFrom') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Transfert du magasin de destination',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Transfert du magasin de destination' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsTftFrom') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsTftFrom',(select AD_Element_ID from AD_Element where ColumnName = 'IsTftFrom'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_PosWfAction'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EC37',
1,
'',
'Transfert du magasin de destination',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsTftFrom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsTftFrom'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_PosWfAction'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EC37', fieldlength = 1, help = '', name = 'Transfert du magasin de destination', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsTftFrom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')), 'nl_NL', 'Y', 'Transfert du magasin de destination'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Transfert du magasin de destination' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')), 'fr_FR', 'Y', 'Transfert du magasin de destination'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Transfert du magasin de destination' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Action POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'PosWfAction')),
'Transfert du magasin de destination',
'',
1,
'',
'EC37',
'',
'',
190,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Action POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'PosWfAction')), name = 'Transfert du magasin de destination', description = '', displaylength = 1, displaylogic = '', entitytype = 'EC37', help = '', obscuretype = '', seqno = 190, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'))), 'nl_NL', 'Y', '','','Transfert du magasin de destination'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Transfert du magasin de destination' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'))), 'fr_FR', 'Y', '','','Transfert du magasin de destination'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Transfert du magasin de destination' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsTftFrom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC37 - Quantité transfert', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC37' ;

