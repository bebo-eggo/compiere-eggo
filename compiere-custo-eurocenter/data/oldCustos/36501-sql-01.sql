insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'0501','36501-Modification écran "Maintenance facture fournisseur" ',
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
where not exists (select 1 from AD_EntityType where EntityType = '0501' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '36501-Modification écran "Maintenance facture fournisseur" ', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '0501' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'TotalTaxamt','',
'0501',
'',
'Total Tax',
'',
'',
'',
'',
'Total Tax',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'TotalTaxamt' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '0501', help = '', name = 'Total Tax', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Total Tax', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'TotalTaxamt' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TotalTaxamt'), 'nl_BE', 'Y', '','','Total Tax amtount','','','','','Total Tax amtount'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TotalTaxamt') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Total Tax amtount',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Total Tax amtount' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TotalTaxamt') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TotalTaxamt'), 'fr_FR', 'Y', '','','Total TVA','','','','','Total TVA'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TotalTaxamt') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Total TVA',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Total TVA' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TotalTaxamt') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'VendorDocNum','',
'0501',
'',
'N°Fact. Frnr',
'',
'',
'',
'',
'N°Fact. Frnr',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'VendorDocNum' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '0501', help = '', name = 'N°Fact. Frnr', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'N°Fact. Frnr', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'VendorDocNum' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='VendorDocNum'), 'nl_BE', 'Y', '','','N°Fact. Frnr','','','','','N°Fact. Frnr'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='VendorDocNum') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N°Fact. Frnr',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N°Fact. Frnr' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='VendorDocNum') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='VendorDocNum'), 'fr_FR', 'Y', '','','N°Fact. Frnr','','','','','N°Fact. Frnr'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='VendorDocNum') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N°Fact. Frnr',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N°Fact. Frnr' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='VendorDocNum') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'escompte','',
'0501',
'',
'escompte',
'',
'',
'',
'',
'escompte',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'escompte' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '0501', help = '', name = 'escompte', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'escompte', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'escompte' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='escompte'), 'nl_BE', 'Y', '','','escompte','','','','','escompte'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='escompte') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'escompte',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'escompte' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='escompte') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='escompte'), 'fr_FR', 'Y', '','','escompte','','','','','escompte'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='escompte') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'escompte',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'escompte' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='escompte') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'escompte',(select AD_Element_ID from AD_Element where ColumnName = 'escompte'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'0501',
22,
'',
'escompte',
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
'N',
'(c_invoice.totallines *(select pt.discount from c_paymentterm pt where pt.c_paymentterm_id = (select bp.PO_Paymentterm_Id from c_bpartner bp where bp.c_bpartner_id = c_invoice.c_bpartner_id)))',
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
where not exists (select 1 from AD_Column where ColumnName = 'escompte'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'escompte'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '0501', fieldlength = 22, help = '', name = 'escompte', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '(c_invoice.totallines *(select pt.discount from c_paymentterm pt where pt.c_paymentterm_id = (select bp.PO_Paymentterm_Id from c_bpartner bp where bp.c_bpartner_id = c_invoice.c_bpartner_id)))', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'escompte'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'nl_BE', 'Y', 'escompte'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'escompte' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'fr_FR', 'Y', 'escompte'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'escompte' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'TotalTaxamt',(select AD_Element_ID from AD_Element where ColumnName = 'TotalTaxamt'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'0501',
22,
'',
'Total Tax',
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
'N',
'(select sum(TaxAmt) from c_invoiceline il where il.C_invoice_id = c_invoice.C_invoice_id)',
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
where not exists (select 1 from AD_Column where ColumnName = 'TotalTaxamt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'TotalTaxamt'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '0501', fieldlength = 22, help = '', name = 'Total Tax', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '(select sum(TaxAmt) from c_invoiceline il where il.C_invoice_id = c_invoice.C_invoice_id)', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'TotalTaxamt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'nl_BE', 'Y', 'Total Tax amtount'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Total Tax amtount' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'fr_FR', 'Y', 'Total TVA'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Total TVA' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'VendorDocNum',(select AD_Element_ID from AD_Element where ColumnName = 'VendorDocNum'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'0501',
30,
'',
'N°Fact. Frnr',
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
where not exists (select 1 from AD_Column where ColumnName = 'VendorDocNum'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'VendorDocNum'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '0501', fieldlength = 30, help = '', name = 'N°Fact. Frnr', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'VendorDocNum'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'nl_BE', 'Y', 'N°Fact. Frnr'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N°Fact. Frnr' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'fr_FR', 'Y', 'N°Fact. Frnr'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N°Fact. Frnr' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')),
'Total Tax',
'',
22,
'',
'0501',
'',
'',
335,
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
55
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')), name = 'Total Tax', description = '', displaylength = 22, displaylogic = '', entitytype = '0501', help = '', obscuretype = '', seqno = 335, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 55 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'nl_BE', 'Y', '','','Total Tax amtount'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Total Tax amtount' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'fr_FR', 'Y', '','','Total TVA'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Total TVA' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TotalTaxamt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')),
'N°Fact. Frnr',
'',
22,
'',
'0501',
'',
'',
145,
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
175
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')), name = 'N°Fact. Frnr', description = '', displaylength = 22, displaylogic = '', entitytype = '0501', help = '', obscuretype = '', seqno = 145, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 175 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'nl_BE', 'Y', '','','N°Fact. Frnr'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N°Fact. Frnr' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'fr_FR', 'Y', '','','N°Fact. Frnr'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N°Fact. Frnr' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'VendorDocNum' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')),
'escompte',
'',
22,
'',
'0501',
'',
'',
337,
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
57
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')), name = 'escompte', description = '', displaylength = 22, displaylogic = '', entitytype = '0501', help = '', obscuretype = '', seqno = 337, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 57 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'nl_BE', 'Y', '','','escompte'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'escompte' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'fr_FR', 'Y', '','','escompte'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'escompte' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'escompte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'NoProductOrNoCharge','0501',
'Article ou code d''imputation manquant',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'NoProductOrNoCharge' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '0501', msgtext = 'Article ou code d''imputation manquant', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'NoProductOrNoCharge' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='NoProductOrNoCharge'), 'nl_BE', 'Y', 'Article ou code d''imputation manquant',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NoProductOrNoCharge') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Article ou code d''imputation manquant',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NoProductOrNoCharge') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='NoProductOrNoCharge'), 'fr_FR', 'Y', 'Article ou code d''imputation manquant',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NoProductOrNoCharge') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Article ou code d''imputation manquant',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NoProductOrNoCharge') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'TotlaInvoiceIsZero','0501',
'Facture à 0 impossible',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'TotlaInvoiceIsZero' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '0501', msgtext = 'Facture à 0 impossible', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'TotlaInvoiceIsZero' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='TotlaInvoiceIsZero'), 'nl_BE', 'Y', 'Facture à 0 impossible',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='TotlaInvoiceIsZero') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Facture à 0 impossible',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='TotlaInvoiceIsZero') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='TotlaInvoiceIsZero'), 'fr_FR', 'Y', 'Facture à 0 impossible',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='TotlaInvoiceIsZero') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Facture à 0 impossible',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='TotlaInvoiceIsZero') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '36501-Modification écran "Maintenance facture fournisseur" ', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '0501' ;

