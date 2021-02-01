insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'4860','47860  Balances Tiers - Financements',
'',
'',
'Y',
'',
'',
'',
'N',
'1.0',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '4860' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '47860  Balances Tiers - Financements', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '4860' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'Y',(select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'),
'',
'4860',
'Financement inclus',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'Y'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'), description = '', entitytype = '4860', name = 'Financement inclus', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'Y'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')), 'fr_FR', 'Y', 'Oui',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Oui',Description = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')), 'nl_NL', 'Y', 'Oui',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Oui',Description = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'N',(select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'),
'',
'4860',
'Financement non inclus',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'N'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'), description = '', entitytype = '4860', name = 'Financement non inclus', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'N'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')), 'fr_FR', 'Y', 'Non',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Non',Description = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')), 'nl_NL', 'Y', 'Non',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Non',Description = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'F',(select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'),
'',
'4860',
'Seulement Financements',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'F'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'), description = '', entitytype = '4860', name = 'Seulement Financements', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'F'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')), 'fr_FR', 'Y', 'Seulement Financements',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Seulement Financements',Description = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')), 'nl_NL', 'Y', 'Seulement Financements',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Seulement Financements',Description = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'nl_NL';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'Z_Financement','',
'4860',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'Z_Financement' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '4860', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'Z_Financement' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='Z_Financement'), 'fr_FR', 'Y', 'Z_Financement','',''
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Z_Financement') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_Financement',Description = '',Help = '' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Z_Financement') and ad_language = 'fr_FR';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='Z_Financement'), 'nl_NL', 'Y', 'Z_Financement','',''
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Z_Financement') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_Financement',Description = '',Help = '' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Z_Financement') and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'Y',(select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'),
'',
'4860',
'Financement inclus',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'Y'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'), description = '', entitytype = '4860', name = 'Financement inclus', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'Y'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')), 'fr_FR', 'Y', 'Oui',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Oui',Description = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')), 'nl_NL', 'Y', 'Oui',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Oui',Description = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'N',(select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'),
'',
'4860',
'Financement non inclus',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'N'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'), description = '', entitytype = '4860', name = 'Financement non inclus', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'N'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')), 'fr_FR', 'Y', 'Non',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Non',Description = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')), 'nl_NL', 'Y', 'Non',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Non',Description = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'F',(select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'),
'',
'4860',
'Seulement Financements',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'F'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'), description = '', entitytype = '4860', name = 'Seulement Financements', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'F'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')), 'fr_FR', 'Y', 'Seulement Financements',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Seulement Financements',Description = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Name,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')), 'nl_NL', 'Y', 'Seulement Financements',''
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Seulement Financements',Description = '' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_Financement')) and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_Financement','',
'4860',
'',
'Financement',
'',
'',
'',
'',
'Financement',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_Financement' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '4860', help = '', name = 'Financement', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Financement', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_Financement' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Name,PO_PrintName,PO_Name,PO_Help,PrintName,Description,PO_Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_Financement'), 'fr_FR', 'Y', 'Financement','','','','Financement','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_Financement') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Financement',PO_PrintName = '',PO_Name = '',PO_Help = '',PrintName = 'Financement',Description = '',PO_Description = '',Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_Financement') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Name,PO_PrintName,PO_Name,PO_Help,PrintName,Description,PO_Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_Financement'), 'nl_NL', 'Y', 'Financement','','','','Financement','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_Financement') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Financement',PO_PrintName = '',PO_Name = '',PO_Help = '',PrintName = 'Financement',Description = '',PO_Description = '',Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_Financement') and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Financement',(select AD_Element_ID from AD_Element where ColumnName = 'Z_Financement'),
(select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiers'),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Financement',
'',
'',
'',
'4860',
12,
'',
150,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Financement'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiers'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_Financement'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Z_BalanceTiers'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Financement', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '4860', fieldlength = 12, help = '', seqno = 150, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Financement'  and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiers');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Financement' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiers')), 'fr_FR', 'Y', 'Financement','',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Financement' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiers')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Financement',Description = '',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Financement' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiers')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Financement' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiers')), 'nl_NL', 'Y', 'Financement','',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Financement' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiers')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Financement',Description = '',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Financement' and ad_process_id in (select ad_process_id from ad_process where value = 'Z_BalanceTiers')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Financement',(select AD_Element_ID from AD_Element where ColumnName = 'Z_Financement'),
(select AD_Process_ID from AD_Process where Value = 'ZBalanceAgee'),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Financement',
'',
'',
'Financement',
'4860',
12,
'',
60,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Financement'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZBalanceAgee'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_Financement'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ZBalanceAgee'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_Financement'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Financement', defaultvalue = '', defaultvalue2 = '', description = 'Financement', entitytype = '4860', fieldlength = 12, help = '', seqno = 60, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Financement'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZBalanceAgee');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Financement' and ad_process_id in (select ad_process_id from ad_process where value = 'ZBalanceAgee')), 'fr_FR', 'Y', 'Financement','Financement',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Financement' and ad_process_id in (select ad_process_id from ad_process where value = 'ZBalanceAgee')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Financement',Description = 'Financement',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Financement' and ad_process_id in (select ad_process_id from ad_process where value = 'ZBalanceAgee')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Name,Description,Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Financement' and ad_process_id in (select ad_process_id from ad_process where value = 'ZBalanceAgee')), 'nl_NL', 'Y', 'Financement','Financement',''
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Financement' and ad_process_id in (select ad_process_id from ad_process where value = 'ZBalanceAgee')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Financement',Description = 'Financement',Help = '' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Financement' and ad_process_id in (select ad_process_id from ad_process where value = 'ZBalanceAgee')) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '47860  Balances Tiers - Financements', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '4860' ;

