insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'1A0E','1A0E - Gestion du planning des ressources',
'1A0E - Gestion du planning des ressources',
'',
'Y',
'',
'',
'',
'N',
'3.6.1',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '1A0E' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '1A0E - Gestion du planning des ressources', description = '1A0E - Gestion du planning des ressources', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.6.1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '1A0E' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_IsPlannification','Plannification Document',
'1A0E',
'',
'Plannification',
'',
'',
'',
'',
'Plannification Document',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_IsPlannification' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Plannification Document', entitytype = '1A0E', help = '', name = 'Plannification', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Plannification Document', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_IsPlannification' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_IsPlannification'), 'nl_NL', 'Y', 'A interger dans la plannification','','A interger dans la plannification','','','','','A interger dans la plannification'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_IsPlannification') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'A interger dans la plannification',Help = '',Name = 'A interger dans la plannification',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'A interger dans la plannification' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_IsPlannification') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_IsPlannification'), 'fr_FR', 'Y', 'Plannification Document','','IsPlannification','','','','','Plannification Document'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_IsPlannification') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Plannification Document',Help = '',Name = 'IsPlannification',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Plannification Document' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_IsPlannification') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_AM','Identfies if it si AM',
'1A0E',
'',
'AM',
'',
'',
'',
'',
'AM',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_AM' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Identfies if it si AM', entitytype = '1A0E', help = '', name = 'AM', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'AM', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_AM' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_AM'), 'nl_NL', 'Y', 'Identfies if it si AM','','AM','','','','','AM'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_AM') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identfies if it si AM',Help = '',Name = 'AM',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'AM' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_AM') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_AM'), 'fr_FR', 'Y', 'Identfies if it si AM','','AM','','','','','AM'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_AM') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identfies if it si AM',Help = '',Name = 'AM',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'AM' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_AM') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_Hours','Number of Hours',
'1A0E',
'Number of Hours',
'Hours',
'',
'',
'',
'',
'Hours',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_Hours' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Number of Hours', entitytype = '1A0E', help = 'Number of Hours', name = 'Hours', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Hours', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_Hours' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_Hours'), 'nl_NL', 'Y', 'Heures','Heures','Heures','','','','','Heures'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Hours') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Heures',Help = 'Heures',Name = 'Heures',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Heures' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Hours') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_Hours'), 'fr_FR', 'Y', 'Number of Hours','Number of Hours','Hours','','','','','Hours'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Hours') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Number of Hours',Help = 'Number of Hours',Name = 'Hours',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Hours' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Hours') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_IsSecVendor','Secondary Ressource',
'1A0E',
'',
'Secondary Ressource ',
'',
'',
'',
'',
'Secondary Ressource',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_IsSecVendor' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Secondary Ressource', entitytype = '1A0E', help = '', name = 'Secondary Ressource ', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Secondary Ressource', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_IsSecVendor' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_IsSecVendor'), 'nl_NL', 'Y', 'Secondary Ressource','','Secondary Ressource ','','','','','Secondary Ressource'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_IsSecVendor') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Secondary Ressource',Help = '',Name = 'Secondary Ressource ',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Secondary Ressource' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_IsSecVendor') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_IsSecVendor'), 'fr_FR', 'Y', 'Secondary Ressource','','Secondary Ressource ','','','','','Secondary Ressource'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_IsSecVendor') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Secondary Ressource',Help = '',Name = 'Secondary Ressource ',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Secondary Ressource' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_IsSecVendor') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_PM','Identfies if is PM',
'1A0E',
'',
'PM',
'',
'',
'',
'',
'PM',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_PM' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Identfies if is PM', entitytype = '1A0E', help = '', name = 'PM', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'PM', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_PM' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_PM'), 'nl_NL', 'Y', 'Identfies if is PM','','PM','','','','','PM'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_PM') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identfies if is PM',Help = '',Name = 'PM',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'PM' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_PM') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_PM'), 'fr_FR', 'Y', 'Identfies if is PM','','PM','','','','','PM'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_PM') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identfies if is PM',Help = '',Name = 'PM',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'PM' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_PM') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_IsPlannification',(select AD_Element_ID from AD_Element where ColumnName = 'XX_IsPlannification'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_DocType'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Plannification Document',
'1A0E',
1,
'',
'Plannification',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_IsPlannification'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_IsPlannification'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_DocType'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Plannification Document', entitytype = '1A0E', fieldlength = 1, help = '', name = 'Plannification', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_IsPlannification'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')), 'nl_NL', 'Y', 'A interger dans la plannification'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'A interger dans la plannification' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')), 'fr_FR', 'Y', 'IsPlannification'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsPlannification' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_PM',(select AD_Element_ID from AD_Element where ColumnName = 'XX_PM'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_Interventions'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Identfies if is PM',
'1A0E',
1,
'',
'PM',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_PM'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_PM'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_Interventions'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Identfies if is PM', entitytype = '1A0E', fieldlength = 1, help = '', name = 'PM', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_PM'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')), 'nl_NL', 'Y', 'PM'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PM' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')), 'fr_FR', 'Y', 'PM'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PM' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_Hours',(select AD_Element_ID from AD_Element where ColumnName = 'XX_Hours'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Number'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_Interventions'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Number of Hours',
'1A0E',
14,
'Number of Hours',
'Hours',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_Hours'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_Hours'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Number'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_Interventions'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Number of Hours', entitytype = '1A0E', fieldlength = 14, help = 'Number of Hours', name = 'Hours', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_Hours'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')), 'nl_NL', 'Y', 'Heures'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Heures' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')), 'fr_FR', 'Y', 'Hours'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Hours' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_AM',(select AD_Element_ID from AD_Element where ColumnName = 'XX_AM'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_Interventions'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Identfies if it si AM',
'1A0E',
1,
'',
'AM',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_AM'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_AM'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_Interventions'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Identfies if it si AM', entitytype = '1A0E', fieldlength = 1, help = '', name = 'AM', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_AM'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')), 'nl_NL', 'Y', 'AM'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'AM' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')), 'fr_FR', 'Y', 'AM'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'AM' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_IsSecVendor',(select AD_Element_ID from AD_Element where ColumnName = 'XX_IsSecVendor'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_Interventions'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Secondary Ressource',
'1A0E',
1,
'',
'Secondary Ressource ',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_IsSecVendor'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_IsSecVendor'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_Interventions'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Secondary Ressource', entitytype = '1A0E', fieldlength = 1, help = '', name = 'Secondary Ressource ', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_IsSecVendor'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_IsSecVendor' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')), 'nl_NL', 'Y', 'Secondary Ressource '
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_IsSecVendor' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Secondary Ressource ' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_IsSecVendor' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_IsSecVendor' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')), 'fr_FR', 'Y', 'Secondary Ressource '
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_IsSecVendor' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Secondary Ressource ' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_IsSecVendor' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Z_Interventions' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Hours',
'Number of Hours',
0,
'',
'1A0E',
'Number of Hours',
'',
100,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Z_Interventions' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Hours', description = 'Number of Hours', displaylength = 0, displaylogic = '', entitytype = '1A0E', help = 'Number of Hours', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_NL', 'Y', 'heures','heures','heures'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'heures',Help = 'heures',Name = 'heures' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'heures','heures','heures'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'heures',Help = 'heures',Name = 'heures' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Hours' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Document Type_167' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Document Type_135')),
'Plannification',
'Plannification Document',
0,
'',
'1A0E',
'',
'',
10070,
0,
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Document Type_167' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Document Type_135')), name = 'Plannification', description = 'Plannification Document', displaylength = 0, displaylogic = '', entitytype = '1A0E', help = '', obscuretype = '', seqno = 10070, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))), 'nl_NL', 'Y', 'A interger dans la plannification','','A interger dans la plannification'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'A interger dans la plannification',Help = '',Name = 'A interger dans la plannification' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))), 'fr_FR', 'Y', 'A interger dans la plannification','','A interger dans la plannification'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'A interger dans la plannification',Help = '',Name = 'A interger dans la plannification' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_IsPlannification' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_DocType')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Document Type_167' and ad_window_id in (select ad_window_id from ad_window where value = 'Document Type_135'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Z_Interventions' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'PM',
'Identfies if is PM',
0,
'',
'1A0E',
'',
'',
120,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Z_Interventions' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'PM', description = 'Identfies if is PM', displaylength = 0, displaylogic = '', entitytype = '1A0E', help = '', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_NL', 'Y', 'Identfies if is PM','','PM'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identfies if is PM',Help = '',Name = 'PM' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'Identfies if is PM','','PM'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identfies if is PM',Help = '',Name = 'PM' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_PM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Z_Interventions' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'AM',
'Identfies if it si AM',
0,
'',
'1A0E',
'',
'',
110,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Z_Interventions' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'AM', description = 'Identfies if it si AM', displaylength = 0, displaylogic = '', entitytype = '1A0E', help = '', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_NL', 'Y', 'Identfies if it si AM','','AM'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identfies if it si AM',Help = '',Name = 'AM' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'Identfies if it si AM','','AM'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identfies if it si AM',Help = '',Name = 'AM' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_AM' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_Interventions')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_Interventions' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Form (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,Name,accesslevel, classname, description, entitytype, help, isactive, isbetafunctionality,JSPURL,AD_CTXAREA_ID, WebClassname) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Form'),'Resources Admin Calendar','3',
'',
'Resources Admin Calendar',
'1A0E',
'',
'Y',
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'org.compiere.gwt.server.window.CalendarAdminWindowImpl'
 from dual  
