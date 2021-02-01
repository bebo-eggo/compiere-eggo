 ALTER TABLE Z_PosPaymentRule ADD Line NUMBER(10) NOT NULL;
 insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J014','J014 - Payment type sequence',
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
where not exists (select 1 from AD_EntityType where EntityType = 'J014' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J014 - Payment type sequence', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J014' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Line',(select AD_Element_ID from AD_Element where ColumnName = 'Line'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_PosPaymentRule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'@SQL=SELECT COALESCE(MAX(Line),0)+10 AS DefaultValue FROM Z_PosPaymentRule WHERE Z_PosPaymentRule_ID=@Z_PosPaymentRule_ID@',
'Unique line for this document',
'J014',
22,
'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',
'Line No',
'',
0,
'',
'',
0,
'',
'Y',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'Line'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Line'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_PosPaymentRule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '@SQL=SELECT COALESCE(MAX(Line),0)+10 AS DefaultValue FROM Z_PosPaymentRule WHERE Z_PosPaymentRule_ID=@Z_PosPaymentRule_ID@', description = 'Unique line for this document', entitytype = 'J014', fieldlength = 22, help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.', name = 'Line No', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Line'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule')), 'nl_BE', 'Y', 'Line No'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Line No' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule')), 'fr_FR', 'Y', 'Line No'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Line No' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Méthode de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'POS_Méthode de paiement')),
'Line No',
'Unique line for this document',
22,
'',
'J014',
'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',
'',
40,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Méthode de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'POS_Méthode de paiement')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Méthode de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'POS_Méthode de paiement')), name = 'Line No', description = 'Unique line for this document', displaylength = 22, displaylogic = '', entitytype = 'J014', help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Méthode de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'POS_Méthode de paiement'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Méthode de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'POS_Méthode de paiement'))), 'nl_BE', 'Y', 'Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Line No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Méthode de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'POS_Méthode de paiement'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unique line for this document',Help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',Name = 'Line No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Méthode de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'POS_Méthode de paiement'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Méthode de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'POS_Méthode de paiement'))), 'fr_FR', 'Y', 'Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Séquence affichage POS'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Méthode de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'POS_Méthode de paiement'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unique line for this document',Help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',Name = 'Séquence affichage POS' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Méthode de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'POS_Méthode de paiement'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J014 - Payment type sequence', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J014' ;

