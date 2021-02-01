ALTER TABLE C_TaxCategory ADD TaxCategoryType CHAR(1) ;
insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC54','EC54 - Tax Category Type',
'EC54 - Tax Category Type',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EC54' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC54 - Tax Category Type', description = 'EC54 - Tax Category Type', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC54' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'M',(select AD_Reference_ID from AD_Reference where Name = 'TaxCategoryType'),
'',
'EC54',
'Marchandises',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'M'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'TaxCategoryType'), description = '', entitytype = 'EC54', name = 'Marchandises', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'M'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')), 'fr_FR', 'Y', '','Marchandises'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Marchandises' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')), 'nl_NL', 'Y', '','Marchandises'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Marchandises' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'S',(select AD_Reference_ID from AD_Reference where Name = 'TaxCategoryType'),
'',
'EC54',
'Service',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'S'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'TaxCategoryType'), description = '', entitytype = 'EC54', name = 'Service', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'S'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='S' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')), 'fr_FR', 'Y', '','Service'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='S' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Service' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='S' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='S' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')), 'nl_NL', 'Y', '','Service'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='S' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Service' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='S' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'nl_NL';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'TaxCategoryType','TaxCategoryType',
'EC54',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'TaxCategoryType' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = 'TaxCategoryType', entitytype = 'EC54', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'TaxCategoryType' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='TaxCategoryType'), 'fr_FR', 'Y', 'TaxCategoryType','','TaxCategoryType'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='TaxCategoryType') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'TaxCategoryType',Help = '',Name = 'TaxCategoryType' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='TaxCategoryType') and ad_language = 'fr_FR';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='TaxCategoryType'), 'nl_NL', 'Y', 'TaxCategoryType','','TaxCategoryType'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='TaxCategoryType') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'TaxCategoryType',Help = '',Name = 'TaxCategoryType' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='TaxCategoryType') and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'M',(select AD_Reference_ID from AD_Reference where Name = 'TaxCategoryType'),
'',
'EC54',
'Marchandises',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'M'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'TaxCategoryType'), description = '', entitytype = 'EC54', name = 'Marchandises', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'M'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')), 'fr_FR', 'Y', '','Marchandises'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Marchandises' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')), 'nl_NL', 'Y', '','Marchandises'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Marchandises' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'S',(select AD_Reference_ID from AD_Reference where Name = 'TaxCategoryType'),
'',
'EC54',
'Service',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'S'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'TaxCategoryType'), description = '', entitytype = 'EC54', name = 'Service', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'S'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='S' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')), 'fr_FR', 'Y', '','Service'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='S' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Service' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='S' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='S' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')), 'nl_NL', 'Y', '','Service'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='S' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Service' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='S' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TaxCategoryType')) and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'TaxCategoryType','',
'EC54',
'',
'TaxCategoryType',
'',
'',
'',
'',
'TaxCategoryType',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'TaxCategoryType' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC54', help = '', name = 'TaxCategoryType', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'TaxCategoryType', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'TaxCategoryType' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TaxCategoryType'), 'fr_FR', 'Y', '','','TaxCategoryType','','','','','TaxCategoryType'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TaxCategoryType') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'TaxCategoryType',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'TaxCategoryType' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TaxCategoryType') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TaxCategoryType'), 'nl_NL', 'Y', '','','TaxCategoryType','','','','','TaxCategoryType'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TaxCategoryType') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'TaxCategoryType',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'TaxCategoryType' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TaxCategoryType') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'TaxCategoryType',(select AD_Element_ID from AD_Element where ColumnName = 'TaxCategoryType'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'TaxCategoryType'),
(select AD_Table_ID from AD_Table where TableName = 'C_TaxCategory'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC54',
1,
'',
'TaxCategoryType',
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
where not exists (select 1 from AD_Column where ColumnName = 'TaxCategoryType'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'TaxCategoryType'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'TaxCategoryType'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_TaxCategory'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC54', fieldlength = 1, help = '', name = 'TaxCategoryType', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'TaxCategoryType'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory')), 'fr_FR', 'Y', 'TaxCategoryType'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'TaxCategoryType' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory')), 'nl_NL', 'Y', 'TaxCategoryType'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'TaxCategoryType' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Tax Category_176' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Tax Category_138')),
'TaxCategoryType',
'',
1,
'',
'EC54',
'',
'',
80,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Category_176' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Category_138')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Tax Category_176' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Tax Category_138')), name = 'TaxCategoryType', description = '', displaylength = 1, displaylogic = '', entitytype = 'EC54', help = '', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Category_176' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Category_138'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Category_176' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Category_138'))), 'fr_FR', 'Y', '','','TaxCategoryType'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Category_176' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Category_138'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'TaxCategoryType' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Category_176' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Category_138'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Category_176' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Category_138'))), 'nl_NL', 'Y', '','','TaxCategoryType'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Category_176' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Category_138'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'TaxCategoryType' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TaxCategoryType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_TaxCategory')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Tax Category_176' and ad_window_id in (select ad_window_id from ad_window where value = 'Tax Category_138'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC54 - Tax Category Type', description = 'EC54 - Tax Category Type', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC54' ;

