ALTER TABLE M_Product ADD SAVType CHAR(2);
insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J018','J018 - POS SAV default values',
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
where not exists (select 1 from AD_EntityType where EntityType = 'J018' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J018 - POS SAV default values', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J018' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'DOM',(select AD_Reference_ID from AD_Reference where Name = 'M_Product SAV Type'),
'',
'J018',
'Réparation domicile',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'DOM'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'M_Product SAV Type'), description = '', entitytype = 'J018', name = 'Réparation domicile', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'DOM'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='DOM' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')), 'nl_BE', 'Y', '','Réparation domicile'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOM' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Réparation domicile' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOM' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='DOM' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')), 'fr_FR', 'Y', '','Réparation domicile'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOM' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Réparation domicile' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOM' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'CODE2',(select AD_Reference_ID from AD_Reference where Name = 'M_Product SAV Type'),
'Code 2',
'J018',
'Code 2',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'CODE2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'M_Product SAV Type'), description = 'Code 2', entitytype = 'J018', name = 'Code 2', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'CODE2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CODE2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')), 'nl_BE', 'Y', 'Code 2','Code 2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CODE2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Code 2',Name = 'Code 2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CODE2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CODE2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')), 'fr_FR', 'Y', 'Code 2','Code 2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CODE2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Code 2',Name = 'Code 2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CODE2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'M_Product SAV Type','SAV Type',
'J018',
'SAV TypeCost Charge Type for production resources - Manual or Automatic.',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'M_Product SAV Type' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = 'SAV Type', entitytype = 'J018', help = 'SAV TypeCost Charge Type for production resources - Manual or Automatic.', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'M_Product SAV Type' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='M_Product SAV Type'), 'nl_BE', 'Y', 'SAV Type','SAV TypeCost Charge Type for production resources - Manual or Automatic.','M_Product SAV Type'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_Product SAV Type') and ad_language = 'nl_BE');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'SAV Type',Help = 'SAV TypeCost Charge Type for production resources - Manual or Automatic.',Name = 'M_Product SAV Type' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_Product SAV Type') and ad_language = 'nl_BE';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='M_Product SAV Type'), 'fr_FR', 'Y', 'SAV Type','SAV TypeCost Charge Type for production resources - Manual or Automatic.','M_Product SAV Type'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_Product SAV Type') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'SAV Type',Help = 'SAV TypeCost Charge Type for production resources - Manual or Automatic.',Name = 'M_Product SAV Type' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_Product SAV Type') and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'DOM',(select AD_Reference_ID from AD_Reference where Name = 'M_Product SAV Type'),
'',
'J018',
'Réparation domicile',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'DOM'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'M_Product SAV Type'), description = '', entitytype = 'J018', name = 'Réparation domicile', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'DOM'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='DOM' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')), 'nl_BE', 'Y', '','Réparation domicile'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOM' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Réparation domicile' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOM' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='DOM' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')), 'fr_FR', 'Y', '','Réparation domicile'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOM' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Réparation domicile' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DOM' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'CODE2',(select AD_Reference_ID from AD_Reference where Name = 'M_Product SAV Type'),
'Code 2',
'J018',
'Code 2',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'CODE2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'M_Product SAV Type'), description = 'Code 2', entitytype = 'J018', name = 'Code 2', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'CODE2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CODE2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')), 'nl_BE', 'Y', 'Code 2','Code 2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CODE2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Code 2',Name = 'Code 2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CODE2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CODE2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')), 'fr_FR', 'Y', 'Code 2','Code 2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CODE2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Code 2',Name = 'Code 2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CODE2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Product SAV Type')) and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'SAVType','',
'J018',
'',
'SAVType',
'',
'',
'',
'',
'SAVType',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'SAVType' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'J018', help = '', name = 'SAVType', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'SAVType', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'SAVType' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='SAVType'), 'nl_BE', 'Y', '','','SAVType','','','','','SAVType'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SAVType') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'SAVType',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'SAVType' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SAVType') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='SAVType'), 'fr_FR', 'Y', '','','SAVType','','','','','SAVType'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SAVType') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'SAVType',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'SAVType' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SAVType') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'SAVType',(select AD_Element_ID from AD_Element where ColumnName = 'SAVType'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'M_Product SAV Type'),
(select AD_Table_ID from AD_Table where TableName = 'M_Product'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'J018',
1,
'',
'SAVType',
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
where not exists (select 1 from AD_Column where ColumnName = 'SAVType'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'SAVType'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'M_Product SAV Type'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_Product'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'J018', fieldlength = 1, help = '', name = 'SAVType', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'SAVType'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')), 'nl_BE', 'Y', 'SAVType'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'SAVType' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')), 'fr_FR', 'Y', 'SAVType'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'SAVType' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Product_180' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'SAVType',
'',
0,
'',
'J018',
'',
'',
755,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Product_180' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'SAVType', description = '', displaylength = 0, displaylogic = '', entitytype = 'J018', help = '', obscuretype = '', seqno = 755, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_BE', 'Y', '','','SAVType'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'SAVType' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', '','','Type SAV'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Type SAV' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'SAVType' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Product')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product_180' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J018 - POS SAV default values', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J018' ;

