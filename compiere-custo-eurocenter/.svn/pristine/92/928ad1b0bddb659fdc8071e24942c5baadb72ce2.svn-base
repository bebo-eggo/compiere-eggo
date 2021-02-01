insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2VHA','2VHA - 93706',
'',
'',
'Y',
'',
'',
'',
'Y',
'1',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '2VHA' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2VHA - 93706', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2VHA' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsSoc','',
'2VHA',
'',
'Société',
'',
'',
'',
'',
'Société',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsSoc' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2VHA', help = '', name = 'Société', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Société', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsSoc' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsSoc'), 'fr_FR', 'Y', '','Société','','','Société','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsSoc') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Société',Help = '',PO_PrintName = '',PrintName = 'Société',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsSoc') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsSoc'), 'nl_NL', 'Y', '','Société','','','Société','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsSoc') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Société',Help = '',PO_PrintName = '',PrintName = 'Société',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsSoc') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Is2Pers','',
'2VHA',
'',
'2 personnes',
'',
'',
'',
'',
'2 personnes',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Is2Pers' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2VHA', help = '', name = '2 personnes', po_description = '', po_help = '', po_name = '', po_printname = '', printname = '2 personnes', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Is2Pers' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Is2Pers'), 'fr_FR', 'Y', '','2 personnes','','','2 personnes','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Is2Pers') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '2 personnes',Help = '',PO_PrintName = '',PrintName = '2 personnes',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Is2Pers') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Is2Pers'), 'nl_NL', 'Y', '','2 personnes','','','2 personnes','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Is2Pers') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '2 personnes',Help = '',PO_PrintName = '',PrintName = '2 personnes',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Is2Pers') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsOnePers','',
'2VHA',
'',
'1 personne',
'',
'',
'',
'',
'1 personne',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsOnePers' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2VHA', help = '', name = '1 personne', po_description = '', po_help = '', po_name = '', po_printname = '', printname = '1 personne', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsOnePers' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsOnePers'), 'fr_FR', 'Y', '','1 personne','','','1 personne','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsOnePers') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '1 personne',Help = '',PO_PrintName = '',PrintName = '1 personne',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsOnePers') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsOnePers'), 'nl_NL', 'Y', '','1 personne','','','1 personne','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsOnePers') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '1 personne',Help = '',PO_PrintName = '',PrintName = '1 personne',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsOnePers') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsContactDirect','',
'2VHA',
'',
'Contact direct',
'',
'',
'',
'',
'Contact direct',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsContactDirect' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2VHA', help = '', name = 'Contact direct', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Contact direct', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsContactDirect' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsContactDirect'), 'fr_FR', 'Y', '','Contact direct','','','Contact direct','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsContactDirect') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Contact direct',Help = '',PO_PrintName = '',PrintName = 'Contact direct',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsContactDirect') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsContactDirect'), 'nl_NL', 'Y', '','Contact direct','','','Contact direct','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsContactDirect') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Contact direct',Help = '',PO_PrintName = '',PrintName = 'Contact direct',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsContactDirect') and ad_language = 'nl_NL';

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'Greeting BPartner','C_Greeting.IsSoc = ''@IsSoc@''',
'',
'2VHA',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'Greeting BPartner' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'C_Greeting.IsSoc = ''@IsSoc@''', description = '', entitytype = '2VHA', type = 'S', isactive = 'Y' 
where Name = 'Greeting BPartner' ;

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'Greeting Users','C_Greeting.IsOnePers = ''Y''',
'',
'2VHA',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'Greeting Users' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'C_Greeting.IsOnePers = ''Y''', description = '', entitytype = '2VHA', type = 'S', isactive = 'Y' 
where Name = 'Greeting Users' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsContactDirect',(select AD_Element_ID from AD_Element where ColumnName = 'IsContactDirect'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_User'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'',
'2VHA',
1,
'',
'Contact direct',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsContactDirect'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsContactDirect'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_User'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = '', entitytype = '2VHA', fieldlength = 1, help = '', name = 'Contact direct', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsContactDirect'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')), 'fr_FR', 'Y', 'Contact direct'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Contact direct' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')), 'nl_NL', 'Y', 'Contact direct'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Contact direct' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Is2Pers',(select AD_Element_ID from AD_Element where ColumnName = 'Is2Pers'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Greeting'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'2VHA',
1,
'',
'2 personnes',
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
'Y',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Is2Pers'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Is2Pers'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Greeting'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = '2VHA', fieldlength = 1, help = '', name = '2 personnes', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'Y', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Is2Pers'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')), 'fr_FR', 'Y', '2 personnes'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '2 personnes' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')), 'nl_NL', 'Y', '2 personnes'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '2 personnes' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsSoc',(select AD_Element_ID from AD_Element where ColumnName = 'IsSoc'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'2VHA',
1,
'',
'Société',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsSoc'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsSoc'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = '2VHA', fieldlength = 1, help = '', name = 'Société', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsSoc'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'fr_FR', 'Y', 'Société'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Société' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'nl_NL', 'Y', 'Société'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Société' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsSoc',(select AD_Element_ID from AD_Element where ColumnName = 'IsSoc'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Greeting'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'2VHA',
1,
'',
'Société',
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
'Y',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'IsSoc'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsSoc'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Greeting'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = '2VHA', fieldlength = 1, help = '', name = 'Société', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'Y', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsSoc'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')), 'fr_FR', 'Y', 'Société'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Société' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')), 'nl_NL', 'Y', 'Société'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Société' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsOnePers',(select AD_Element_ID from AD_Element where ColumnName = 'IsOnePers'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Greeting'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'2VHA',
1,
'',
'1 personne',
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
'Y',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'IsOnePers'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsOnePers'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Greeting'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = '2VHA', fieldlength = 1, help = '', name = '1 personne', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'Y', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsOnePers'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')), 'fr_FR', 'Y', '1 personne'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '1 personne' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')), 'nl_NL', 'Y', '1 personne'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = '1 personne' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Contact (User)_496_1000120' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'Contact direct',
'',
0,
'',
'2VHA',
'',
'',
160,
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
160
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Contact (User)_496_1000120' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'Contact direct', description = '', displaylength = 0, displaylogic = '', entitytype = '2VHA', help = '', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 160 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', '','','Contact direct'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Contact direct' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', '','','Contact direct'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Contact direct' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')),
'Société',
'',
1,
'',
'2VHA',
'',
'',
65,
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
65
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')), name = 'Société', description = '', displaylength = 1, displaylogic = '', entitytype = '2VHA', help = '', obscuretype = '', seqno = 65, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 65 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'fr_FR', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'nl_NL', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Contact (User)_496' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')),
'Contact direct',
'',
0,
'',
'2VHA',
'',
'',
270,
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
270
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Contact (User)_496' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')), name = 'Contact direct', description = '', displaylength = 0, displaylogic = '', entitytype = '2VHA', help = '', obscuretype = '', seqno = 270, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 270 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'fr_FR', 'Y', '','','Contact direct'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Contact direct' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'nl_NL', 'Y', '','','Contact direct'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Contact direct' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsContactDirect' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_User')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Contact (User)_496' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220_1000120' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'Société',
'',
0,
'',
'2VHA',
'',
'',
45,
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
45
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Business Partner_220_1000120' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'Société', description = '', displaylength = 0, displaylogic = '', entitytype = '2VHA', help = '', obscuretype = '', seqno = 45, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 45 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Business Partner_220_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Greeting_282' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Greeting_178')),
'Société',
'',
0,
'',
'2VHA',
'',
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
100
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Greeting_282' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Greeting_178')), name = 'Société', description = '', displaylength = 0, displaylogic = '', entitytype = '2VHA', help = '', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 100 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))), 'fr_FR', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))), 'nl_NL', 'Y', '','','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsSoc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Greeting_282' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Greeting_178')),
'1 personne',
'',
0,
'',
'2VHA',
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
110
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Greeting_282' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Greeting_178')), name = '1 personne', description = '', displaylength = 0, displaylogic = '', entitytype = '2VHA', help = '', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 110 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))), 'fr_FR', 'Y', '','','1 personne'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = '1 personne' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))), 'nl_NL', 'Y', '','','1 personne'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = '1 personne' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsOnePers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Greeting_282' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Greeting_178')),
'2 personnes',
'',
0,
'',
'2VHA',
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
120
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Greeting_282' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Greeting_178')), name = '2 personnes', description = '', displaylength = 0, displaylogic = '', entitytype = '2VHA', help = '', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 120 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))), 'fr_FR', 'Y', '','','2 personnes'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = '2 personnes' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))), 'nl_NL', 'Y', '','','2 personnes'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = '2 personnes' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Is2Pers' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Greeting')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Greeting_282' and ad_window_id in (select ad_window_id from ad_window where value = 'Greeting_178'))) and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'CREATE_2_CONTACTS','2VHA',
'Ne pas oublier de créer 2 contacts',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'CREATE_2_CONTACTS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2VHA', msgtext = 'Ne pas oublier de créer 2 contacts', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'CREATE_2_CONTACTS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='CREATE_2_CONTACTS'), 'fr_FR', 'Y', 'Ne pas oublier de créer 2 contacts',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='CREATE_2_CONTACTS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ne pas oublier de créer 2 contacts',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='CREATE_2_CONTACTS') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='CREATE_2_CONTACTS'), 'nl_NL', 'Y', 'Ne pas oublier de créer 2 contacts',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='CREATE_2_CONTACTS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ne pas oublier de créer 2 contacts',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='CREATE_2_CONTACTS') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'NO_DEF_USER','2VHA',
'Aucun contact par défaut actif lié au tiers',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'NO_DEF_USER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2VHA', msgtext = 'Aucun contact par défaut actif lié au tiers', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'NO_DEF_USER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='NO_DEF_USER'), 'fr_FR', 'Y', 'Aucun contact par défaut actif lié au tiers',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NO_DEF_USER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Aucun contact par défaut actif lié au tiers',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NO_DEF_USER') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='NO_DEF_USER'), 'nl_NL', 'Y', 'Aucun contact par défaut actif lié au tiers',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NO_DEF_USER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Aucun contact par défaut actif lié au tiers',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NO_DEF_USER') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EMAIL_NOT_CORRECT','2VHA',
'Adresse Email incorrecte',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EMAIL_NOT_CORRECT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2VHA', msgtext = 'Adresse Email incorrecte', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EMAIL_NOT_CORRECT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EMAIL_NOT_CORRECT'), 'fr_FR', 'Y', 'Adresse Email incorrecte',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EMAIL_NOT_CORRECT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Adresse Email incorrecte',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EMAIL_NOT_CORRECT') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EMAIL_NOT_CORRECT'), 'nl_NL', 'Y', 'Adresse Email incorrecte',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EMAIL_NOT_CORRECT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Adresse Email incorrecte',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EMAIL_NOT_CORRECT') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'MORE_DEF_USER','2VHA',
'Plus de 1 contact par défaut actif lié au tiers',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'MORE_DEF_USER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2VHA', msgtext = 'Plus de 1 contact par défaut actif lié au tiers', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'MORE_DEF_USER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='MORE_DEF_USER'), 'fr_FR', 'Y', 'Plus de 1 contact par défaut actif lié au tiers',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='MORE_DEF_USER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Plus de 1 contact par défaut actif lié au tiers',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='MORE_DEF_USER') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='MORE_DEF_USER'), 'nl_NL', 'Y', 'Plus de 1 contact par défaut actif lié au tiers',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='MORE_DEF_USER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Plus de 1 contact par défaut actif lié au tiers',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='MORE_DEF_USER') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2VHA - 93706', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2VHA' ;

