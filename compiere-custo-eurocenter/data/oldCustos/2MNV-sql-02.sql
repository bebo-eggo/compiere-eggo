insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2MNV','2MNV- 86715: Import factures - Matching OA',
'',
'Evolution #86715 (Entity Type : 2MNV) Import factures - Matching OA',
'Y',
'',
'',
'',
'Y',
'0',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '2MNV' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2MNV- 86715: Import factures - Matching OA', description = '', help = 'Evolution #86715 (Entity Type : 2MNV) Import factures - Matching OA', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2MNV' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsForceToInvoice','Forcé matching',
'2MNV',
'',
'Forcé matching',
'',
'',
'',
'',
'Forcé matching',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsForceToInvoice' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Forcé matching', entitytype = '2MNV', help = '', name = 'Forcé matching', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Forcé matching', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsForceToInvoice' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsForceToInvoice'), 'fr_FR', 'Y', 'Forcé matching','Forcé matching','','','Forcé matching','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsForceToInvoice') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Forcé matching',Name = 'Forcé matching',Help = '',PO_PrintName = '',PrintName = 'Forcé matching',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsForceToInvoice') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsForceToInvoice'), 'nl_NL', 'Y', 'Forcé matching','Forcé matching','','','Forcé matching','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsForceToInvoice') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Forcé matching',Name = 'Forcé matching',Help = '',PO_PrintName = '',PrintName = 'Forcé matching',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsForceToInvoice') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ZZ_PODocNo','OA No document',
'2MNV',
'',
'OA No document',
'',
'',
'',
'',
'OA No document',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ZZ_PODocNo' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'OA No document', entitytype = '2MNV', help = '', name = 'OA No document', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'OA No document', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ZZ_PODocNo' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_PODocNo'), 'fr_FR', 'Y', 'OA No document','OA No document','','','OA No document','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_PODocNo') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'OA No document',Name = 'OA No document',Help = '',PO_PrintName = '',PrintName = 'OA No document',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_PODocNo') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_PODocNo'), 'nl_NL', 'Y', 'OA No document','OA No document','','','OA No document','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_PODocNo') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'OA No document',Name = 'OA No document',Help = '',PO_PrintName = '',PrintName = 'OA No document',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_PODocNo') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'C_OrderLinePO_ID','Ligne commande d''achat',
'2MNV',
'',
'Ligne commande d''achat',
'',
'',
'',
'',
'Ligne commande d''achat',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'C_OrderLinePO_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Ligne commande d''achat', entitytype = '2MNV', help = '', name = 'Ligne commande d''achat', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Ligne commande d''achat', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'C_OrderLinePO_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_OrderLinePO_ID'), 'fr_FR', 'Y', 'Ligne commande d''achat','Ligne commande d''achat','','','Ligne commande d''achat','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_OrderLinePO_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ligne commande d''achat',Name = 'Ligne commande d''achat',Help = '',PO_PrintName = '',PrintName = 'Ligne commande d''achat',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_OrderLinePO_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_OrderLinePO_ID'), 'nl_NL', 'Y', 'Ligne commande d''achat','Ligne commande d''achat','','','Ligne commande d''achat','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_OrderLinePO_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ligne commande d''achat',Name = 'Ligne commande d''achat',Help = '',PO_PrintName = '',PrintName = 'Ligne commande d''achat',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_OrderLinePO_ID') and ad_language = 'nl_NL';

insert into AD_FieldGroup (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,Name,entitytype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_FieldGroup'),'Ordre d''achat','2MNV',
'Y'
 from dual  
where not exists (select 1 from AD_FieldGroup where Name = 'Ordre d''achat' );

update AD_FieldGroup set Updated = sysdate, UpdatedBy = 0, entitytype = '2MNV', isactive = 'Y' 
where Name = 'Ordre d''achat' ;

insert into AD_FieldGroup_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_FieldGroup_ID from AD_FieldGroup where Name='Ordre d''achat'), 'fr_FR', 'Y', 'Ordre d''achat'
 from dual  
where not exists (select 1 from AD_FieldGroup_Trl where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Ordre d''achat') and ad_language = 'fr_FR');

update AD_FieldGroup_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ordre d''achat' where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Ordre d''achat') and ad_language = 'fr_FR';

insert into AD_FieldGroup_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_FieldGroup_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_FieldGroup_ID from AD_FieldGroup where Name='Ordre d''achat'), 'nl_NL', 'Y', 'Ordre d''achat'
 from dual  
