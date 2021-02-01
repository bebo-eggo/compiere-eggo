insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E934','70934 (E934) - CODA-Ajout nouveaux champs dans Z_TrxCoda',
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
where not exists (select 1 from AD_EntityType where EntityType = 'E934' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '70934 (E934) - CODA-Ajout nouveaux champs dans Z_TrxCoda', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E934' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_CmsAcct_ID','',
'E934',
'',
'Code imputation Commission',
'',
'',
'',
'',
'Code imputation Commission',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_CmsAcct_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E934', help = '', name = 'Code imputation Commission', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Code imputation Commission', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_CmsAcct_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,PO_PrintName,PO_Name,PO_Description,Help,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_CmsAcct_ID'), 'nl_NL', 'Y', '','Code imputation Commission','Code imputation Commission','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_CmsAcct_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Code imputation Commission',PrintName = 'Code imputation Commission',PO_PrintName = '',PO_Name = '',PO_Description = '',Help = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_CmsAcct_ID') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,PO_PrintName,PO_Name,PO_Description,Help,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_CmsAcct_ID'), 'fr_FR', 'Y', '','Code imputation Commission','Code imputation Commission','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_CmsAcct_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Code imputation Commission',PrintName = 'Code imputation Commission',PO_PrintName = '',PO_Name = '',PO_Description = '',Help = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_CmsAcct_ID') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_StrdCode',(select AD_Element_ID from AD_Element where ColumnName = 'XX_StrdCode'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TrxCODA'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E934',
3,
'',
'Code structure',
'XX_TrxC_Fam!'''' | XX_TrxC_Op!''''',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_StrdCode'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_StrdCode'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TrxCODA'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E934', fieldlength = 3, help = '', name = 'Code structure', readonlylogic = 'XX_TrxC_Fam!'''' | XX_TrxC_Op!''''', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_StrdCode'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')), 'nl_NL', 'Y', 'Code structure'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code structure' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')), 'fr_FR', 'Y', 'Code structure'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code structure' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'C_BPartner (Trx)'),
(select AD_Table_ID from AD_Table where TableName = 'Z_TrxCODA'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Identifies a Business Partner',
'E934',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_BPartner (Trx)'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TrxCODA'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Identifies a Business Partner', entitytype = 'E934', fieldlength = 22, help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', name = 'Business Partner', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')), 'nl_NL', 'Y', 'Relatie'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Relatie' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')), 'fr_FR', 'Y', 'Tiers'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tiers' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_CmsAcct_ID',(select AD_Element_ID from AD_Element where ColumnName = 'XX_CmsAcct_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'C_Charge'),
(select AD_Table_ID from AD_Table where TableName = 'Z_TrxCODA'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E934',
22,
'',
'Code imputation Commission',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'XX_CmsAcct_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_CmsAcct_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_Charge'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TrxCODA'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E934', fieldlength = 22, help = '', name = 'Code imputation Commission', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_CmsAcct_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')), 'nl_NL', 'Y', 'Code imputation Commission'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code imputation Commission' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')), 'fr_FR', 'Y', 'Code imputation Commission'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code imputation Commission' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transaction CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Charge_161')),
'Business Partner',
'Identifies a Business Partner',
22,
'',
'E934',
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
'',
75,
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
75
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transaction CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Charge_161')), name = 'Business Partner', description = 'Identifies a Business Partner', displaylength = 22, displaylogic = '', entitytype = 'E934', help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', obscuretype = '', seqno = 75, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 75 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))), 'nl_NL', 'Y', 'Relatie','Geeft een relatie aan.','Een relatie is iedereen met wie u interactie heeft. Dit omvat bijvoorbeeld leveranciers, klanten, peroneelsleden en verkopers.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Relatie',Description = 'Geeft een relatie aan.',Help = 'Een relatie is iedereen met wie u interactie heeft. Dit omvat bijvoorbeeld leveranciers, klanten, peroneelsleden en verkopers.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))), 'fr_FR', 'Y', 'Tiers','Identifie un tiers','Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tiers',Description = 'Identifie un tiers',Help = 'Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transaction CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Charge_161')),
'Code imputation Commission',
'',
14,
'',
'E934',
'',
'',
80,
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
80
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transaction CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Charge_161')), name = 'Code imputation Commission', description = '', displaylength = 14, displaylogic = '', entitytype = 'E934', help = '', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 80 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))), 'nl_NL', 'Y', 'Code imputation Commission','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code imputation Commission',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))), 'fr_FR', 'Y', 'Code imputation Commission','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code imputation Commission',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_CmsAcct_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transaction CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Charge_161')),
'Code structure',
'',
3,
'',
'E934',
'',
'',
70,
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
70
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transaction CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Charge_161')), name = 'Code structure', description = '', displaylength = 3, displaylogic = '', entitytype = 'E934', help = '', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 70 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))), 'nl_NL', 'Y', 'Code structure','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code structure',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))), 'fr_FR', 'Y', 'Code structure','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code structure',Description = '',Help = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_StrdCode' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transaction CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '70934 (E934) - CODA-Ajout nouveaux champs dans Z_TrxCoda', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E934' ;

