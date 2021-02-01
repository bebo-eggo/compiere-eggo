insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J023','J023 - Nom Prenom',
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
where not exists (select 1 from AD_EntityType where EntityType = 'J023' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J023 - Nom Prenom', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J023' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ShipName','Alphanumeric identifier of the entity',
'J023',
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
'ShipName',
'',
'',
'',
'',
'ShipName',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ShipName' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Alphanumeric identifier of the entity', entitytype = 'J023', help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', name = 'ShipName', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'ShipName', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ShipName' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ShipName'), 'nl_BE', 'Y', 'Alphanumeric identifier of the entity','The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','ShipName','','','','','ShipName'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShipName') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Alphanumeric identifier of the entity',Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Name = 'ShipName',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ShipName' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShipName') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ShipName'), 'fr_FR', 'Y', 'Alphanumeric identifier of the entity','The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','ShipName','','','','','ShipName'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShipName') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Alphanumeric identifier of the entity',Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Name = 'ShipName',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ShipName' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShipName') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'InvAddress3','',
'J023',
'',
'InvAddress3',
'',
'',
'',
'',
'InvAddress3',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'InvAddress3' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'J023', help = '', name = 'InvAddress3', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'InvAddress3', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'InvAddress3' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='InvAddress3'), 'nl_BE', 'Y', '','','InvAddress3','','','','','InvAddress3'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InvAddress3') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'InvAddress3',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'InvAddress3' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InvAddress3') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='InvAddress3'), 'fr_FR', 'Y', '','','InvAddress3','','','','','InvAddress3'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InvAddress3') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'InvAddress3',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'InvAddress3' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InvAddress3') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'InvAddress4','',
'J023',
'',
'InvAddress4',
'',
'',
'',
'',
'InvAddress4',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'InvAddress4' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'J023', help = '', name = 'InvAddress4', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'InvAddress4', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'InvAddress4' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='InvAddress4'), 'nl_BE', 'Y', '','','InvAddress4','','','','','InvAddress4'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InvAddress4') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'InvAddress4',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'InvAddress4' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InvAddress4') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='InvAddress4'), 'fr_FR', 'Y', '','','InvAddress4','','','','','InvAddress4'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InvAddress4') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'InvAddress4',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'InvAddress4' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InvAddress4') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ShipAddress3','',
'J023',
'',
'ShipAddress3',
'',
'',
'',
'',
'ShipAddress3',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ShipAddress3' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'J023', help = '', name = 'ShipAddress3', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'ShipAddress3', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ShipAddress3' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ShipAddress3'), 'nl_BE', 'Y', '','','ShipAddress3','','','','','ShipAddress3'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShipAddress3') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ShipAddress3',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ShipAddress3' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShipAddress3') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ShipAddress3'), 'fr_FR', 'Y', '','','ShipAddress3','','','','','ShipAddress3'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShipAddress3') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ShipAddress3',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ShipAddress3' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShipAddress3') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ShipAddress4','',
'J023',
'',
'ShipAddress4',
'',
'',
'',
'',
'ShipAddress4',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ShipAddress4' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'J023', help = '', name = 'ShipAddress4', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'ShipAddress4', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ShipAddress4' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ShipAddress4'), 'nl_BE', 'Y', '','','ShipAddress4','','','','','ShipAddress4'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShipAddress4') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ShipAddress4',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ShipAddress4' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShipAddress4') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ShipAddress4'), 'fr_FR', 'Y', '','','ShipAddress4','','','','','ShipAddress4'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShipAddress4') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ShipAddress4',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ShipAddress4' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ShipAddress4') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Name2',(select AD_Element_ID from AD_Element where ColumnName = 'Name2'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_User'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Additional Name',
'J023',
60,
'',
'Name 2',
'',
1,
'',
'',
1,
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
where not exists (select 1 from AD_Column where ColumnName = 'Name2'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Name2'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_User'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Additional Name', entitytype = 'J023', fieldlength = 60, help = '', name = 'Name 2', readonlylogic = '', seqno = 1, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Name2'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')), 'nl_BE', 'Y', 'Name 2'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Name 2' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')), 'fr_FR', 'Y', 'Name 2'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Name 2' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Name2',(select AD_Element_ID from AD_Element where ColumnName = 'Name2'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Additional Name',
'J023',
100,
'',
'Name 2',
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
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'Name2'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Name2'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Additional Name', entitytype = 'J023', fieldlength = 100, help = '', name = 'Name 2', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Name2'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')), 'nl_BE', 'Y', 'Name 2'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Name 2' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')), 'fr_FR', 'Y', 'Name 2'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Name 2' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ShipAddress3',(select AD_Element_ID from AD_Element where ColumnName = 'ShipAddress3'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'J023',
100,
'',
'ShipAddress3',
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
where not exists (select 1 from AD_Column where ColumnName = 'ShipAddress3'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ShipAddress3'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'J023', fieldlength = 100, help = '', name = 'ShipAddress3', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ShipAddress3'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')), 'nl_BE', 'Y', 'ShipAddress3'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ShipAddress3' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')), 'fr_FR', 'Y', 'ShipAddress3'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ShipAddress3' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ShipName',(select AD_Element_ID from AD_Element where ColumnName = 'ShipName'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Alphanumeric identifier of the entity',
'J023',
100,
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
'ShipName',
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
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'ShipName'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ShipName'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Alphanumeric identifier of the entity', entitytype = 'J023', fieldlength = 100, help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', name = 'ShipName', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ShipName'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')), 'nl_BE', 'Y', 'ShipName'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ShipName' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')), 'fr_FR', 'Y', 'ShipName'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ShipName' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'InvAddress3',(select AD_Element_ID from AD_Element where ColumnName = 'InvAddress3'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'J023',
100,
'',
'InvAddress3',
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
where not exists (select 1 from AD_Column where ColumnName = 'InvAddress3'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'InvAddress3'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'J023', fieldlength = 100, help = '', name = 'InvAddress3', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'InvAddress3'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')), 'nl_BE', 'Y', 'InvAddress3'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'InvAddress3' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')), 'fr_FR', 'Y', 'InvAddress3'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'InvAddress3' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'InvAddress4',(select AD_Element_ID from AD_Element where ColumnName = 'InvAddress4'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'J023',
100,
'',
'InvAddress4',
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
where not exists (select 1 from AD_Column where ColumnName = 'InvAddress4'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'InvAddress4'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'J023', fieldlength = 100, help = '', name = 'InvAddress4', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'InvAddress4'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')), 'nl_BE', 'Y', 'InvAddress4'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'InvAddress4' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')), 'fr_FR', 'Y', 'InvAddress4'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'InvAddress4' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ShipAddress4',(select AD_Element_ID from AD_Element where ColumnName = 'ShipAddress4'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'J023',
100,
'',
'ShipAddress4',
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
where not exists (select 1 from AD_Column where ColumnName = 'ShipAddress4'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ShipAddress4'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_PosOrderPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'J023', fieldlength = 100, help = '', name = 'ShipAddress4', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ShipAddress4'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')), 'nl_BE', 'Y', 'ShipAddress4'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ShipAddress4' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')), 'fr_FR', 'Y', 'ShipAddress4'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ShipAddress4' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import POS Partner' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')),
'Name 2',
'Additional Name',
100,
'',
'J023',
'',
'',
55,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import POS Partner' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')), name = 'Name 2', description = 'Additional Name', displaylength = 100, displaylogic = '', entitytype = 'J023', help = '', obscuretype = '', seqno = 55, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'nl_BE', 'Y', 'Additional Name','','Name 2'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional Name',Help = '',Name = 'Name 2' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'fr_FR', 'Y', 'Additional Name','','Prénom'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional Name',Help = '',Name = 'Prénom' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import POS Partner' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')),
'ShipAddress4',
'',
100,
'',
'J023',
'',
'',
184,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import POS Partner' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')), name = 'ShipAddress4', description = '', displaylength = 100, displaylogic = '', entitytype = 'J023', help = '', obscuretype = '', seqno = 184, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'nl_BE', 'Y', '','','ShipAddress4'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ShipAddress4' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'fr_FR', 'Y', '','','ShipAddress4'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ShipAddress4' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import POS Partner' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')),
'ShipName',
'Alphanumeric identifier of the entity',
100,
'',
'J023',
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
'',
165,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import POS Partner' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')), name = 'ShipName', description = 'Alphanumeric identifier of the entity', displaylength = 100, displaylogic = '', entitytype = 'J023', help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', obscuretype = '', seqno = 165, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'nl_BE', 'Y', 'Alphanumeric identifier of the entity','The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','ShipName'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Alphanumeric identifier of the entity',Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Name = 'ShipName' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'fr_FR', 'Y', 'Alphanumeric identifier of the entity','The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','ShipName'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Alphanumeric identifier of the entity',Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Name = 'ShipName' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import POS Partner' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')),
'InvAddress3',
'',
100,
'',
'J023',
'',
'',
132,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import POS Partner' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')), name = 'InvAddress3', description = '', displaylength = 100, displaylogic = '', entitytype = 'J023', help = '', obscuretype = '', seqno = 132, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'nl_BE', 'Y', '','','InvAddress3'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'InvAddress3' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'fr_FR', 'Y', '','','InvAddress3'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'InvAddress3' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import POS Partner' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')),
'InvAddress4',
'',
100,
'',
'J023',
'',
'',
134,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import POS Partner' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')), name = 'InvAddress4', description = '', displaylength = 100, displaylogic = '', entitytype = 'J023', help = '', obscuretype = '', seqno = 134, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'nl_BE', 'Y', '','','InvAddress4'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'InvAddress4' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'fr_FR', 'Y', '','','InvAddress4'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'InvAddress4' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'InvAddress4' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import POS Partner' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')),
'ShipAddress3',
'',
100,
'',
'J023',
'',
'',
182,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import POS Partner' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import POS')), name = 'ShipAddress3', description = '', displaylength = 100, displaylogic = '', entitytype = 'J023', help = '', obscuretype = '', seqno = 182, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'nl_BE', 'Y', '','','ShipAddress3'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ShipAddress3' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))), 'fr_FR', 'Y', '','','ShipAddress3'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ShipAddress3' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ShipAddress3' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_PosOrderPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import POS Partner' and ad_window_id in (select ad_window_id from ad_window where value = 'Import POS'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Contact (User)_496' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')),
'Name 2',
'Additional Name',
60,
'',
'J023',
'',
'',
55,
1,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Contact (User)_496' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')), name = 'Name 2', description = 'Additional Name', displaylength = 60, displaylogic = '', entitytype = 'J023', help = '', obscuretype = '', seqno = 55, sortno = 1, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'nl_BE', 'Y', 'Additional Name','','Name 2'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional Name',Help = '',Name = 'Name 2' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'fr_FR', 'Y', 'Additional Name','','Prénom'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional Name',Help = '',Name = 'Prénom' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name2' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J023 - Nom Prenom', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J023' ;

