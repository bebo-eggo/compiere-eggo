insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E002','E002 - POS sav',
'',
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
where not exists (select 1 from AD_EntityType where EntityType = 'E002' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'E002 - POS sav', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E002' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'02',(select AD_Reference_ID from AD_Reference where Name = 'POSsav'),
'',
'E002',
'Code 2',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSsav'), description = '', entitytype = 'E002', name = 'Code 2', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')), 'fr_FR', 'Y', '','Code 2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Code 2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'01',(select AD_Reference_ID from AD_Reference where Name = 'POSsav'),
'',
'E002',
'DOA',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSsav'), description = '', entitytype = 'E002', name = 'DOA', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')), 'fr_FR', 'Y', '','DOA'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'DOA' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'03',(select AD_Reference_ID from AD_Reference where Name = 'POSsav'),
'',
'E002',
'Réparation',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSsav'), description = '', entitytype = 'E002', name = 'Réparation', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')), 'fr_FR', 'Y', '','Réparation'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Réparation' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')) and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'POSsav','',
'E002',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'POSsav' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E002', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'POSsav' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='POSsav'), 'fr_FR', 'Y', '','','POSsav'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='POSsav') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'POSsav' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='POSsav') and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'02',(select AD_Reference_ID from AD_Reference where Name = 'POSsav'),
'',
'E002',
'Code 2',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSsav'), description = '', entitytype = 'E002', name = 'Code 2', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')), 'fr_FR', 'Y', '','Code 2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Code 2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'01',(select AD_Reference_ID from AD_Reference where Name = 'POSsav'),
'',
'E002',
'DOA',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSsav'), description = '', entitytype = 'E002', name = 'DOA', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')), 'fr_FR', 'Y', '','DOA'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'DOA' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'03',(select AD_Reference_ID from AD_Reference where Name = 'POSsav'),
'',
'E002',
'Réparation',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSsav'), description = '', entitytype = 'E002', name = 'Réparation', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')), 'fr_FR', 'Y', '','Réparation'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Réparation' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSsav')) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'E002 - POS sav', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E002' ;

