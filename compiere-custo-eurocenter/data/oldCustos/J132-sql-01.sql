insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J132','J132 - JIRA1032',
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
where not exists (select 1 from AD_EntityType where EntityType = 'J132' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J132 - JIRA1032', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J132' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Num_enreg','',
'J132',
'',
'Num_enreg',
'',
'',
'',
'',
'Num_enreg',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Num_enreg' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'J132', help = '', name = 'Num_enreg', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Num_enreg', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Num_enreg' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Num_enreg'), 'nl_NL', 'Y', '','','Num_enreg','','','','','Num_enreg'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Num_enreg') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Num_enreg',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Num_enreg' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Num_enreg') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Num_enreg'), 'fr_FR', 'Y', '','','Num_enreg','','','','','Num_enreg'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Num_enreg') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Num_enreg',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Num_enreg' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Num_enreg') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Num_enreg',(select AD_Element_ID from AD_Element where ColumnName = 'Num_enreg'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Client'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'J132',
40,
'',
'Num_enreg',
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
where not exists (select 1 from AD_Column where ColumnName = 'Num_enreg'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Num_enreg'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Client'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'J132', fieldlength = 40, help = '', name = 'Num_enreg', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Num_enreg'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')), 'nl_NL', 'Y', 'Num_enreg'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Num_enreg' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')), 'fr_FR', 'Y', 'Num_enreg'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Num_enreg' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'URL',(select AD_Element_ID from AD_Element where ColumnName = 'URL'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'URL'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Client'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Full URL address - e.g. http://www.compiere.org',
'J132',
120,
'The URL defines a fully qualified web address like http://www.compiere.org',
'URL',
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
where not exists (select 1 from AD_Column where ColumnName = 'URL'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'URL'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'URL'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Client'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Full URL address - e.g. http://www.compiere.org', entitytype = 'J132', fieldlength = 120, help = 'The URL defines a fully qualified web address like http://www.compiere.org', name = 'URL', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'URL'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')), 'nl_NL', 'Y', 'URL'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'URL' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')), 'fr_FR', 'Y', 'URL'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'URL' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Location_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Location_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Location (Address)'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Client'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Location or Address',
'J132',
22,
'The Location / Address field defines the location of an entity.',
'Address',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Location_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Location_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Location (Address)'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Client'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Location or Address', entitytype = 'J132', fieldlength = 22, help = 'The Location / Address field defines the location of an entity.', name = 'Address', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Location_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')), 'nl_NL', 'Y', 'Address'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Address' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')), 'fr_FR', 'Y', 'Address'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Address' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'TaxID',(select AD_Element_ID from AD_Element where ColumnName = 'TaxID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Client'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Tax Identification',
'J132',
20,
'The Tax ID field identifies the legal Identification number of this Entity.',
'Tax ID',
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
where not exists (select 1 from AD_Column where ColumnName = 'TaxID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'TaxID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Client'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Tax Identification', entitytype = 'J132', fieldlength = 20, help = 'The Tax ID field identifies the legal Identification number of this Entity.', name = 'Tax ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'TaxID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')), 'nl_NL', 'Y', 'Tax ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tax ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')), 'fr_FR', 'Y', 'Tax ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tax ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Registration',(select AD_Element_ID from AD_Element where ColumnName = 'Registration'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Client'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Vehicle registration',
'J132',
30,
'',
'Registration',
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
where not exists (select 1 from AD_Column where ColumnName = 'Registration'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Registration'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Client'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Vehicle registration', entitytype = 'J132', fieldlength = 30, help = '', name = 'Registration', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Registration'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')), 'nl_NL', 'Y', 'Registration'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Registration' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')), 'fr_FR', 'Y', 'Registration'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Registration' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'),
(select AD_Tab_ID from AD_Tab where Value = 'Client_145' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Client_109')),
'Address',
'Location or Address',
22,
'',
'J132',
'The Location / Address field defines the location of an entity.',
'',
280,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Client_145' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Client_109')), name = 'Address', description = 'Location or Address', displaylength = 22, displaylogic = '', entitytype = 'J132', help = 'The Location / Address field defines the location of an entity.', obscuretype = '', seqno = 280, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))), 'nl_NL', 'Y', 'Location or Address','The Location / Address field defines the location of an entity.','Address'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Location or Address',Help = 'The Location / Address field defines the location of an entity.',Name = 'Address' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))), 'fr_FR', 'Y', 'Location or Address','The Location / Address field defines the location of an entity.','Adresse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Location or Address',Help = 'The Location / Address field defines the location of an entity.',Name = 'Adresse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'),
(select AD_Tab_ID from AD_Tab where Value = 'Client_145' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Client_109')),
'Num_enreg',
'',
40,
'',
'J132',
'',
'',
310,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Client_145' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Client_109')), name = 'Num_enreg', description = '', displaylength = 40, displaylogic = '', entitytype = 'J132', help = '', obscuretype = '', seqno = 310, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))), 'nl_NL', 'Y', '','','Num_enreg'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Num_enreg' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))), 'fr_FR', 'Y', '','','N° d''enregistrement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° d''enregistrement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Num_enreg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'),
(select AD_Tab_ID from AD_Tab where Value = 'Client_145' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Client_109')),
'Registration',
'Vehicle registration',
30,
'',
'J132',
'',
'',
290,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Client_145' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Client_109')), name = 'Registration', description = 'Vehicle registration', displaylength = 30, displaylogic = '', entitytype = 'J132', help = '', obscuretype = '', seqno = 290, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))), 'nl_NL', 'Y', 'Vehicle registration','','Registration'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Vehicle registration',Help = '',Name = 'Registration' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))), 'fr_FR', 'Y', 'Registre national','','Registre national'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Registre national',Help = '',Name = 'Registre national' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Registration' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'),
(select AD_Tab_ID from AD_Tab where Value = 'Client_145' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Client_109')),
'Tax ID',
'Tax Identification',
20,
'',
'J132',
'The Tax ID field identifies the legal Identification number of this Entity.',
'',
300,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Client_145' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Client_109')), name = 'Tax ID', description = 'Tax Identification', displaylength = 20, displaylogic = '', entitytype = 'J132', help = 'The Tax ID field identifies the legal Identification number of this Entity.', obscuretype = '', seqno = 300, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))), 'nl_NL', 'Y', 'Tax Identification','The Tax ID field identifies the legal Identification number of this Entity.','Tax ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Tax Identification',Help = 'The Tax ID field identifies the legal Identification number of this Entity.',Name = 'Tax ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))), 'fr_FR', 'Y', 'Tax Identification','The Tax ID field identifies the legal Identification number of this Entity.','Identifiant TVA'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Tax Identification',Help = 'The Tax ID field identifies the legal Identification number of this Entity.',Name = 'Identifiant TVA' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'),
(select AD_Tab_ID from AD_Tab where Value = 'Client_145' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Client_109')),
'URL',
'Full URL address - e.g. http://www.compiere.org',
120,
'',
'J132',
'The URL defines a fully qualified web address like http://www.compiere.org',
'',
320,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Client_145' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Client_109')), name = 'URL', description = 'Full URL address - e.g. http://www.compiere.org', displaylength = 120, displaylogic = '', entitytype = 'J132', help = 'The URL defines a fully qualified web address like http://www.compiere.org', obscuretype = '', seqno = 320, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))), 'nl_NL', 'Y', 'Full URL address - e.g. http://www.compiere.org','The URL defines a fully qualified web address like http://www.compiere.org','URL'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Full URL address - e.g. http://www.compiere.org',Help = 'The URL defines a fully qualified web address like http://www.compiere.org',Name = 'URL' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))), 'fr_FR', 'Y', 'Full URL address - e.g. http://www.compiere.org','The URL defines a fully qualified web address like http://www.compiere.org','URL'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Full URL address - e.g. http://www.compiere.org',Help = 'The URL defines a fully qualified web address like http://www.compiere.org',Name = 'URL' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'URL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Client')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Client_145' and ad_window_id in (select ad_window_id from ad_window where value = 'Client_109'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J132 - JIRA1032', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J132' ;