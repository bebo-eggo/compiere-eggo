insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'S900','S900 - PartnerGLJournal',
'PartnerGLJournal',
'',
'Y',
'',
'',
'',
'Y',
'361',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'S900' );

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsBPAccount','',
'S900',
'',
'IsBPAccount',
'',
'',
'',
'',
'BP Account',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsBPAccount' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S900', help = '', name = 'IsBPAccount', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'BP Account', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsBPAccount' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsBPAccount'), 'fr_FR', 'Y', '','','Compte Centralisateur','','','','','Compte Centralisateur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsBPAccount') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Compte Centralisateur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Compte Centralisateur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsBPAccount') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsBPAccount',(select AD_Element_ID from AD_Element where ColumnName = 'IsBPAccount'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_ElementValue'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'S900',
1,
'',
'IsBPAccount',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsBPAccount'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_ElementValue'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsBPAccount'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_ElementValue'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'S900', fieldlength = 1, help = '', name = 'IsBPAccount', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsBPAccount'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_ElementValue');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsBPAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_ElementValue')), 'fr_FR', 'Y', 'Compte Centralisateur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsBPAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_ElementValue')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Compte Centralisateur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsBPAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_ElementValue')) and ad_language = 'fr_FR';


insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsBPAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_ElementValue')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Element Value_132' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Account Element_118')),
'IsBPAccount',
'',
1,
'@ElementType@=A &'||' @IsSummary@=N',
'S900',
'',
'',
188,
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
188
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsBPAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_ElementValue'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Element Value_132' and ad_window_id in (select ad_window_id from ad_window where value = 'Account Element_118')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Element Value_132' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Account Element_118')), name = 'IsBPAccount', description = '', displaylength = 1, displaylogic = '@ElementType@=A &'||' @IsSummary@=N', entitytype = 'S900', help = '', obscuretype = '', seqno = 188, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 188 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsBPAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_ElementValue'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Element Value_132' and ad_window_id in (select ad_window_id from ad_window where value = 'Account Element_118'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBPAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_ElementValue')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Element Value_132' and ad_window_id in (select ad_window_id from ad_window where value = 'Account Element_118'))), 'fr_FR', 'Y', '','','Compte Centralisateur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBPAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_ElementValue')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Element Value_132' and ad_window_id in (select ad_window_id from ad_window where value = 'Account Element_118'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Compte Centralisateur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBPAccount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_ElementValue')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Element Value_132' and ad_window_id in (select ad_window_id from ad_window where value = 'Account Element_118'))) and ad_language = 'fr_FR';
