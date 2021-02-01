insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2JCE','2JCE-83309: Import des factures Fournisseurs: Ajout Co',
'83309  Import des factures Fournisseurs: Ajout Co ',
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
where not exists (select 1 from AD_EntityType where EntityType = '2JCE' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2JCE-83309: Import des factures Fournisseurs: Ajout Co', description = '83309  Import des factures Fournisseurs: Ajout Co ', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2JCE' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_JnlImportInvoice','',
'2JCE',
'',
'Journal Import Facture',
'',
'',
'',
'',
'Journal Import Facture',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_JnlImportInvoice' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2JCE', help = '', name = 'Journal Import Facture', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Journal Import Facture', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_JnlImportInvoice' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_JnlImportInvoice'), 'fr_FR', 'Y', '','','Journal Import Facture','','','','','Journal Import Facture'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_JnlImportInvoice') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal Import Facture',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Journal Import Facture' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_JnlImportInvoice') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_JnlImportInvoice'), 'nl_NL', 'Y', '','','Journal Import Facture','','','','','Journal Import Facture'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_JnlImportInvoice') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal Import Facture',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Journal Import Facture' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_JnlImportInvoice') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_JnlImportCreditNote','',
'2JCE',
'',
'Journal Import Note Cr�dit',
'',
'',
'',
'',
'Journal Import Note Cr�dit',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_JnlImportCreditNote' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2JCE', help = '', name = 'Journal Import Note Cr�dit', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Journal Import Note Cr�dit', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_JnlImportCreditNote' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_JnlImportCreditNote'), 'fr_FR', 'Y', '','','Journal Import Note Cr�dit','','','','','Journal Import Note Cr�dit'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_JnlImportCreditNote') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal Import Note Cr�dit',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Journal Import Note Cr�dit' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_JnlImportCreditNote') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_JnlImportCreditNote'), 'nl_NL', 'Y', '','','Journal Import Note Cr�dit','','','','','Journal Import Note Cr�dit'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_JnlImportCreditNote') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal Import Note Cr�dit',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Journal Import Note Cr�dit' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_JnlImportCreditNote') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_JnlImportInvoice',(select AD_Element_ID from AD_Element where ColumnName = 'Z_JnlImportInvoice'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2JCE',
30,
'',
'Journal Import Facture',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_JnlImportInvoice'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_JnlImportInvoice'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2JCE', fieldlength = 30, help = '', name = 'Journal Import Facture', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_JnlImportInvoice'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'fr_FR', 'Y', 'Journal Import Facture'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Journal Import Facture' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'nl_NL', 'Y', 'Journal Import Facture'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Journal Import Facture' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_JnlImportCreditNote',(select AD_Element_ID from AD_Element where ColumnName = 'Z_JnlImportCreditNote'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_DocType'),
(select AD_Table_ID from AD_Table where TableName = 'C_BPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2JCE',
30,
'',
'Journal Import Note Cr�dit',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_JnlImportCreditNote'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_JnlImportCreditNote'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_DocType'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2JCE', fieldlength = 30, help = '', name = 'Journal Import Note Cr�dit', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_JnlImportCreditNote'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'fr_FR', 'Y', 'Journal Import Note Cr�dit'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Journal Import Note Cr�dit' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'nl_NL', 'Y', 'Journal Import Note Cr�dit'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Journal Import Note Cr�dit' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')),
'Journal Import Facture',
'',
0,
'',
'2JCE',
'',
'',
235,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')), name = 'Journal Import Facture', description = '', displaylength = 0, displaylogic = '', entitytype = '2JCE', help = '', obscuretype = '', seqno = 235, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'fr_FR', 'Y', '','','Journal Import Facture'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal Import Facture' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'nl_NL', 'Y', '','','Journal Import Facture'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal Import Facture' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_JnlImportInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')),
'Journal Import Note Cr�dit',
'',
0,
'',
'2JCE',
'',
'',
236,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')), name = 'Journal Import Note Cr�dit', description = '', displaylength = 0, displaylogic = '', entitytype = '2JCE', help = '', obscuretype = '', seqno = 236, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'fr_FR', 'Y', '','','Journal Import Note Cr�dit'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal Import Note Cr�dit' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'nl_NL', 'Y', '','','Journal Import Note Cr�dit'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Journal Import Note Cr�dit' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_JnlImportCreditNote' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2JCE-83309: Import des factures Fournisseurs: Ajout Co', description = '83309  Import des factures Fournisseurs: Ajout Co ', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2JCE' ;

update AD_Column
set ad_reference_id= 30,
ad_reference_value_id = (Select AD_Reference_ID from AD_Reference where Name='C_DocType')
where columnname = 'Z_JnlImportInvoice'
and ad_table_id = (select ad_table_id from ad_table where tablename = 'C_BPartner');