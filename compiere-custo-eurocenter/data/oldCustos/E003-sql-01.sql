insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E003','E003 - Custo ZSUBPAYMENTRULE',
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
where not exists (select 1 from AD_EntityType where EntityType = 'E003' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'E003 - Custo ZSUBPAYMENTRULE', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E003' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'3',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Cartes',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '3'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Cartes', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '3'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Cartes'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Cartes' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'7',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Autre',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '7'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Autre', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '7'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='7' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Autre'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='7' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Autre' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='7' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'2',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Chèques',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Chèques', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Chèques'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Chèques' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'4',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Chèque cadeau',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '4'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Chèque cadeau', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '4'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Chèque cadeau'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Chèque cadeau' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'1',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Espèces',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '1'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Espèces', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '1'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Especes'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Especes' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'5',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Bons achat',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '5'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Bons achat', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '5'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='5' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Bons achat'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='5' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Bons achat' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='5' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'6',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Financement',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '6'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Financement', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '6'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='6' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Financement'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='6' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Financement' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='6' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'POSpaiement','',
'E003',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'POSpaiement' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E003', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'POSpaiement' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='POSpaiement'), 'fr_FR', 'Y', '','','POSpaiement'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='POSpaiement') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'POSpaiement' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='POSpaiement') and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'3',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Cartes',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '3'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Cartes', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '3'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Cartes'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Cartes' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'7',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Autre',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '7'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Autre', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '7'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='7' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Autre'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='7' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Autre' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='7' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'2',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Chèques',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Chèques', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Chèques'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Chèques' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'4',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Chèque cadeau',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '4'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Chèque cadeau', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '4'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Chèque cadeau'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Chèque cadeau' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'1',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Espèces',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '1'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Espèces', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '1'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Especes'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Especes' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'5',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Bons achat',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '5'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Bons achat', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '5'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='5' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Bons achat'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='5' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Bons achat' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='5' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'6',(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
'',
'E003',
'Financement',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '6'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), description = '', entitytype = 'E003', name = 'Financement', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '6'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='6' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')), 'fr_FR', 'Y', '','Financement'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='6' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Financement' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='6' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSpaiement')) and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ZPaymentRule','',
'E003',
'',
'ZPaymentRule',
'',
'',
'',
'',
'ZPaymentRule',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ZPaymentRule' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E003', help = '', name = 'ZPaymentRule', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'ZPaymentRule', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ZPaymentRule' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZPaymentRule'), 'fr_FR', 'Y', '','','ZPaymenRule','','','','','ZPaymenRule'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZPaymentRule') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ZPaymenRule',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ZPaymenRule' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZPaymentRule') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ZPaymentRule',(select AD_Element_ID from AD_Element where ColumnName = 'ZPaymentRule'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'),
(select AD_Table_ID from AD_Table where TableName = 'ZSubPaymentRule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E003',
1,
'',
'ZPaymentRule',
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
where not exists (select 1 from AD_Column where ColumnName = 'ZPaymentRule'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ZPaymentRule'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'POSpaiement'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZSubPaymentRule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E003', fieldlength = 1, help = '', name = 'ZPaymentRule', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ZPaymentRule'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ZPaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')), 'fr_FR', 'Y', 'ZPaymenRule'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZPaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ZPaymenRule' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ZPaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZPaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sous méthode de paiement_Sous Methode de Paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sous méthode de paiement')),
'ZPaymentRule',
'',
0,
'',
'E003',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZPaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sous méthode de paiement_Sous Methode de Paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sous méthode de paiement')), name = 'ZPaymentRule', description = '', displaylength = 0, displaylogic = '', entitytype = 'E003', help = '', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZPaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZPaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))), 'fr_FR', 'Y', '','','Catégorie de paiement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZPaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Catégorie de paiement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZPaymentRule' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'E003 - Custo ZSUBPAYMENTRULE', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E003' ;

