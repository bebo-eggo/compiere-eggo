insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J025','J025 - Transfert de consignation',
'',
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
where not exists (select 1 from AD_EntityType where EntityType = 'J025' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J025 - Transfert de consignation', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J025' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsGenConsignation','',
'J025',
'',
'IsGenConsignation',
'',
'',
'',
'',
'IsGenConsignation',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsGenConsignation' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'J025', help = '', name = 'IsGenConsignation', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'IsGenConsignation', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsGenConsignation' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsGenConsignation'), 'nl_BE', 'Y', '','','IsGenConsignation','','','','','IsGenConsignation'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsGenConsignation') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsGenConsignation',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsGenConsignation' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsGenConsignation') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsGenConsignation'), 'fr_FR', 'Y', '','','Générer Mvt de Consignation','','','','','Générer Mvt de Consignation'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsGenConsignation') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Générer Mvt de Consignation',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Générer Mvt de Consignation' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsGenConsignation') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsGenConsignation',(select AD_Element_ID from AD_Element where ColumnName = 'IsGenConsignation'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_PosWfAction'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'J025',
1,
'',
'IsGenConsignation',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsGenConsignation'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsGenConsignation'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_PosWfAction'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'J025', fieldlength = 1, help = '', name = 'IsGenConsignation', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsGenConsignation'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')), 'nl_BE', 'Y', 'IsGenConsignation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsGenConsignation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')), 'fr_FR', 'Y', 'IsGenConsignation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsGenConsignation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_Movement'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Identifies a Business Partner',
'J025',
22,
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
'Business Partner',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_Movement'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Identifies a Business Partner', entitytype = 'J025', fieldlength = 22, help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', name = 'Business Partner', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')), 'nl_BE', 'Y', 'Business Partner'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')), 'fr_FR', 'Y', 'Business Partner'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Action POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'PosWfAction')),
'IsGenConsignation',
'',
1,
'',
'J025',
'',
'',
0,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Action POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'PosWfAction')), name = 'IsGenConsignation', description = '', displaylength = 1, displaylogic = '', entitytype = 'J025', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'))), 'nl_BE', 'Y', '','','IsGenConsignation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsGenConsignation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'))), 'fr_FR', 'Y', '','','Générer Mvt de Consignation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Générer Mvt de Consignation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Action POS' and ad_window_id in (select ad_window_id from ad_window where value = 'PosWfAction'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_259' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_170')),
'Business Partner',
'Identifies a Business Partner',
22,
'',
'J025',
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_259' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_170')), name = 'Business Partner', description = 'Identifies a Business Partner', displaylength = 22, displaylogic = '', entitytype = 'J025', help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))), 'nl_BE', 'Y', 'Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a Business Partner',Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Name = 'Business Partner' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))), 'fr_FR', 'Y', 'Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a Business Partner',Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Name = 'Business Partner' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J025 - Transfert de consignation', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J025' ;