where not exists (select 1 from AD_Form where Name = 'Resources Admin Calendar' );

update AD_Form set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', classname = '', description = 'Resources Admin Calendar', entitytype = '1A0E', help = '', isactive = 'Y', isbetafunctionality = 'N', JSPURL = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), WebClassname = 'org.compiere.gwt.server.window.CalendarAdminWindowImpl' 
where Name = 'Resources Admin Calendar' ;

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Resources Admin Calendar'), 'nl_NL', 'Y', 'Calendrier Admin','','Calendrier Admin'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Resources Admin Calendar') and ad_language = 'nl_NL');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Calendrier Admin',Help = '',Name = 'Calendrier Admin' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Resources Admin Calendar') and ad_language = 'nl_NL';

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Resources Admin Calendar'), 'fr_FR', 'Y', 'Resources Admin Calendar','','Resources Admin Calendar'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Resources Admin Calendar') and ad_language = 'fr_FR');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Resources Admin Calendar',Help = '',Name = 'Resources Admin Calendar' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Resources Admin Calendar') and ad_language = 'fr_FR';

insert into AD_Form (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,Name,accesslevel, classname, description, entitytype, help, isactive, isbetafunctionality,JSPURL,AD_CTXAREA_ID, WebClassname) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Form'),'Resources Calendar','3',
'',
'Resources Calendar ',
'1A0E',
'',
'Y',
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'org.compiere.gwt.server.window.CalendarWindowImpl'
 from dual  
