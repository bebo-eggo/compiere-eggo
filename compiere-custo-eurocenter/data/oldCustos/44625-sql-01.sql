insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'4625','44625: EC-SFD0024-908-Ajout Code Charge Ecart Caisse sur Sou',
'',
'',
'Y',
'',
'',
'',
'N',
'1.0',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '4625' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '44625: EC-SFD0024-908-Ajout Code Charge Ecart Caisse sur Sou', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '4625' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_CashVariance','',
'4625',
'',
'Cash Matching Variance',
'',
'',
'',
'',
'Cash Matching Variance',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_CashVariance' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '4625', help = '', name = 'Cash Matching Variance', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Cash Matching Variance', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_CashVariance' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_CashVariance'), 'nl_NL', 'Y', '','','Cash Matching Variance','','','','','Cash Matching Variance'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CashVariance') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cash Matching Variance',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Cash Matching Variance' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CashVariance') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_CashVariance'), 'fr_FR', 'Y', '','','Ecart Clôture de Caisse','','','','','Ecart Clôture de Caisse'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CashVariance') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ecart Clôture de Caisse',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Ecart Clôture de Caisse' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CashVariance') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_CashVariance',(select AD_Element_ID from AD_Element where ColumnName = 'Z_CashVariance'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'ZSubPaymentRule_ID'),
(select AD_Table_ID from AD_Table where TableName = 'ZSubPaymentRule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'4625',
22,
'',
'Cash Matching Variance',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_CashVariance'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_CashVariance'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'ZSubPaymentRule_ID'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZSubPaymentRule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '4625', fieldlength = 22, help = '', name = 'Cash Matching Variance', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_CashVariance'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')), 'nl_NL', 'Y', 'Cash Matching Variance'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Cash Matching Variance' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')), 'fr_FR', 'Y', 'Ecart Clôture de Caisse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ecart Clôture de Caisse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sous méthode de paiement_Sous Methode de Paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sous méthode de paiement')),
'Cash Matching Variance',
'',
12,
'',
'4625',
'',
'',
105,
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
105
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sous méthode de paiement_Sous Methode de Paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sous méthode de paiement')), name = 'Cash Matching Variance', description = '', displaylength = 12, displaylogic = '', entitytype = '4625', help = '', obscuretype = '', seqno = 105, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 105 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))), 'nl_NL', 'Y', '','','Cash Matching Variance'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cash Matching Variance' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))), 'fr_FR', 'Y', '','','Ecart Clôture de Caisse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ecart Clôture de Caisse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CashVariance' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '44625: EC-SFD0024-908-Ajout Code Charge Ecart Caisse sur Sou', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '4625' ;