where not exists (select 1 from AD_FieldGroup_Trl where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Ordre d''achat') and ad_language = 'nl_NL');

update AD_FieldGroup_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ordre d''achat' where AD_FieldGroup_ID in (select AD_FieldGroup_ID from AD_FieldGroup where Name='Ordre d''achat') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_OrderPO_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_OrderPO_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_Order'),
(select AD_Table_ID from AD_Table where TableName = 'I_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Ordre d''achat',
'2MNV',
10,
'',
'Ordre d''achat',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_OrderPO_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_OrderPO_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_Order'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Ordre d''achat', entitytype = '2MNV', fieldlength = 10, help = '', name = 'Ordre d''achat', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_OrderPO_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'fr_FR', 'Y', 'Ordre d''achat'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ordre d''achat' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'nl_NL', 'Y', 'Inkoop Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Inkoop Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZZ_PODocNo',(select AD_Element_ID from AD_Element where ColumnName = 'ZZ_PODocNo'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'OA No document',
'2MNV',
50,
'',
'OA No document',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZZ_PODocNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZZ_PODocNo'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'OA No document', entitytype = '2MNV', fieldlength = 50, help = '', name = 'OA No document', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZZ_PODocNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'fr_FR', 'Y', 'OA No document'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'OA No document' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'nl_NL', 'Y', 'OA No document'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'OA No document' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_OrderLinePO_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_OrderLinePO_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_OrderLine'),
(select AD_Table_ID from AD_Table where TableName = 'I_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Ligne commande d''achat',
'2MNV',
10,
'',
'Ligne commande d''achat',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_OrderLinePO_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_OrderLinePO_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_OrderLine'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Ligne commande d''achat', entitytype = '2MNV', fieldlength = 10, help = '', name = 'Ligne commande d''achat', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_OrderLinePO_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'fr_FR', 'Y', 'Ligne commande d''achat'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ligne commande d''achat' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'nl_NL', 'Y', 'Ligne commande d''achat'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ligne commande d''achat' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsMatched',(select AD_Element_ID from AD_Element where ColumnName = 'IsMatched'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'2MNV',
1,
'',
'Matched',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsMatched'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsMatched'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = '2MNV', fieldlength = 1, help = '', name = 'Matched', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsMatched'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsMatched' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'fr_FR', 'Y', 'Lettré'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsMatched' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Lettré' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsMatched' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsMatched' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'nl_NL', 'Y', 'Matched'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsMatched' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Matched' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsMatched' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsForceToInvoice',(select AD_Element_ID from AD_Element where ColumnName = 'IsForceToInvoice'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'Forcé matching',
'2MNV',
1,
'',
'Forcé matching',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsForceToInvoice'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsForceToInvoice'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = 'Forcé matching', entitytype = '2MNV', fieldlength = 1, help = '', name = 'Forcé matching', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsForceToInvoice'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'fr_FR', 'Y', 'Forcé matching'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Forcé matching' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')), 'nl_NL', 'Y', 'Forcé matching'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Forcé matching' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Ordre d''achat'),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')),
'Ordre d''achat',
'Ordre d''achat',
0,
'',
'2MNV',
'',
'',
700,
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
700
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Ordre d''achat'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')), name = 'Ordre d''achat', description = 'Ordre d''achat', displaylength = 0, displaylogic = '', entitytype = '2MNV', help = '', obscuretype = '', seqno = 700, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 700 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'fr_FR', 'Y', '','Ordre d''achat','Ordre d''achat'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Ordre d''achat',Name = 'Ordre d''achat' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'nl_NL', 'Y', '','Inkoop Order','Inkoop Order'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Inkoop Order',Name = 'Inkoop Order' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderPO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')),
'Forcé matching',
'Forcé matching',
0,
'',
'2MNV',
'',
'',
740,
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
740
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')), name = 'Forcé matching', description = 'Forcé matching', displaylength = 0, displaylogic = '', entitytype = '2MNV', help = '', obscuretype = '', seqno = 740, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 740 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'fr_FR', 'Y', '','Forcé matching','Forcé matching'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Forcé matching',Name = 'Forcé matching' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'nl_NL', 'Y', '','Forcé matching','Forcé matching'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Forcé matching',Name = 'Forcé matching' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')),
'OA No document',
'OA No document',
0,
'',
'2MNV',
'',
'',
710,
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
710
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')), name = 'OA No document', description = 'OA No document', displaylength = 0, displaylogic = '', entitytype = '2MNV', help = '', obscuretype = '', seqno = 710, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 710 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'fr_FR', 'Y', '','OA No document','OA No document'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'OA No document',Name = 'OA No document' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'nl_NL', 'Y', '','OA No document','OA No document'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'OA No document',Name = 'OA No document' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZZ_PODocNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')),
'Ligne commande d''achat',
'Ligne commande d''achat',
0,
'',
'2MNV',
'',
'',
720,
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
720
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_510' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Invoice_279')), name = 'Ligne commande d''achat', description = 'Ligne commande d''achat', displaylength = 0, displaylogic = '', entitytype = '2MNV', help = '', obscuretype = '', seqno = 720, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 720 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'fr_FR', 'Y', '','Ligne commande d''achat','Ligne commande d''achat'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Ligne commande d''achat',Name = 'Ligne commande d''achat' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))), 'nl_NL', 'Y', '','Ligne commande d''achat','Ligne commande d''achat'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Ligne commande d''achat',Name = 'Ligne commande d''achat' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLinePO_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_510' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Invoice_279'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2MNV- 86715: Import factures - Matching OA', description = '', help = 'Evolution #86715 (Entity Type : 2MNV) Import factures - Matching OA', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2MNV' ;