where not exists (select 1 from AD_Form where Name = 'Resources Calendar' );

update AD_Form set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', classname = '', description = 'Resources Calendar ', entitytype = '1A0E', help = '', isactive = 'Y', isbetafunctionality = 'N', JSPURL = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), WebClassname = 'org.compiere.gwt.server.window.CalendarWindowImpl' 
where Name = 'Resources Calendar' ;

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Resources Calendar'), 'nl_NL', 'Y', 'Calendrier des ressources','','Calendrier des ressources'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Resources Calendar') and ad_language = 'nl_NL');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Calendrier des ressources',Help = '',Name = 'Calendrier des ressources' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Resources Calendar') and ad_language = 'nl_NL';

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Resources Calendar'), 'fr_FR', 'Y', 'Resources Calendar ','','Resources Calendar'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Resources Calendar') and ad_language = 'fr_FR');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Resources Calendar ',Help = '',Name = 'Resources Calendar' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Resources Calendar') and ad_language = 'fr_FR';

insert into AD_Form (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,Name,accesslevel, classname, description, entitytype, help, isactive, isbetafunctionality,JSPURL,AD_CTXAREA_ID, WebClassname) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Form'),'Resource Planning','3',
'',
'Resource Planning',
'1A0E',
'',
'Y',
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'org.compiere.gwt.server.window.PlanningWindowImpl'
 from dual  
where not exists (select 1 from AD_Form where Name = 'Resource Planning' );

