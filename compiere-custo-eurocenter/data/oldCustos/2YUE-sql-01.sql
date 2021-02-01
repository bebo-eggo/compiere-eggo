insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2YUE','2YUE - Semaine AR',
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
where not exists (select 1 from AD_EntityType where EntityType = '2YUE' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2YUE - Semaine AR', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2YUE' ;

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'List_XX_Sem','',
'2YUE',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'List_XX_Sem' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2YUE', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'List_XX_Sem' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'01',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'1',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '1', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','1'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '1' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','1'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '1' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'02',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'2',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '2', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'03',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'3',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '3', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','3'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '3' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','3'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '3' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'05',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'5',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '05'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '5', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '05'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','5'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '5' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','5'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '5' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'06',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'6',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '06'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '6', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '06'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','6'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '6' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','6'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '6' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'07',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'7',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '07'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '7', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '07'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','7'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '7' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','7'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '7' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'08',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'8',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '08'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '8', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '08'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','8'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '8' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','8'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '8' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'09',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'9',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '09'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '9', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '09'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='09' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','9'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='09' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '9' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='09' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='09' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','9'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='09' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '9' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='09' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'10',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'10',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '10'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '10', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '10'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='10' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','10'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='10' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '10' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='10' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='10' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','10'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='10' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '10' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='10' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'11',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'11',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '11'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '11', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '11'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='11' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','11'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='11' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '11' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='11' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='11' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','11'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='11' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '11' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='11' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'12',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'12',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '12'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '12', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '12'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='12' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','12'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='12' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '12' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='12' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='12' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','12'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='12' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '12' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='12' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'13',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'13',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '13'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '13', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '13'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='13' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','13'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='13' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '13' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='13' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='13' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','13'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='13' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '13' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='13' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'14',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'14',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '14'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '14', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '14'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='14' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','14'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='14' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '14' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='14' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='14' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','14'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='14' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '14' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='14' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'15',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'15',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '15'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '15', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '15'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='15' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','15'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='15' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '15' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='15' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='15' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','15'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='15' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '15' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='15' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'16',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'16',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '16'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '16', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '16'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='16' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','16'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='16' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '16' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='16' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='16' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','16'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='16' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '16' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='16' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'17',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'17',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '17'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '17', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '17'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='17' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','17'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='17' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '17' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='17' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='17' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','17'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='17' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '17' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='17' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'18',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'18',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '18'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '18', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '18'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='18' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','18'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='18' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '18' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='18' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='18' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','18'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='18' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '18' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='18' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'19',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'19',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '19'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '19', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '19'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='19' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','19'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='19' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '19' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='19' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='19' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','19'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='19' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '19' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='19' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'20',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'20',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '20'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '20', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '20'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='20' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','20'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='20' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '20' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='20' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='20' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','20'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='20' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '20' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='20' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'21',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'21',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '21'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '21', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '21'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='21' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','21'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='21' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '21' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='21' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='21' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','21'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='21' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '21' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='21' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'22',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'22',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '22'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '22', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '22'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='22' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','22'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='22' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '22' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='22' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='22' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','22'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='22' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '22' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='22' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'23',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'23',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '23'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '23', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '23'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='23' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','23'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='23' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '23' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='23' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='23' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','23'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='23' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '23' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='23' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'24',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'24',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '24'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '24', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '24'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='24' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','24'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='24' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '24' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='24' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='24' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','24'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='24' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '24' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='24' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'25',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'25',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '25'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '25', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '25'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='25' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','25'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='25' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '25' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='25' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='25' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','25'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='25' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '25' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='25' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'26',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'26',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '26'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '26', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '26'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='26' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','26'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='26' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '26' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='26' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='26' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','26'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='26' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '26' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='26' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'27',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'27',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '27'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '27', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '27'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='27' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','27'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='27' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '27' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='27' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='27' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','27'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='27' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '27' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='27' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'28',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'28',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '28'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '28', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '28'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='28' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','28'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='28' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '28' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='28' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='28' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','28'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='28' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '28' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='28' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'29',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'29',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '29'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '29', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '29'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='29' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','29'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='29' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '29' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='29' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='29' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','29'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='29' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '29' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='29' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'30',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'30',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '30'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '30', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '30'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='30' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','30'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='30' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '30' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='30' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='30' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','30'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='30' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '30' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='30' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'31',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'31',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '31'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '31', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '31'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='31' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','31'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='31' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '31' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='31' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='31' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','31'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='31' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '31' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='31' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'32',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'32',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '32'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '32', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '32'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='32' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','32'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='32' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '32' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='32' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='32' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','32'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='32' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '32' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='32' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'33',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'33',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '33'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '33', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '33'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='33' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','33'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='33' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '33' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='33' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='33' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','33'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='33' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '33' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='33' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'34',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'34',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '34'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '34', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '34'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='34' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','34'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='34' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '34' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='34' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='34' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','34'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='34' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '34' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='34' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'35',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'35',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '35'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '35', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '35'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='35' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','35'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='35' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '35' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='35' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='35' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','35'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='35' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '35' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='35' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'36',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'36',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '36'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '36', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '36'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='36' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','36'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='36' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '36' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='36' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='36' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','36'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='36' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '36' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='36' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'37',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'37',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '37'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '37', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '37'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='37' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','37'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='37' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '37' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='37' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='37' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','37'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='37' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '37' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='37' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'38',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'38',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '38'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '38', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '38'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='38' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','38'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='38' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '38' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='38' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='38' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','38'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='38' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '38' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='38' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'39',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'39',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '39'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '39', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '39'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='39' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','39'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='39' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '39' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='39' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='39' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','39'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='39' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '39' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='39' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'40',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'40',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '40'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '40', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '40'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='40' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','40'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='40' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '40' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='40' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='40' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','40'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='40' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '40' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='40' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'41',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'41',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '41'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '41', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '41'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='41' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','41'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='41' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '41' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='41' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='41' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','41'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='41' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '41' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='41' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'42',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'42',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '42'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '42', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '42'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='42' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','42'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='42' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '42' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='42' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='42' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','42'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='42' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '42' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='42' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'43',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'43',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '43'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '43', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '43'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='43' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','43'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='43' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '43' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='43' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='43' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','43'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='43' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '43' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='43' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'44',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'44',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '44'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '44', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '44'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='44' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','44'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='44' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '44' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='44' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='44' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','44'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='44' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '44' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='44' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'45',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'45',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '45'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '45', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '45'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='45' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','45'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='45' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '45' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='45' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='45' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','45'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='45' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '45' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='45' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'46',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'46',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '46'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '46', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '46'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='46' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','46'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='46' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '46' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='46' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='46' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','46'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='46' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '46' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='46' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'47',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'47',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '47'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '47', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '47'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='47' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','47'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='47' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '47' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='47' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='47' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','47'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='47' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '47' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='47' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'48',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'48',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '48'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '48', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '48'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='48' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','48'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='48' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '48' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='48' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='48' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','48'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='48' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '48' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='48' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'49',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'49',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '49'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '49', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '49'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='49' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','49'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='49' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '49' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='49' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='49' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','49'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='49' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '49' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='49' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'50',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'50',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '50'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '50', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '50'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='50' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','50'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='50' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '50' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='50' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='50' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','50'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='50' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '50' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='50' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'51',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'51',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '51'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '51', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '51'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='51' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','51'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='51' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '51' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='51' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='51' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','51'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='51' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '51' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='51' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'52',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'52',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '52'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '52', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '52'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='52' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','52'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='52' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '52' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='52' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='52' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','52'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='52' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '52' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='52' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'04',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'4',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '4', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','4'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '4' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','4'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '4' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='List_XX_Sem'), 'fr_FR', 'Y', '','','List_XX_SemRec'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='List_XX_Sem') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'List_XX_SemRec' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='List_XX_Sem') and ad_language = 'fr_FR';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='List_XX_Sem'), 'nl_NL', 'Y', '','','List_XX_SemRec'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='List_XX_Sem') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'List_XX_SemRec' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='List_XX_Sem') and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'01',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'1',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '1', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','1'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '1' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','1'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '1' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'02',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'2',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '2', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'03',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'3',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '3', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','3'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '3' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','3'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '3' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'05',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'5',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '05'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '5', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '05'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','5'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '5' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','5'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '5' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'06',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'6',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '06'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '6', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '06'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','6'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '6' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','6'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '6' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'07',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'7',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '07'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '7', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '07'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','7'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '7' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','7'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '7' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'08',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'8',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '08'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '8', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '08'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','8'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '8' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','8'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '8' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'09',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'9',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '09'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '9', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '09'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='09' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','9'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='09' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '9' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='09' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='09' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','9'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='09' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '9' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='09' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'10',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'10',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '10'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '10', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '10'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='10' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','10'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='10' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '10' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='10' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='10' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','10'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='10' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '10' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='10' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'11',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'11',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '11'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '11', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '11'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='11' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','11'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='11' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '11' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='11' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='11' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','11'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='11' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '11' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='11' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'12',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'12',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '12'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '12', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '12'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='12' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','12'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='12' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '12' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='12' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='12' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','12'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='12' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '12' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='12' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'13',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'13',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '13'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '13', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '13'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='13' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','13'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='13' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '13' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='13' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='13' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','13'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='13' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '13' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='13' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'14',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'14',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '14'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '14', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '14'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='14' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','14'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='14' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '14' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='14' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='14' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','14'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='14' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '14' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='14' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'15',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'15',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '15'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '15', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '15'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='15' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','15'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='15' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '15' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='15' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='15' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','15'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='15' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '15' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='15' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'16',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'16',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '16'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '16', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '16'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='16' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','16'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='16' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '16' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='16' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='16' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','16'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='16' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '16' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='16' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'17',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'17',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '17'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '17', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '17'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='17' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','17'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='17' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '17' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='17' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='17' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','17'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='17' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '17' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='17' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'18',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'18',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '18'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '18', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '18'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='18' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','18'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='18' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '18' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='18' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='18' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','18'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='18' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '18' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='18' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'19',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'19',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '19'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '19', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '19'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='19' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','19'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='19' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '19' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='19' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='19' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','19'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='19' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '19' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='19' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'20',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'20',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '20'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '20', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '20'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='20' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','20'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='20' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '20' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='20' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='20' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','20'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='20' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '20' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='20' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'21',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'21',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '21'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '21', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '21'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='21' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','21'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='21' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '21' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='21' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='21' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','21'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='21' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '21' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='21' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'22',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'22',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '22'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '22', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '22'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='22' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','22'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='22' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '22' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='22' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='22' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','22'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='22' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '22' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='22' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'23',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'23',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '23'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '23', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '23'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='23' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','23'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='23' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '23' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='23' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='23' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','23'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='23' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '23' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='23' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'24',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'24',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '24'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '24', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '24'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='24' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','24'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='24' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '24' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='24' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='24' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','24'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='24' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '24' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='24' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'25',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'25',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '25'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '25', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '25'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='25' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','25'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='25' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '25' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='25' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='25' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','25'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='25' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '25' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='25' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'26',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'26',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '26'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '26', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '26'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='26' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','26'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='26' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '26' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='26' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='26' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','26'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='26' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '26' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='26' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'27',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'27',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '27'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '27', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '27'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='27' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','27'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='27' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '27' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='27' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='27' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','27'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='27' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '27' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='27' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'28',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'28',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '28'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '28', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '28'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='28' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','28'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='28' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '28' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='28' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='28' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','28'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='28' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '28' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='28' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'29',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'29',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '29'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '29', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '29'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='29' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','29'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='29' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '29' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='29' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='29' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','29'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='29' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '29' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='29' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'30',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'30',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '30'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '30', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '30'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='30' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','30'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='30' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '30' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='30' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='30' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','30'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='30' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '30' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='30' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'31',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'31',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '31'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '31', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '31'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='31' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','31'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='31' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '31' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='31' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='31' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','31'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='31' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '31' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='31' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'32',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'32',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '32'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '32', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '32'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='32' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','32'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='32' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '32' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='32' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='32' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','32'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='32' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '32' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='32' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'33',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'33',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '33'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '33', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '33'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='33' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','33'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='33' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '33' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='33' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='33' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','33'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='33' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '33' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='33' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'34',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'34',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '34'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '34', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '34'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='34' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','34'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='34' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '34' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='34' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='34' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','34'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='34' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '34' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='34' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'35',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'35',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '35'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '35', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '35'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='35' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','35'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='35' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '35' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='35' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='35' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','35'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='35' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '35' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='35' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'36',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'36',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '36'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '36', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '36'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='36' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','36'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='36' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '36' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='36' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='36' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','36'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='36' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '36' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='36' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'37',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'37',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '37'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '37', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '37'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='37' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','37'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='37' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '37' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='37' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='37' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','37'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='37' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '37' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='37' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'38',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'38',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '38'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '38', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '38'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='38' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','38'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='38' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '38' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='38' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='38' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','38'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='38' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '38' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='38' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'39',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'39',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '39'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '39', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '39'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='39' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','39'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='39' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '39' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='39' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='39' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','39'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='39' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '39' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='39' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'40',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'40',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '40'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '40', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '40'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='40' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','40'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='40' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '40' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='40' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='40' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','40'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='40' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '40' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='40' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'41',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'41',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '41'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '41', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '41'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='41' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','41'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='41' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '41' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='41' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='41' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','41'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='41' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '41' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='41' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'42',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'42',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '42'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '42', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '42'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='42' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','42'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='42' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '42' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='42' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='42' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','42'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='42' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '42' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='42' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'43',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'43',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '43'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '43', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '43'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='43' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','43'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='43' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '43' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='43' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='43' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','43'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='43' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '43' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='43' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'44',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'44',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '44'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '44', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '44'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='44' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','44'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='44' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '44' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='44' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='44' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','44'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='44' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '44' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='44' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'45',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'45',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '45'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '45', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '45'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='45' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','45'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='45' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '45' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='45' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='45' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','45'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='45' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '45' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='45' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'46',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'46',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '46'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '46', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '46'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='46' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','46'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='46' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '46' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='46' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='46' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','46'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='46' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '46' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='46' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'47',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'47',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '47'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '47', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '47'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='47' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','47'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='47' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '47' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='47' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='47' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','47'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='47' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '47' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='47' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'48',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'48',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '48'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '48', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '48'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='48' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','48'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='48' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '48' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='48' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='48' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','48'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='48' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '48' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='48' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'49',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'49',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '49'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '49', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '49'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='49' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','49'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='49' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '49' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='49' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='49' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','49'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='49' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '49' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='49' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'50',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'50',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '50'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '50', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '50'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='50' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','50'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='50' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '50' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='50' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='50' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','50'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='50' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '50' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='50' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'51',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'51',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '51'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '51', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '51'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='51' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','51'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='51' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '51' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='51' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='51' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','51'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='51' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '51' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='51' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'52',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'52',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '52'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '52', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '52'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='52' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','52'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='52' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '52' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='52' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='52' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','52'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='52' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '52' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='52' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'04',(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
'',
'2YUE',
'4',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), description = '', entitytype = '2YUE', name = '4', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'fr_FR', 'Y', '','4'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '4' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')), 'nl_NL', 'Y', '','4'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '4' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'List_XX_Sem')) and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_SemAR','',
'2YUE',
'',
'Sem. AR',
'',
'',
'',
'',
'Sem. AR',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_SemAR' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2YUE', help = '', name = 'Sem. AR', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Sem. AR', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_SemAR' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_SemAR'), 'fr_FR', 'Y', '','Sem. AR','','','Sem. AR','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_SemAR') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Sem. AR',Help = '',PO_PrintName = '',PrintName = 'Sem. AR',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_SemAR') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_SemAR'), 'nl_NL', 'Y', '','Sem. AR','','','Sem. AR','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_SemAR') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Sem. AR',Help = '',PO_PrintName = '',PrintName = 'Sem. AR',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_SemAR') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_SemRec','',
'2YUE',
'',
'Sem. Réc.',
'',
'',
'',
'',
'Sem. Réc.',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_SemRec' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2YUE', help = '', name = 'Sem. Réc.', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Sem. Réc.', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_SemRec' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_SemRec'), 'fr_FR', 'Y', '','Sem. Réc.','','','Sem. Réc.','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_SemRec') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Sem. Réc.',Help = '',PO_PrintName = '',PrintName = 'Sem. Réc.',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_SemRec') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_SemRec'), 'nl_NL', 'Y', '','Sem. Réc.','','','Sem. Réc.','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_SemRec') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Sem. Réc.',Help = '',PO_PrintName = '',PrintName = 'Sem. Réc.',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_SemRec') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ZZ_SemAR','',
'2YUE',
'',
'Sem. AR',
'',
'',
'',
'',
'Sem. AR',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ZZ_SemAR' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2YUE', help = '', name = 'Sem. AR', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Sem. AR', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ZZ_SemAR' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_SemAR'), 'fr_FR', 'Y', '','Sem. AR','','','Sem. AR','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_SemAR') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Sem. AR',Help = '',PO_PrintName = '',PrintName = 'Sem. AR',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_SemAR') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZZ_SemAR'), 'nl_NL', 'Y', '','Sem. AR','','','Sem. AR','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_SemAR') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Sem. AR',Help = '',PO_PrintName = '',PrintName = 'Sem. AR',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZZ_SemAR') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_SemAR',(select AD_Element_ID from AD_Element where ColumnName = 'XX_SemAR'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
(select AD_Table_ID from AD_Table where TableName = 'C_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2YUE',
2,
'',
'Sem. AR',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_SemAR'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_SemAR'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2YUE', fieldlength = 2, help = '', name = 'Sem. AR', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_SemAR'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'fr_FR', 'Y', 'Sem. AR'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sem. AR' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'nl_NL', 'Y', 'Sem. AR'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sem. AR' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_SemAR',(select AD_Element_ID from AD_Element where ColumnName = 'XX_SemAR'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
(select AD_Table_ID from AD_Table where TableName = 'Z_PoAcknoledgment'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2YUE',
2,
'',
'Sem. AR',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_SemAR'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PoAcknoledgment'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_SemAR'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_PoAcknoledgment'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2YUE', fieldlength = 2, help = '', name = 'Sem. AR', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_SemAR'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PoAcknoledgment');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PoAcknoledgment')), 'fr_FR', 'Y', 'Sem. AR'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PoAcknoledgment')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sem. AR' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PoAcknoledgment')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PoAcknoledgment')), 'nl_NL', 'Y', 'Sem. AR'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PoAcknoledgment')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sem. AR' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PoAcknoledgment')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_SemRec',(select AD_Element_ID from AD_Element where ColumnName = 'XX_SemRec'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
(select AD_Table_ID from AD_Table where TableName = 'C_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2YUE',
2,
'',
'Sem. Réc.',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_SemRec'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_SemRec'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2YUE', fieldlength = 2, help = '', name = 'Sem. Réc.', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_SemRec'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'fr_FR', 'Y', 'Sem. Réc.'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sem. Réc.' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'nl_NL', 'Y', 'Sem. Réc.'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sem. Réc.' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Order_186 ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'Sem. Réc.',
'',
0,
'@C_DocTypeTarget_ID@=1004922 | @C_DocTypeTarget_ID@=1005382 | @C_DocTypeTarget_ID@=1000028 | @C_DocTypeTarget_ID@=1005282 | @C_DocTypeTarget_ID@=1006385',
'2YUE',
'',
'',
302,
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
999
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Order_186 ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'Sem. Réc.', description = '', displaylength = 0, displaylogic = '@C_DocTypeTarget_ID@=1004922 | @C_DocTypeTarget_ID@=1005382 | @C_DocTypeTarget_ID@=1000028 | @C_DocTypeTarget_ID@=1005282 | @C_DocTypeTarget_ID@=1006385', entitytype = '2YUE', help = '', obscuretype = '', seqno = 302, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 999 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', '','','Sem. Réc.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Sem. Réc.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', '','','Sem. Réc.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Sem. Réc.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SemRec' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Order_186 ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'Sem. AR',
'',
0,
'@C_DocTypeTarget_ID@=1004922 | @C_DocTypeTarget_ID@=1005382 | @C_DocTypeTarget_ID@=1000028 | @C_DocTypeTarget_ID@=1005282 | @C_DocTypeTarget_ID@=1006385',
'2YUE',
'',
'',
303,
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
999
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Order_186 ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'Sem. AR', description = '', displaylength = 0, displaylogic = '@C_DocTypeTarget_ID@=1004922 | @C_DocTypeTarget_ID@=1005382 | @C_DocTypeTarget_ID@=1000028 | @C_DocTypeTarget_ID@=1005282 | @C_DocTypeTarget_ID@=1006385', entitytype = '2YUE', help = '', obscuretype = '', seqno = 303, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 999 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', '','','Sem. AR'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Sem. AR' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', '','','Sem. AR'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Sem. AR' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SemAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186 ' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'ZZ_SemAR',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Création AR'),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Sem. AR',
'',
'',
'',
'2YUE',
0,
'',
45,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'ZZ_SemAR'  and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Création AR'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'List_XX_Sem'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Sem. AR', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '2YUE', fieldlength = 0, help = '', seqno = 45, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'ZZ_SemAR'  and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ZZ_SemAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR')), 'fr_FR', 'Y', '','','Sem. AR'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ZZ_SemAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sem. AR' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ZZ_SemAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ZZ_SemAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR')), 'nl_NL', 'Y', '','','Sem. AR'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ZZ_SemAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sem. AR' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ZZ_SemAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR')) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2YUE - Semaine AR', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2YUE' ;

