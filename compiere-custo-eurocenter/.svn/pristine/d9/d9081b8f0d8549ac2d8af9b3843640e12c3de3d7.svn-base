insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC63','EC63 - Modifs POS V2.2.0020',
'',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EC63' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC63 - Modifs POS V2.2.0020', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC63' ;

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'I_PosOrderline','',
'EC63',
'',
'T',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'I_PosOrderline' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC63', help = '', validationtype = 'T', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'I_PosOrderline' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='I_PosOrderline'), 'nl_NL', 'Y', '','','I_PosOrderline'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='I_PosOrderline') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'I_PosOrderline' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='I_PosOrderline') and ad_language = 'nl_NL';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='I_PosOrderline'), 'fr_FR', 'Y', '','','I_PosOrderline'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='I_PosOrderline') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'I_PosOrderline' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='I_PosOrderline') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'PayReceived','',
'EC63',
'',
'Montant reçu',
'',
'',
'',
'',
'Montant reçu',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'PayReceived' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC63', help = '', name = 'Montant reçu', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Montant reçu', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'PayReceived' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PayReceived'), 'nl_NL', 'Y', '','','Montant reçu','','','','','Montant reçu'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PayReceived') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant reçu',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Montant reçu' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PayReceived') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PayReceived'), 'fr_FR', 'Y', '','','Montant reçu','','','','','Montant reçu'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PayReceived') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant reçu',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Montant reçu' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PayReceived') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_OrigOrderline_ID','',
'EC63',
'',
'Z_OrigOrderline_ID',
'',
'',
'',
'',
'Z_OrigOrderline_ID',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_OrigOrderline_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC63', help = '', name = 'Z_OrigOrderline_ID', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Z_OrigOrderline_ID', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_OrigOrderline_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_OrigOrderline_ID'), 'nl_NL', 'Y', '','','Z_OrigOrderline_ID','','','','','Z_OrigOrderline_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_OrigOrderline_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_OrigOrderline_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Z_OrigOrderline_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_OrigOrderline_ID') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_OrigOrderline_ID'), 'fr_FR', 'Y', '','','Z_OrigOrderline_ID','','','','','Z_OrigOrderline_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_OrigOrderline_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_OrigOrderline_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Z_OrigOrderline_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_OrigOrderline_ID') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PayReceived',(select AD_Element_ID from AD_Element where ColumnName = 'PayReceived'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPayment'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'0',
'',
'EC63',
22,
'',
'Montant reçu',
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
where not exists (select 1 from AD_Column where ColumnName = 'PayReceived'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPayment'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PayReceived'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPayment'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '0', description = '', entitytype = 'EC63', fieldlength = 22, help = '', name = 'Montant reçu', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PayReceived'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPayment');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PayReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPayment')), 'nl_NL', 'Y', 'Montant reçu'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PayReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPayment')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant reçu' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PayReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPayment')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PayReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPayment')), 'fr_FR', 'Y', 'Montant reçu'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PayReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPayment')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant reçu' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PayReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPayment')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PayReceived',(select AD_Element_ID from AD_Element where ColumnName = 'PayReceived'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Payment'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'0',
'',
'EC63',
22,
'',
'Montant reçu',
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
where not exists (select 1 from AD_Column where ColumnName = 'PayReceived'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PayReceived'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Payment'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '0', description = '', entitytype = 'EC63', fieldlength = 22, help = '', name = 'Montant reçu', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PayReceived'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PayReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')), 'nl_NL', 'Y', 'Montant reçu'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PayReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant reçu' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PayReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PayReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')), 'fr_FR', 'Y', 'Montant reçu'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PayReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant reçu' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PayReceived' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_OrigOrderline_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_OrigOrderline_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'I_PosOrderline'),
(select AD_Table_ID from AD_Table where TableName = 'C_OrderLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC63',
22,
'',
'Z_OrigOrderline_ID',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_OrigOrderline_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_OrigOrderline_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'I_PosOrderline'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_OrderLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC63', fieldlength = 22, help = '', name = 'Z_OrigOrderline_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_OrigOrderline_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_OrigOrderline_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')), 'nl_NL', 'Y', 'Z_OrigOrderline_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrigOrderline_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_OrigOrderline_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrigOrderline_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_OrigOrderline_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')), 'fr_FR', 'Y', 'Z_OrigOrderline_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrigOrderline_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_OrigOrderline_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrigOrderline_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_OrigOrderline_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_OrigOrderline_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'I_PosOrderline'),
(select AD_Table_ID from AD_Table where TableName = 'I_PosOrderLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC63',
22,
'',
'Z_OrigOrderline_ID',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_OrigOrderline_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_OrigOrderline_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'I_PosOrderline'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_PosOrderLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC63', fieldlength = 22, help = '', name = 'Z_OrigOrderline_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_OrigOrderline_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_OrigOrderline_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')), 'nl_NL', 'Y', 'Z_OrigOrderline_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrigOrderline_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_OrigOrderline_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrigOrderline_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_OrigOrderline_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')), 'fr_FR', 'Y', 'Z_OrigOrderline_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrigOrderline_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_OrigOrderline_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrigOrderline_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderLine')) and ad_language = 'fr_FR';

insert into AD_Ref_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Column_Key_ID, ad_table_id, Column_Display_ID, entitytype, orderbyclause, whereclause, isactive, isvaluedisplayed, isDisplayIdentifiers) 
select 0,0,sysdate, sysdate,0,0,(select ad_reference_id from ad_reference where name = 'I_PosOrderline'),(select AD_Column_ID from AD_Column where columnName = 'I_PosOrderLine_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'I_PosOrderLine')),
(select AD_Table_ID from AD_Table where TableName = 'I_PosOrderLine'),
(select AD_Column_ID from AD_Column where columnName = 'I_PosOrderLine_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'I_PosOrderLine')),
'EC63',
'',
'',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Ref_Table where  ad_reference_id in (select ad_reference_id from ad_reference where name = 'I_PosOrderline'));

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC63 - Modifs POS V2.2.0020', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC63' ;

