insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG01','EG01 - New fields T2',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EG01' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG01 - New fields T2', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG01' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsSent','',
'EG01',
'',
'IsSent',
'',
'',
'',
'',
'IsSent',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsSent' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG01', help = '', name = 'IsSent', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'IsSent', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsSent' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsSent'), 'nl_BE', 'Y', '','','IsSent','','','','','IsSent'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsSent') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsSent',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsSent' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsSent') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsSent'), 'fr_FR', 'Y', '','','IsSent','','','','','IsSent'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsSent') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsSent',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsSent' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsSent') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'SentDate','',
'EG01',
'',
'SentDate',
'',
'',
'',
'',
'SentDate',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'SentDate' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG01', help = '', name = 'SentDate', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'SentDate', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'SentDate' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='SentDate'), 'nl_BE', 'Y', '','','SentDate','','','','','SentDate'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SentDate') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'SentDate',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'SentDate' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SentDate') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='SentDate'), 'fr_FR', 'Y', '','','SentDate','','','','','SentDate'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SentDate') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'SentDate',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'SentDate' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SentDate') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsSentToT2','',
'EG01',
'',
'IsSentToT2',
'',
'',
'',
'',
'IsSentToT2',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsSentToT2' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG01', help = '', name = 'IsSentToT2', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'IsSentToT2', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsSentToT2' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsSentToT2'), 'nl_BE', 'Y', '','','IsSentToT2','','','','','IsSentToT2'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsSentToT2') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsSentToT2',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsSentToT2' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsSentToT2') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsSentToT2'), 'fr_FR', 'Y', '','','IsSentToT2','','','','','IsSentToT2'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsSentToT2') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsSentToT2',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsSentToT2' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsSentToT2') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsSentToT2',(select AD_Element_ID from AD_Element where ColumnName = 'IsSentToT2'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Payment'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EG01',
1,
'',
'IsSentToT2',
'',
0,
'',
'',
1,
'',
'Y',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsSentToT2'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsSentToT2'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Payment'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EG01', fieldlength = 1, help = '', name = 'IsSentToT2', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsSentToT2'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')), 'nl_BE', 'Y', 'IsSentToT2'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsSentToT2' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')), 'fr_FR', 'Y', 'IsSentToT2'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsSentToT2' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsSent',(select AD_Element_ID from AD_Element where ColumnName = 'IsSent'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EG01',
1,
'',
'IsSent',
'',
0,
'',
'',
1,
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
where not exists (select 1 from AD_Column where ColumnName = 'IsSent'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsSent'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EG01', fieldlength = 1, help = '', name = 'IsSent', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsSent'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'nl_BE', 'Y', 'IsSent'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsSent' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'fr_FR', 'Y', 'IsSent'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsSent' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'SentDate',(select AD_Element_ID from AD_Element where ColumnName = 'SentDate'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EG01',
7,
'',
'SentDate',
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
where not exists (select 1 from AD_Column where ColumnName = 'SentDate'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'SentDate'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EG01', fieldlength = 7, help = '', name = 'SentDate', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'SentDate'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'nl_BE', 'Y', 'SentDate'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'SentDate' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'fr_FR', 'Y', 'SentDate'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'SentDate' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment_330' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Payment_195')),
'IsSentToT2',
'',
1,
'@Processed@=''Y''',
'EG01',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment_330' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Payment_195')), name = 'IsSentToT2', description = '', displaylength = 1, displaylogic = '@Processed@=''Y''', entitytype = 'EG01', help = '', obscuretype = '', seqno = 720, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'))), 'nl_BE', 'Y', '','','IsSentToT2'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsSentToT2' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'))), 'fr_FR', 'Y', '','','Envoyé à T2'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Envoyé à T2' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSentToT2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Purchase Order_294' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Purchase Order_181')),
'IsSent',
'',
0,
'@Processed@=''Y''',
'EG01',
'',
'',
10020,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Purchase Order_294' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Purchase Order_181')), name = 'IsSent', description = '', displaylength = 0, displaylogic = '@Processed@=''Y''', entitytype = 'EG01', help = '', obscuretype = '', seqno = 10020, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))), 'nl_BE', 'Y', '','','Envoyé fourn.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Envoyé fourn.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))), 'fr_FR', 'Y', '','','Envoyé fourn.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Envoyé fourn.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSent' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Purchase Order_294' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Purchase Order_181')),
'SentDate',
'',
7,
'@Processed@=''Y''',
'EG01',
'',
'',
10030,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Purchase Order_294' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Purchase Order_181')), name = 'SentDate', description = '', displaylength = 7, displaylogic = '@Processed@=''Y''', entitytype = 'EG01', help = '', obscuretype = '', seqno = 10030, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))), 'nl_BE', 'Y', '','','SentDate'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'SentDate' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))), 'fr_FR', 'Y', '','','Date envoi'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Date envoi' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SentDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Purchase Order_294' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG01 - New fields T2', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG01' ;

