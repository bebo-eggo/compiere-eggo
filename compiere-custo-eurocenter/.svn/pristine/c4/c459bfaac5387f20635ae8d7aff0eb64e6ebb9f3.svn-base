insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2ETY','2ETY - Nouveau champs dans les C_Order',
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
where not exists (select 1 from AD_EntityType where EntityType = '2ETY' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2ETY - Nouveau champs dans les C_Order', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2ETY' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_DATELIVRCLI','',
'2ETY',
'',
'Date livraison client',
'',
'',
'',
'',
'Date livraison client',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_DATELIVRCLI' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2ETY', help = '', name = 'Date livraison client', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Date livraison client', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_DATELIVRCLI' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PO_PrintName,PrintName,PO_Name,PO_Description,Help,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_DATELIVRCLI'), 'fr_FR', 'Y', '','Date livraison client','','Date livraison client','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_DATELIVRCLI') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Date livraison client',PO_PrintName = '',PrintName = 'Date livraison client',PO_Name = '',PO_Description = '',Help = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_DATELIVRCLI') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PO_PrintName,PrintName,PO_Name,PO_Description,Help,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_DATELIVRCLI'), 'nl_NL', 'Y', '','Date livraison client','','Date livraison client','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_DATELIVRCLI') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Date livraison client',PO_PrintName = '',PrintName = 'Date livraison client',PO_Name = '',PO_Description = '',Help = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_DATELIVRCLI') and ad_language = 'nl_NL';

insert into AD_FieldGroup (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,Name,entitytype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_FieldGroup'),'Livraison client','2ETY',
'Y'
 from dual  
where not exists (select 1 from AD_FieldGroup where Name = 'Livraison client' );

update AD_FieldGroup set Updated = sysdate, UpdatedBy = 0, entitytype = '2ETY', isactive = 'Y' 
where Name = 'Livraison client' ;

insert into AD_FieldGroup_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_FieldGroup_ID from AD_FieldGroup where Name='Livraison client'), 'fr_FR', 'Y', 'Livraison client'
 from dual  
where not exists (select 1 from AD_FieldGroup_Trl where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Livraison client') and ad_language = 'fr_FR');

update AD_FieldGroup_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Livraison client' where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Livraison client') and ad_language = 'fr_FR';

insert into AD_FieldGroup_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_FieldGroup_ID from AD_FieldGroup where Name='Livraison client'), 'nl_NL', 'Y', 'Livraison client'
 from dual  
where not exists (select 1 from AD_FieldGroup_Trl where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Livraison client') and ad_language = 'nl_NL');

update AD_FieldGroup_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Livraison client' where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Livraison client') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_DATELIVRCLI',(select AD_Element_ID from AD_Element where ColumnName = 'Z_DATELIVRCLI'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2ETY',
7,
'',
'Date livraison client',
'1=1',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_DATELIVRCLI'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_DATELIVRCLI'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2ETY', fieldlength = 7, help = '', name = 'Date livraison client', readonlylogic = '1=1', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_DATELIVRCLI'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'fr_FR', 'Y', 'Date livraison client'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date livraison client' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'nl_NL', 'Y', 'Date livraison client'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date livraison client' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Livraison client'),
(select AD_Tab_ID from AD_Tab where Value = 'Order_186 ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'Date livraison client',
'',
7,
'@C_DocTypeTarget_ID@=1004922 | @C_DocTypeTarget_ID@=1005382 | @C_DocTypeTarget_ID@=1000028 | @C_DocTypeTarget_ID@=1005282 | @C_DocTypeTarget_ID@=1006385',
'2ETY',
'',
'',
255,
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
142
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Livraison client'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Order_186 ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'Date livraison client', description = '', displaylength = 7, displaylogic = '@C_DocTypeTarget_ID@=1004922 | @C_DocTypeTarget_ID@=1005382 | @C_DocTypeTarget_ID@=1000028 | @C_DocTypeTarget_ID@=1005282 | @C_DocTypeTarget_ID@=1006385', entitytype = '2ETY', help = '', obscuretype = '', seqno = 255, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 142 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', 'Date livraison client','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date livraison client',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', 'Date livraison client','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date livraison client',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_DATELIVRCLI' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2ETY - Nouveau champs dans les C_Order', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2ETY' ;