update AD_Form set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', classname = '', description = 'Resource Planning', entitytype = '1A0E', help = '', isactive = 'Y', isbetafunctionality = 'N', JSPURL = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), WebClassname = 'org.compiere.gwt.server.window.PlanningWindowImpl' 
where Name = 'Resource Planning' ;

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Resource Planning'), 'nl_NL', 'Y', 'Planning des Ressources ','','Planning des Ressources '
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Resource Planning') and ad_language = 'nl_NL');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Planning des Ressources ',Help = '',Name = 'Planning des Ressources ' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Resource Planning') and ad_language = 'nl_NL';

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Resource Planning'), 'fr_FR', 'Y', 'Resource Planning','','Resource Planning'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Resource Planning') and ad_language = 'fr_FR');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Resource Planning',Help = '',Name = 'Resource Planning' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Resource Planning') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Ressources Calendar','Ressources Calendar',
'X',
'Ressources Calendar',
'1A0E',
(select AD_Form_ID from AD_Form where Name = 'Resources Calendar'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Ressources Calendar' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Ressources Calendar', action = 'X', description = 'Ressources Calendar', entitytype = '1A0E', ad_form_id = (select AD_Form_ID from AD_Form where Name = 'Resources Calendar'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Ressources Calendar' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Ressources Calendar'), 'nl_NL', 'Y', 'Ressources Calendar','Ressources Calendar'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Ressources Calendar') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ressources Calendar',Name = 'Ressources Calendar' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Ressources Calendar') and ad_language = 'nl_NL';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Ressources Calendar'), 'fr_FR', 'Y', 'Calendrier des ressouces','Calendrier des ressouces'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Ressources Calendar') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Calendrier des ressouces',Name = 'Calendrier des ressouces' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Ressources Calendar') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Resource Planning','Resource Planning',
'X',
'Resource Planning',
'1A0E',
(select AD_Form_ID from AD_Form where Name = 'Resource Planning'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Resource Planning' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Resource Planning', action = 'X', description = 'Resource Planning', entitytype = '1A0E', ad_form_id = (select AD_Form_ID from AD_Form where Name = 'Resource Planning'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Resource Planning' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Resource Planning'), 'nl_NL', 'Y', 'Resource Planning','Resource Planning'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Resource Planning') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Resource Planning',Name = 'Resource Planning' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Resource Planning') and ad_language = 'nl_NL';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Resource Planning'), 'fr_FR', 'Y', 'Planning des ressources','Planning des ressources'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Resource Planning') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Planning des ressources',Name = 'Planning des ressources' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Resource Planning') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Resources Admin Calendar','Resources Admin Calendar',
'X',
'Resources Admin Calendar',
'1A0E',
(select AD_Form_ID from AD_Form where Name = 'Resources Admin Calendar'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Resources Admin Calendar' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Resources Admin Calendar', action = 'X', description = 'Resources Admin Calendar', entitytype = '1A0E', ad_form_id = (select AD_Form_ID from AD_Form where Name = 'Resources Admin Calendar'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Resources Admin Calendar' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Resources Admin Calendar'), 'nl_NL', 'Y', 'Resources Admin Calendar','Resources Admin Calendar'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Resources Admin Calendar') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Resources Admin Calendar',Name = 'Resources Admin Calendar' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Resources Admin Calendar') and ad_language = 'nl_NL';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Resources Admin Calendar'), 'fr_FR', 'Y', 'Calendrier Admin','Calendrier Admin '
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Resources Admin Calendar') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Calendrier Admin',Name = 'Calendrier Admin ' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Resources Admin Calendar') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Ressource Planning','Ressource Planning',
'',
'Ressource Planning',
'1A0E',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'Y'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Ressource Planning' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Ressource Planning', action = '', description = 'Ressource Planning', entitytype = '1A0E', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'Y' 
where Value = 'Ressource Planning' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Ressource Planning'), 'nl_NL', 'Y', 'Ressource Planning','Ressource Planning'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Ressource Planning') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ressource Planning',Name = 'Ressource Planning' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Ressource Planning') and ad_language = 'nl_NL';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Ressource Planning'), 'fr_FR', 'Y', 'Planning des ressources','Planning des ressources'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Ressource Planning') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Planning des ressources',Name = 'Planning des ressources' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Ressource Planning') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'AUDAXIS_CALENDAR_DAY_HOURS','1A0E',
'8',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'AUDAXIS_CALENDAR_DAY_HOURS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '1A0E', msgtext = '8', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'AUDAXIS_CALENDAR_DAY_HOURS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_DAY_HOURS'), 'nl_NL', 'Y', '8',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_DAY_HOURS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '8',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_DAY_HOURS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_DAY_HOURS'), 'fr_FR', 'Y', '8',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_DAY_HOURS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '8',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_DAY_HOURS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'AUDAXIS_PLANNING_RED','1A0E',
'Indisponible',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'AUDAXIS_PLANNING_RED' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '1A0E', msgtext = 'Indisponible', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'AUDAXIS_PLANNING_RED' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_RED'), 'nl_NL', 'Y', 'Holiday',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_RED') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Holiday',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_RED') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_RED'), 'fr_FR', 'Y', 'Holiday',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_RED') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Holiday',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_RED') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'AUDAXIS_CALENDAR_COPY','1A0E',
'Copy',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'AUDAXIS_CALENDAR_COPY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '1A0E', msgtext = 'Copy', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'AUDAXIS_CALENDAR_COPY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_COPY'), 'nl_NL', 'Y', 'Copier',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_COPY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Copier',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_COPY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_COPY'), 'fr_FR', 'Y', 'Copier',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_COPY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Copier',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_COPY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'AUDAXIS_CALENDAR_MOVE','1A0E',
'Move',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'AUDAXIS_CALENDAR_MOVE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '1A0E', msgtext = 'Move', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'AUDAXIS_CALENDAR_MOVE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_MOVE'), 'nl_NL', 'Y', 'Move',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_MOVE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Move',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_MOVE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_MOVE'), 'fr_FR', 'Y', 'Deplacer',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_MOVE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Deplacer',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_MOVE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'AUDAXIS_PLANNING_GREEN','1A0E',
'Charge Complete',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'AUDAXIS_PLANNING_GREEN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '1A0E', msgtext = 'Charge Complete', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'AUDAXIS_PLANNING_GREEN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_GREEN'), 'nl_NL', 'Y', 'Completed',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_GREEN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Completed',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_GREEN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_GREEN'), 'fr_FR', 'Y', 'Completed',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_GREEN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Completed',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_GREEN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'AUDAXIS_PLANNING_YELLOW','1A0E',
'Partiellement Disponible',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'AUDAXIS_PLANNING_YELLOW' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '1A0E', msgtext = 'Partiellement Disponible', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'AUDAXIS_PLANNING_YELLOW' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_YELLOW'), 'nl_NL', 'Y', 'Not Completed',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_YELLOW') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Not Completed',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_YELLOW') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_YELLOW'), 'fr_FR', 'Y', 'Not Completed',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_YELLOW') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Not Completed',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_PLANNING_YELLOW') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'AUDAXIS_CALENDAR_DELETE','1A0E',
'Delete Intervention',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'AUDAXIS_CALENDAR_DELETE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '1A0E', msgtext = 'Delete Intervention', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'AUDAXIS_CALENDAR_DELETE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_DELETE'), 'nl_NL', 'Y', 'Supprimer Intervention',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_DELETE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Supprimer Intervention',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_DELETE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_DELETE'), 'fr_FR', 'Y', 'Supprimer Intervention',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_DELETE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Supprimer Intervention',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_DELETE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'AUDAXIS_CALENDAR_COPY_TEXT','1A0E',
'Copy Intervention',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'AUDAXIS_CALENDAR_COPY_TEXT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '1A0E', msgtext = 'Copy Intervention', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'AUDAXIS_CALENDAR_COPY_TEXT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_COPY_TEXT'), 'nl_NL', 'Y', 'Copier Intervention',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_COPY_TEXT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Copier Intervention',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_COPY_TEXT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_COPY_TEXT'), 'fr_FR', 'Y', 'Copier Intervention',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_COPY_TEXT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Copier Intervention',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CALENDAR_COPY_TEXT') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '1A0E - Gestion du planning des ressources', description = '1A0E - Gestion du planning des ressources', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.6.1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '1A0E' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Ressources Calendar') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Ressources Calendar')); 

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Resource Planning') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Resource Planning')); 

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Resources Admin Calendar') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Resources Admin Calendar')); 

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Ressource Planning') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Ressource Planning')); 

