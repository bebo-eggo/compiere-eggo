insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E005','E005 - Transaction Message Table',
'',
'',
'Y',
'',
'',
'',
'N',
'1.00',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'E005' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'E005 - Transaction Message Table', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.00', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E005' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'01',(select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'),
'',
'E005',
'A Valider Gérant',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'), description = '', entitytype = 'E005', name = 'A Valider Gérant', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'nl_BE', 'Y', '','Valider Gérant'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Valider Gérant' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'fr_FR', 'Y', '','Valider Gérant'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Valider Gérant' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'02',(select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'),
'',
'E005',
'A Valider Product Manager',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'), description = '', entitytype = 'E005', name = 'A Valider Product Manager', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'nl_BE', 'Y', '','Valider Product Manager'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Valider Product Manager' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'fr_FR', 'Y', '','Valider Product Manager'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Valider Product Manager' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'04',(select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'),
'',
'E005',
'A Livrer Magasin Autre',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'), description = '', entitytype = 'E005', name = 'A Livrer Magasin Autre', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'nl_BE', 'Y', '','Livraison OrgTo'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Livraison OrgTo' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'fr_FR', 'Y', '','Livraison OrgTo'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Livraison OrgTo' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'90',(select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'),
'',
'E005',
'Traité',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '90'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'), description = '', entitytype = 'E005', name = 'Traité', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '90'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='90' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'nl_BE', 'Y', '','Traité'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='90' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Traité' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='90' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='90' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'fr_FR', 'Y', '','Traité'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='90' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Traité' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='90' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'99',(select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'),
'',
'E005',
'Annulé',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '99'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'), description = '', entitytype = 'E005', name = 'Annulé', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '99'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='99' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'nl_BE', 'Y', '','Annulé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='99' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Annulé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='99' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='99' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'fr_FR', 'Y', '','Annulé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='99' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Annulé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='99' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'00',(select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'),
'',
'E005',
'Créé',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '00'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'), description = '', entitytype = 'E005', name = 'Créé', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '00'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='00' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'nl_BE', 'Y', '','Créé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='00' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Créé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='00' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='00' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'fr_FR', 'Y', '','Créé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='00' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Créé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='00' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'POSActionStatus','Pos Action Status',
'E005',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'POSActionStatus' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = 'Pos Action Status', entitytype = 'E005', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'POSActionStatus' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='POSActionStatus'), 'nl_BE', 'Y', 'Pos Action Status','','POSActionStatus'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='POSActionStatus') and ad_language = 'nl_BE');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Pos Action Status',Help = '',Name = 'POSActionStatus' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='POSActionStatus') and ad_language = 'nl_BE';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='POSActionStatus'), 'fr_FR', 'Y', 'Pos Action Status','','POSActionStatus'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='POSActionStatus') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Pos Action Status',Help = '',Name = 'POSActionStatus' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='POSActionStatus') and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'01',(select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'),
'',
'E005',
'A Valider Gérant',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'), description = '', entitytype = 'E005', name = 'A Valider Gérant', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'nl_BE', 'Y', '','Valider Gérant'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Valider Gérant' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'fr_FR', 'Y', '','Valider Gérant'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Valider Gérant' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'02',(select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'),
'',
'E005',
'A Valider Product Manager',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'), description = '', entitytype = 'E005', name = 'A Valider Product Manager', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'nl_BE', 'Y', '','Valider Product Manager'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Valider Product Manager' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'fr_FR', 'Y', '','Valider Product Manager'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Valider Product Manager' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'04',(select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'),
'',
'E005',
'A Livrer Magasin Autre',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'), description = '', entitytype = 'E005', name = 'A Livrer Magasin Autre', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'nl_BE', 'Y', '','Livraison OrgTo'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Livraison OrgTo' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'fr_FR', 'Y', '','Livraison OrgTo'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Livraison OrgTo' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'90',(select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'),
'',
'E005',
'Traité',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '90'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'), description = '', entitytype = 'E005', name = 'Traité', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '90'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='90' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'nl_BE', 'Y', '','Traité'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='90' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Traité' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='90' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='90' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'fr_FR', 'Y', '','Traité'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='90' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Traité' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='90' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'99',(select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'),
'',
'E005',
'Annulé',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '99'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'), description = '', entitytype = 'E005', name = 'Annulé', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '99'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='99' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'nl_BE', 'Y', '','Annulé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='99' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Annulé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='99' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='99' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'fr_FR', 'Y', '','Annulé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='99' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Annulé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='99' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'00',(select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'),
'',
'E005',
'Créé',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '00'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSActionStatus'), description = '', entitytype = 'E005', name = 'Créé', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '00'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='00' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'nl_BE', 'Y', '','Créé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='00' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Créé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='00' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='00' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')), 'fr_FR', 'Y', '','Créé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='00' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Créé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='00' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSActionStatus')) and ad_language = 'fr_FR';

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'Transactions Messages','Transactions Messages',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'Transactions Messages',
'E005',
'',
'M',
0,
0,
'Y',
'N',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Window where Value = 'Transactions Messages' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Transactions Messages', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = 'Transactions Messages', entitytype = 'E005', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'Transactions Messages' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Transactions Messages'), 'nl_BE', 'Y', 'Transactions Messages','','Transactions Messages'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Transactions Messages') and ad_language = 'nl_BE');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transactions Messages',Help = '',Name = 'Transactions Messages' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Transactions Messages') and ad_language = 'nl_BE';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Transactions Messages'), 'fr_FR', 'Y', 'Transactions Messages','','Transactions Messages'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Transactions Messages') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transactions Messages',Help = '',Name = 'Transactions Messages' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Transactions Messages') and ad_language = 'fr_FR';

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'Validation des Messages','Validation des Messages',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'Validation des Messages',
'E005',
'',
'M',
0,
0,
'Y',
'N',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Window where Value = 'Validation des Messages' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Validation des Messages', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = 'Validation des Messages', entitytype = 'E005', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'Validation des Messages' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Validation des Messages'), 'nl_BE', 'Y', 'Validation des Messages','','Validation des Messages'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Validation des Messages') and ad_language = 'nl_BE');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Validation des Messages',Help = '',Name = 'Validation des Messages' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Validation des Messages') and ad_language = 'nl_BE';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Validation des Messages'), 'fr_FR', 'Y', 'Validation des Messages','','Validation des Messages'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Validation des Messages') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Validation des Messages',Help = '',Name = 'Validation des Messages' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Validation des Messages') and ad_language = 'fr_FR';

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'Validation Création d''Article','Validation Création d''Article',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'Validation Création d''Article',
'E005',
'',
'M',
0,
0,
'Y',
'N',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Window where Value = 'Validation Création d''Article' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Validation Création d''Article', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = 'Validation Création d''Article', entitytype = 'E005', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'Validation Création d''Article' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Validation Création d''Article'), 'nl_BE', 'Y', 'Validation Création d''Article','','Validation Création d''Article'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Validation Création d''Article') and ad_language = 'nl_BE');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Validation Création d''Article',Help = '',Name = 'Validation Création d''Article' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Validation Création d''Article') and ad_language = 'nl_BE';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Validation Création d''Article'), 'fr_FR', 'Y', 'Validation Création d''Article','','Validation Création d''Article'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Validation Création d''Article') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Validation Création d''Article',Help = '',Name = 'Validation Création d''Article' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Validation Création d''Article') and ad_language = 'fr_FR';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, ischangelog, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'Z_TransactionMsg','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Transaction Message',
'E005',
'',
'N',
0,
'Transaction Message',
'L',
'Y',
'N',
'Y',
'Y',
'N',
'N',
(select AD_Window_ID from AD_Window where Value = 'Transactions Messages'),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'Z_TransactionMsg' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = 'Transaction Message', entitytype = 'E005', help = '', importtable = 'N', loadseq = 0, name = 'Transaction Message', replicationtype = 'L', isactive = 'Y', ischangelog = 'N', isdeleteable = 'Y', ishighvolume = 'Y', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Transactions Messages'), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'Z_TransactionMsg' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='Z_TransactionMsg'), 'nl_BE', 'Y', 'Transaction Message'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_TransactionMsg') and ad_language = 'nl_BE');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Transaction Message' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_TransactionMsg') and ad_language = 'nl_BE';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='Z_TransactionMsg'), 'fr_FR', 'Y', 'Transaction Message'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_TransactionMsg') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Transaction Message' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_TransactionMsg') and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'ProcessTransactionMsg','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.process.TraiterTransaction',
'',
'E005',
'',
'',
'',
'Traiter Transaction',
'',
'Y',
'N',
'N',
'N',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
(select AD_BView_ID from AD_BView where Name = ''),
(select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Process where Value = 'ProcessTransactionMsg' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.process.TraiterTransaction', description = '', entitytype = 'E005', help = '', jasperreport = '', procedurename = '', name = 'Traiter Transaction', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'ProcessTransactionMsg' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ProcessTransactionMsg'), 'nl_BE', 'Y', '','','Traiter Transaction'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ProcessTransactionMsg') and ad_language = 'nl_BE');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Traiter Transaction' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ProcessTransactionMsg') and ad_language = 'nl_BE';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='ProcessTransactionMsg'), 'fr_FR', 'Y', '','','Traiter Transaction'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ProcessTransactionMsg') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Traiter Transaction' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='ProcessTransactionMsg') and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Transactions Message Processor','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.pos.process.TransactionMessageLauncher',
'',
'E005',
'',
'',
'',
'Transactions Message Processor',
'',
'Y',
'N',
'N',
'N',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
(select AD_BView_ID from AD_BView where Name = ''),
(select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Process where Value = 'Transactions Message Processor' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.pos.process.TransactionMessageLauncher', description = '', entitytype = 'E005', help = '', jasperreport = '', procedurename = '', name = 'Transactions Message Processor', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Transactions Message Processor' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Transactions Message Processor'), 'nl_BE', 'Y', '','','Transactions Message Processor'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Transactions Message Processor') and ad_language = 'nl_BE');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Transactions Message Processor' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Transactions Message Processor') and ad_language = 'nl_BE';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Transactions Message Processor'), 'fr_FR', 'Y', '','','Transactions Message Processor'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Transactions Message Processor') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Transactions Message Processor' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Transactions Message Processor') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'POReceiptNO','',
'E005',
'',
'POReceiptNO',
'',
'',
'',
'',
'POReceiptNO',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'POReceiptNO' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E005', help = '', name = 'POReceiptNO', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'POReceiptNO', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'POReceiptNO' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='POReceiptNO'), 'nl_BE', 'Y', '','','POReceiptNO','','','','','POReceiptNO'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='POReceiptNO') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'POReceiptNO',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'POReceiptNO' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='POReceiptNO') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='POReceiptNO'), 'fr_FR', 'Y', '','','No Reception','','','','','No Reception'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='POReceiptNO') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'No Reception',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'No Reception' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='POReceiptNO') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsOnError','',
'E005',
'',
'IsOnError',
'',
'',
'',
'',
'IsOnError',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsOnError' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E005', help = '', name = 'IsOnError', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'IsOnError', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsOnError' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsOnError'), 'nl_BE', 'Y', '','','IsOnError','','','','','IsOnError'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsOnError') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsOnError',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'IsOnError' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsOnError') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsOnError'), 'fr_FR', 'Y', '','','En Erreur','','','','','En Erreur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsOnError') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'En Erreur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'En Erreur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsOnError') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsValidatedByOrgFrom','',
'E005',
'',
'Validé par Magasin d''origine',
'',
'',
'',
'',
'Validé par Magasin d''origine',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsValidatedByOrgFrom' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E005', help = '', name = 'Validé par Magasin d''origine', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Validé par Magasin d''origine', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsValidatedByOrgFrom' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsValidatedByOrgFrom'), 'nl_BE', 'Y', '','','Validé par Magasin d''origine','','','','','Validé par Magasin d''origine'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsValidatedByOrgFrom') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Validé par Magasin d''origine',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Validé par Magasin d''origine' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsValidatedByOrgFrom') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsValidatedByOrgFrom'), 'fr_FR', 'Y', '','','Validé par Magasin d''origine','','','','','Validé par Magasin d''origine'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsValidatedByOrgFrom') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Validé par Magasin d''origine',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Validé par Magasin d''origine' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsValidatedByOrgFrom') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsValidatedByOrgTo','',
'E005',
'',
'Validé par Magasin de destination',
'',
'',
'',
'',
'Validé par Magasin de destination',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsValidatedByOrgTo' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E005', help = '', name = 'Validé par Magasin de destination', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Validé par Magasin de destination', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsValidatedByOrgTo' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsValidatedByOrgTo'), 'nl_BE', 'Y', '','','Validé par Magasin de destination','','','','','Validé par Magasin de destination'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsValidatedByOrgTo') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Validé par Magasin de destination',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Validé par Magasin de destination' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsValidatedByOrgTo') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsValidatedByOrgTo'), 'fr_FR', 'Y', '','','Validé par Magasin de destination','','','','','Validé par Magasin de destination'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsValidatedByOrgTo') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Validé par Magasin de destination',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Validé par Magasin de destination' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsValidatedByOrgTo') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'InitialMsgID','',
'E005',
'',
'Id du Message Initial',
'',
'',
'',
'',
'Id du Message Initial',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'InitialMsgID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E005', help = '', name = 'Id du Message Initial', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Id du Message Initial', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'InitialMsgID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='InitialMsgID'), 'nl_BE', 'Y', '','','Id du Message Initial','','','','','Id du Message Initial'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InitialMsgID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Id du Message Initial',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Id du Message Initial' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InitialMsgID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='InitialMsgID'), 'fr_FR', 'Y', '','','Id du Message Initial','','','','','Id du Message Initial'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InitialMsgID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Id du Message Initial',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Id du Message Initial' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='InitialMsgID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_TransactionMsg_ID','Transaction Message',
'E005',
'',
'Transaction Message',
'',
'',
'',
'',
'Transaction Message',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_TransactionMsg_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Transaction Message', entitytype = 'E005', help = '', name = 'Transaction Message', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Transaction Message', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_TransactionMsg_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_TransactionMsg_ID'), 'nl_BE', 'Y', 'Transaction Message','','Transaction Message','','','','','Transaction Message'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_TransactionMsg_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Message',Help = '',Name = 'Transaction Message',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Transaction Message' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_TransactionMsg_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_TransactionMsg_ID'), 'fr_FR', 'Y', 'Transaction Message','','Transaction Message','','','','','Transaction Message'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_TransactionMsg_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Message',Help = '',Name = 'Transaction Message',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Transaction Message' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_TransactionMsg_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ActionComment','',
'E005',
'',
'ActionComment',
'',
'',
'',
'',
'ActionComment',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ActionComment' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E005', help = '', name = 'ActionComment', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'ActionComment', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ActionComment' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ActionComment'), 'nl_BE', 'Y', '','','ActionComment','','','','','ActionComment'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ActionComment') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ActionComment',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ActionComment' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ActionComment') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ActionComment'), 'fr_FR', 'Y', '','','Cmt Action','','','','','Cmt Action'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ActionComment') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cmt Action',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Cmt Action' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ActionComment') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ActionDate','',
'E005',
'',
'ActionDate',
'',
'',
'',
'',
'ActionDate',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ActionDate' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E005', help = '', name = 'ActionDate', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'ActionDate', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ActionDate' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ActionDate'), 'nl_BE', 'Y', '','','ActionDate','','','','','ActionDate'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ActionDate') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ActionDate',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ActionDate' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ActionDate') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ActionDate'), 'fr_FR', 'Y', '','','ActionDate','','','','','ActionDate'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ActionDate') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ActionDate',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ActionDate' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ActionDate') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ProcessComment','',
'E005',
'',
'ProcessComment',
'',
'',
'',
'',
'ProcessComment',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ProcessComment' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E005', help = '', name = 'ProcessComment', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'ProcessComment', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ProcessComment' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ProcessComment'), 'nl_BE', 'Y', '','','ProcessComment','','','','','ProcessComment'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ProcessComment') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ProcessComment',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ProcessComment' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ProcessComment') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ProcessComment'), 'fr_FR', 'Y', '','','ProcessComment','','','','','ProcessComment'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ProcessComment') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ProcessComment',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ProcessComment' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ProcessComment') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'RequisitionNO','',
'E005',
'',
'RequisitionNO',
'',
'',
'',
'',
'RequisitionNo',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'RequisitionNO' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E005', help = '', name = 'RequisitionNO', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'RequisitionNo', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'RequisitionNO' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='RequisitionNO'), 'nl_BE', 'Y', '','','RequisitionNO','','','','','RequisitionNo'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='RequisitionNO') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'RequisitionNO',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'RequisitionNo' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='RequisitionNO') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='RequisitionNO'), 'fr_FR', 'Y', '','','Demande d''Achat','','','','','Demande d''Achat'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='RequisitionNO') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Demande d''Achat',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Demande d''Achat' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='RequisitionNO') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'PurchaseOrderNO','',
'E005',
'',
'PurchaseOrderNO',
'',
'',
'',
'',
'PurchaseOrderNO',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'PurchaseOrderNO' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E005', help = '', name = 'PurchaseOrderNO', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'PurchaseOrderNO', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'PurchaseOrderNO' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PurchaseOrderNO'), 'nl_BE', 'Y', '','','Ordre d''Achat','','','','','Ordre d''Achat'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PurchaseOrderNO') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ordre d''Achat',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Ordre d''Achat' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PurchaseOrderNO') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PurchaseOrderNO'), 'fr_FR', 'Y', '','','Ordre d''Achat','','','','','Ordre d''Achat'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PurchaseOrderNO') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ordre d''Achat',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Ordre d''Achat' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PurchaseOrderNO') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsAutoValidation','',
'E005',
'',
'Validation Automatique',
'',
'',
'',
'',
'Validation Automatique',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsAutoValidation' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E005', help = '', name = 'Validation Automatique', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Validation Automatique', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsAutoValidation' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsAutoValidation'), 'nl_BE', 'Y', '','','Validation Automatique','','','','','Validation Automatique'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsAutoValidation') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Validation Automatique',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Validation Automatique' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsAutoValidation') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsAutoValidation'), 'fr_FR', 'Y', '','','Validation Automatique','','','','','Validation Automatique'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsAutoValidation') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Validation Automatique',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Validation Automatique' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsAutoValidation') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_OrderLine_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_OrderLine_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Order Line',
'E005',
10,
'The line on an order',
'Order Line',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_OrderLine_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_OrderLine_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Order Line', entitytype = 'E005', fieldlength = 10, help = 'The line on an order', name = 'Order Line', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_OrderLine_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Order Line'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order Line' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Ligne commande de vente'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ligne commande de vente' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_PosWfActivity_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_PosWfActivity_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
22,
'',
'Activité',
'',
2,
'',
'',
0,
'',
'Y',
'N',
'N',
'Y',
'N',
'Y',
'N',
'Y',
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
2,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Z_PosWfActivity_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_PosWfActivity_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 22, help = '', name = 'Activité', readonlylogic = '', seqno = 2, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 2, SUMMARYSEQNO = 0 
where ColumnName = 'Z_PosWfActivity_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Activité'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Activité' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Activité'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Activité' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_OrgTrx_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_OrgTrx_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_Org (all)'),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'@#AD_Org_ID@',
'Performing or initiating organization',
'E005',
10,
'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',
'Trx Organization',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_OrgTrx_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_OrgTrx_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_Org (all)'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Performing or initiating organization', entitytype = 'E005', fieldlength = 10, help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.', name = 'Trx Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_OrgTrx_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Trx Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Trx Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Organisation Trx'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisation Trx' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DocumentNo',(select AD_Element_ID from AD_Element where ColumnName = 'DocumentNo'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Document sequence number of the document',
'E005',
30,
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'Document No',
'',
4,
'',
'',
0,
'',
'Y',
'N',
'N',
'Y',
'N',
'Y',
'N',
'Y',
'N',
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'DocumentNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DocumentNo'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Document sequence number of the document', entitytype = 'E005', fieldlength = 30, help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', name = 'Document No', readonlylogic = '', seqno = 4, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DocumentNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Document No'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document No' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'N° Pièces'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° Pièces' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_ReferenceArt',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ReferenceArt'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
30,
'',
'Z_ReferenceArt',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_ReferenceArt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ReferenceArt'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 30, help = '', name = 'Z_ReferenceArt', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_ReferenceArt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Z_ReferenceArt'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_ReferenceArt' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Réf.Article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Réf.Article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_ProdDescription',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ProdDescription'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
400,
'',
'Z_ProdDescription',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_ProdDescription'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ProdDescription'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 400, help = '', name = 'Z_ProdDescription', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_ProdDescription'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Z_ProdDescription'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_ProdDescription' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Description'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Description' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_Category_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_Category_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Category of a Product',
'E005',
22,
'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.',
'Product Category',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_Category_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_Category_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Category of a Product', entitytype = 'E005', fieldlength = 22, help = 'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.', name = 'Product Category', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_Category_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Product Category'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product Category' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Catégorie article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Catégorie article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_Sous_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_Sous_Famille_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
22,
'',
'Z_Sous_Famille_ID',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_Sous_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_Sous_Famille_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 22, help = '', name = 'Z_Sous_Famille_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_Sous_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Z_Sous_Famille_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_Sous_Famille_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Sous-Famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous-Famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_Sous_S_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_Sous_S_S_Famille_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
22,
'',
'Z_Sous_S_S_Famille_ID',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_Sous_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_Sous_S_S_Famille_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 22, help = '', name = 'Z_Sous_S_S_Famille_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_Sous_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Z_Sous_S_S_Famille_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_Sous_S_S_Famille_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Sss-Famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sss-Famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Fournisseur',(select AD_Element_ID from AD_Element where ColumnName = 'Fournisseur'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
60,
'',
'Fournisseur',
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
where not exists (select 1 from AD_Column where ColumnName = 'Fournisseur'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Fournisseur'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 60, help = '', name = 'Fournisseur', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Fournisseur'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Fournisseur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Fournisseur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Fournisseur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Fournisseur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Product_Price',(select AD_Element_ID from AD_Element where ColumnName = 'Product_Price'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
14,
'',
'Product_Price',
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
where not exists (select 1 from AD_Column where ColumnName = 'Product_Price'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Product_Price'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 14, help = '', name = 'Product_Price', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Product_Price'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Prix'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Prix' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Product_Created_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Product_Created_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'M_Product (stocked)'),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
22,
'',
'Product_Created_ID',
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
where not exists (select 1 from AD_Column where ColumnName = 'Product_Created_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Product_Created_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'M_Product (stocked)'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 22, help = '', name = 'Product_Created_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Product_Created_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Product_Created_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product_Created_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Nouveau Produit Créé'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nouveau Produit Créé' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsValidatedRequest',(select AD_Element_ID from AD_Element where ColumnName = 'IsValidatedRequest'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'E005',
1,
'',
'IsValidatedRequest',
'@IsCancelRequest@=Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsValidatedRequest'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsValidatedRequest'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'E005', fieldlength = 1, help = '', name = 'IsValidatedRequest', readonlylogic = '@IsCancelRequest@=Y', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsValidatedRequest'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'IsValidatedRequest'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsValidatedRequest' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Valider'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valider' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ErrorMsg',(select AD_Element_ID from AD_Element where ColumnName = 'ErrorMsg'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Text'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
2000,
'',
'Error Message',
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
where not exists (select 1 from AD_Column where ColumnName = 'ErrorMsg'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ErrorMsg'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Text'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 2000, help = '', name = 'Error Message', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ErrorMsg'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Error Message'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Error Message' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Message erreur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Message erreur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsProcessed',(select AD_Element_ID from AD_Element where ColumnName = 'IsProcessed'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = '_IsImported'),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'E005',
1,
'',
'IsProcessed',
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
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'IsProcessed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsProcessed'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = '_IsImported'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'E005', fieldlength = 1, help = '', name = 'IsProcessed', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsProcessed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'IsProcessed'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsProcessed' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Message Traité'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Message Traité' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsCancelRequest',(select AD_Element_ID from AD_Element where ColumnName = 'IsCancelRequest'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'E005',
1,
'',
'IsCancelRequest',
'@IsValidatedRequest@=Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsCancelRequest'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsCancelRequest'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'E005', fieldlength = 1, help = '', name = 'IsCancelRequest', readonlylogic = '@IsValidatedRequest@=Y', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsCancelRequest'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'IsCancelRequest'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'IsCancelRequest' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Refuser'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Refuser' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'InitialMsgID',(select AD_Element_ID from AD_Element where ColumnName = 'InitialMsgID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
22,
'',
'Id du Message Initial',
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
where not exists (select 1 from AD_Column where ColumnName = 'InitialMsgID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'InitialMsgID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 22, help = '', name = 'Id du Message Initial', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'InitialMsgID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='InitialMsgID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Id du Message Initial'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InitialMsgID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Id du Message Initial' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InitialMsgID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='InitialMsgID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Id du Message Initial'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InitialMsgID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Id du Message Initial' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='InitialMsgID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_Sous_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_Sous_S_Famille_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
22,
'',
'Z_Sous_S_Famille_ID',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_Sous_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_Sous_S_Famille_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 22, help = '', name = 'Z_Sous_S_Famille_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_Sous_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Z_Sous_S_Famille_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_Sous_S_Famille_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Ss-Famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ss-Famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Y_Marque_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Y_Marque_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
22,
'',
'Marque',
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
where not exists (select 1 from AD_Column where ColumnName = 'Y_Marque_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Y_Marque_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 22, help = '', name = 'Marque', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Y_Marque_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Marque'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Marque' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Marque'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Marque' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_TransactionMsg_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_TransactionMsg_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Transaction Message',
'E005',
22,
'',
'Transaction Message',
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
'Y',
'Y',
'N',
'N',
'N',
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_TransactionMsg_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_TransactionMsg_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'ID'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Transaction Message', entitytype = 'E005', fieldlength = 22, help = '', name = 'Transaction Message', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'Y', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_TransactionMsg_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Transaction Message'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Transaction Message' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Transaction Message'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Transaction Message' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'M_Product (Sold and Purchase)'),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Product, Service, Item',
'E005',
10,
'Identifies an item which is either purchased or sold in this organization.',
'Product',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'M_Product (Sold and Purchase)'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Product, Service, Item', entitytype = 'E005', fieldlength = 10, help = 'Identifies an item which is either purchased or sold in this organization.', name = 'Product', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ProcessComment',(select AD_Element_ID from AD_Element where ColumnName = 'ProcessComment'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
2000,
'',
'ProcessComment',
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
where not exists (select 1 from AD_Column where ColumnName = 'ProcessComment'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ProcessComment'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 2000, help = '', name = 'ProcessComment', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ProcessComment'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'ProcessComment'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ProcessComment' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'ProcessComment'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ProcessComment' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'RequisitionNO',(select AD_Element_ID from AD_Element where ColumnName = 'RequisitionNO'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
30,
'',
'RequisitionNO',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'RequisitionNO'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'RequisitionNO'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 30, help = '', name = 'RequisitionNO', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'RequisitionNO'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'RequisitionNO'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'RequisitionNO' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Demande d''Achat'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Demande d''Achat' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_PosWfAction_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_PosWfAction_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
22,
'',
'Z_PosWfAction_ID',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'Y',
'N',
'Y',
'N',
'Y',
'N',
'N',
'',
'',
'Y',
'',
0,
'N',
'N',
'N',
1,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Z_PosWfAction_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_PosWfAction_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 22, help = '', name = 'Z_PosWfAction_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 1, SUMMARYSEQNO = 0 
where ColumnName = 'Z_PosWfAction_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Z_PosWfAction_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_PosWfAction_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Z_PosWfAction_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_PosWfAction_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'E005',
22,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'Tenant',
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
'Y',
'N',
'N',
'N',
'N',
'',
'R',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = 'E005', fieldlength = 22, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Société'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Société' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'E005',
22,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'Organization',
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
'Y',
'N',
'N',
'N',
'N',
'',
'R',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = 'E005', fieldlength = 22, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Organisation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'E005',
7,
'The Created On field indicates the date that this record was created.',
'Created On',
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
'Y',
'N',
'N',
'N',
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = 'E005', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Créé'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Créé' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'E005',
22,
'The Created By field indicates the user who created this record.',
'Created By',
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
'Y',
'N',
'N',
'N',
'N',
'',
'X',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = 'E005', fieldlength = 22, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Créée par'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Créée par' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'The record is active in the system',
'E005',
1,
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'Active',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'The record is active in the system', entitytype = 'E005', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Actif'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Actif' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'E005',
7,
'The Updated field indicates the date that this record was updated.',
'Updated',
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
'Y',
'N',
'N',
'N',
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = 'E005', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Modifié'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modifié' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'E005',
22,
'The Updated By field indicates the user who updated this record.',
'Updated By',
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
'Y',
'N',
'N',
'N',
'N',
'',
'X',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = 'E005', fieldlength = 22, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Modifié par'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modifié par' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_OrgTo_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_OrgTo_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_Org (all)'),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Organization valid for intercompany documents',
'E005',
10,
'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.',
'Inter-Organization',
'',
1,
'',
'',
0,
'',
'Y',
'N',
'N',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_OrgTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_OrgTo_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_Org (all)'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Organization valid for intercompany documents', entitytype = 'E005', fieldlength = 10, help = 'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.', name = 'Inter-Organization', readonlylogic = '', seqno = 1, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_OrgTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Inter-Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Inter-Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Inter organisation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Inter organisation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Processing',(select AD_Element_ID from AD_Element where ColumnName = 'Processing'),
(select AD_Process_ID from AD_Process where Value = 'ProcessTransactionMsg'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'E005',
1,
'',
'Process Now',
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
where not exists (select 1 from AD_Column where ColumnName = 'Processing'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Processing'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ProcessTransactionMsg'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'E005', fieldlength = 1, help = '', name = 'Process Now', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Processing'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Process Now'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Now' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Traiter maintenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Traiter maintenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Line',(select AD_Element_ID from AD_Element where ColumnName = 'Line'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Unique line for this document',
'E005',
30,
'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',
'Line No',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Line'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Line'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Unique line for this document', entitytype = 'E005', fieldlength = 30, help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.', name = 'Line No', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Line'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Line No'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Line No' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'N° ligne'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° ligne' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Quantity',(select AD_Element_ID from AD_Element where ColumnName = 'Quantity'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Quantity'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'1',
'',
'E005',
22,
'',
'Quantity',
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
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Quantity'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Quantity'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Quantity'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '1', description = '', entitytype = 'E005', fieldlength = 22, help = '', name = 'Quantity', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Quantity'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Quantity'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantity' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Quantité'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantité' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ActionDate',(select AD_Element_ID from AD_Element where ColumnName = 'ActionDate'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
7,
'',
'ActionDate',
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
where not exists (select 1 from AD_Column where ColumnName = 'ActionDate'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ActionDate'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 7, help = '', name = 'ActionDate', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ActionDate'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'ActionDate'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ActionDate' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'ActionDate'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ActionDate' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ActionComment',(select AD_Element_ID from AD_Element where ColumnName = 'ActionComment'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
2000,
'',
'ActionComment',
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
where not exists (select 1 from AD_Column where ColumnName = 'ActionComment'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ActionComment'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 2000, help = '', name = 'ActionComment', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ActionComment'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'ActionComment'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ActionComment' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Cmt Action'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Cmt Action' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Identifies a Business Partner',
'E005',
22,
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
'Business Partner',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Identifies a Business Partner', entitytype = 'E005', fieldlength = 22, help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', name = 'Business Partner', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Business Partner'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Tiers'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tiers' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PurchaseOrderNO',(select AD_Element_ID from AD_Element where ColumnName = 'PurchaseOrderNO'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
30,
'',
'PurchaseOrderNO',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'PurchaseOrderNO'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PurchaseOrderNO'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 30, help = '', name = 'PurchaseOrderNO', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PurchaseOrderNO'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'Ordre d''Achat'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ordre d''Achat' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Ordre d''Achat'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ordre d''Achat' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'POReceiptNO',(select AD_Element_ID from AD_Element where ColumnName = 'POReceiptNO'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E005',
30,
'',
'POReceiptNO',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'POReceiptNO'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'POReceiptNO'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E005', fieldlength = 30, help = '', name = 'POReceiptNO', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'POReceiptNO'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_BE', 'Y', 'POReceiptNO'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'POReceiptNO' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'No Reception'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'No Reception' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Transactions Messages','Transactions Messages',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Window_ID from AD_Window where Value = 'Transactions Messages'),
'',
'Transactions Messages',
'E005',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'',
10,
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'',
'N',
'Y',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'Y',
(select AD_Tab_ID from AD_Tab where Value = '')
 from dual  
where not exists (select 1 from AD_Tab where Value = 'Transactions Messages'  and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Transactions Messages', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Transactions Messages'), commitwarning = '', description = 'Transactions Messages', entitytype = 'E005', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Transactions Messages'  and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')), 'nl_BE', 'Y', '','Transactions Messages','','Transactions Messages'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = 'Transactions Messages',Help = '',Name = 'Transactions Messages' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')), 'fr_FR', 'Y', '','Transactions Messages','','Transactions Messages'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = 'Transactions Messages',Help = '',Name = 'Transactions Messages' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Validation des Messages_1000328','Validation des Messages',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article'),
'',
'',
'E005',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'',
10,
0,
'z_poswfactivity_id in (select z_poswfactivity_id from z_poswfactivity where AD_ROLE_ID = @#AD_Role_ID@ ) AND Z_ReferenceArt is not null AND IsValidatedRequest = ''N'' and IsCancelRequest = ''N'' AND IsOnError = ''N''',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'',
'N',
'Y',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'Y',
(select AD_Tab_ID from AD_Tab where Value = '')
 from dual  
where not exists (select 1 from AD_Tab where Value = 'Validation des Messages_1000328'  and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Validation des Messages', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article'), commitwarning = '', description = '', entitytype = 'E005', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = 'z_poswfactivity_id in (select z_poswfactivity_id from z_poswfactivity where AD_ROLE_ID = @#AD_Role_ID@ ) AND Z_ReferenceArt is not null AND IsValidatedRequest = ''N'' and IsCancelRequest = ''N'' AND IsOnError = ''N''', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Validation des Messages_1000328'  and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')), 'nl_BE', 'Y', '','','','Validation des Messages'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Validation des Messages' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')), 'fr_FR', 'Y', '','','','Validation des Messages'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Validation des Messages' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Validation des Messages','Validation des Messages',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Window_ID from AD_Window where Value = 'Validation des Messages'),
'',
'',
'E005',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'',
10,
0,
'z_transactionmsg_id in  (select z_transactionmsg_id from z_transactionmsg tr where   (    (tr.ad_orgtrx_id =  @#AD_Org_ID@ AND tr.ad_org_id = tr.ad_orgtrx_id        AND EXISTS (select 1 from z_posactionActivity act where act.z_poswfaction_id = tr.z_poswfaction_id and act.z_poswfactivity_id = tr.z_poswfactivity_id and act.isvalidatedbyorgfrom = ''Y''and act.ad_role_id = @#AD_Role_ID@)     )       or                                         (tr.ad_orgto_id = @#AD_Org_ID@ AND tr.ad_org_id = tr.ad_orgto_id        AND EXISTS (select 1 from z_posActionActivity act where act.z_poswfaction_id = tr.z_poswfaction_id and act.z_poswfactivity_id = tr.z_poswfactivity_id and act.isvalidatedbyorgto = ''Y'' and act.ad_role_id = @#AD_Role_ID@ )     )       or  EXISTS (select 1 from z_posActionActivity act where act.z_poswfaction_id = tr.z_poswfaction_id and act.z_poswfactivity_id = tr.z_poswfactivity_id and act.isvalidatedbyorgfrom = ''Y''  and act.isvalidatedbyorgto = ''Y'' and act.ad_role_id = @#AD_Role_ID@ )  )  and ( tr.isvalidatedrequest = ''N'' and tr.iscancelrequest = ''N'' )) ',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'',
'N',
'Y',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'Y',
(select AD_Tab_ID from AD_Tab where Value = '')
 from dual  
where not exists (select 1 from AD_Tab where Value = 'Validation des Messages'  and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Validation des Messages', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Validation des Messages'), commitwarning = '', description = '', entitytype = 'E005', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = 'z_transactionmsg_id in  (select z_transactionmsg_id from z_transactionmsg tr where   (    (tr.ad_orgtrx_id =  @#AD_Org_ID@ AND tr.ad_org_id = tr.ad_orgtrx_id        AND EXISTS (select 1 from z_posactionActivity act where act.z_poswfaction_id = tr.z_poswfaction_id and act.z_poswfactivity_id = tr.z_poswfactivity_id and act.isvalidatedbyorgfrom = ''Y''and act.ad_role_id = @#AD_Role_ID@)     )       or                                         (tr.ad_orgto_id = @#AD_Org_ID@ AND tr.ad_org_id = tr.ad_orgto_id        AND EXISTS (select 1 from z_posActionActivity act where act.z_poswfaction_id = tr.z_poswfaction_id and act.z_poswfactivity_id = tr.z_poswfactivity_id and act.isvalidatedbyorgto = ''Y'' and act.ad_role_id = @#AD_Role_ID@ )     )       or  EXISTS (select 1 from z_posActionActivity act where act.z_poswfaction_id = tr.z_poswfaction_id and act.z_poswfactivity_id = tr.z_poswfactivity_id and act.isvalidatedbyorgfrom = ''Y''  and act.isvalidatedbyorgto = ''Y'' and act.ad_role_id = @#AD_Role_ID@ )  )  and ( tr.isvalidatedrequest = ''N'' and tr.iscancelrequest = ''N'' )) ', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Validation des Messages'  and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')), 'nl_BE', 'Y', '','','','Validation des Messages'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Validation des Messages' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')), 'fr_FR', 'Y', '','','','Validation des Messages'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Validation des Messages' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Product',
'Product, Service, Item',
10,
'',
'E005',
'Identifies an item which is either purchased or sold in this organization.',
'',
140,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Product', description = 'Product, Service, Item', displaylength = 10, displaylogic = '', entitytype = 'E005', help = 'Identifies an item which is either purchased or sold in this organization.', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', 'Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product, Service, Item',Help = 'Identifies an item which is either purchased or sold in this organization.',Name = 'Product' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', 'Produit service etc?','Identifie un article vendu ou acheté par cette organisation.','Article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Produit service etc?',Help = 'Identifie un article vendu ou acheté par cette organisation.',Name = 'Article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'PurchaseOrderNO',
'',
22,
'',
'E005',
'',
'',
200,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'PurchaseOrderNO', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 200, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', '','','Ordre d''Achat'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ordre d''Achat' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', '','','Ordre d''Achat'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ordre d''Achat' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Quantity',
'',
22,
'',
'E005',
'',
'',
150,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Quantity', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', '','','Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', '','','Quantité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Quantité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'RequisitionNO',
'',
22,
'',
'E005',
'',
'',
190,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'RequisitionNO', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 190, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', '','','RequisitionNO'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'RequisitionNO' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', '','','Demande d''Achat'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Demande d''Achat' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'null' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Status',
'Status of the currently running check',
2,
'',
'E005',
'Status of the currently running check',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'null' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Status', description = 'Status of the currently running check', displaylength = 2, displaylogic = '', entitytype = 'E005', help = 'Status of the currently running check', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'null' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'null' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', 'Status of the currently running check','Status of the currently running check','Status'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'null' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Status of the currently running check',Help = 'Status of the currently running check',Name = 'Status' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'null' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'null' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', 'Statut de la vérification en cours d''exécution','','Statut'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'null' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Statut de la vérification en cours d''exécution',Help = '',Name = 'Statut' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'null' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'E005',
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'',
10,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = 'E005', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', 'Nom de l''entreprise titulaire de la base de données (DB)','','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Help = '',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Transaction Message',
'Transaction Message',
22,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Transaction Message', description = 'Transaction Message', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', 'Transaction Message','','Transaction Message'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Message',Help = '',Name = 'Transaction Message' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', 'Transaction Message','','Transaction Message'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Message',Help = '',Name = 'Transaction Message' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Trx Organization',
'Performing or initiating organization',
10,
'',
'E005',
'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',
'',
60,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Trx Organization', description = 'Performing or initiating organization', displaylength = 10, displaylogic = '', entitytype = 'E005', help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', 'Performing or initiating organization','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Trx Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Performing or initiating organization',Help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',Name = 'Trx Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', 'Organisation transactionnelle','C''est l''organisation qui traite ou qui initie la transaction pour le compte d''une autre organisation. L''organisation peut ne pas être l''organisation pour laquelle la transaction est effectuée dans un environnement de service bureautique, avec des services centralisés et des transactions entre organisations.','Organisation Trx'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organisation transactionnelle',Help = 'C''est l''organisation qui traite ou qui initie la transaction pour le compte d''une autre organisation. L''organisation peut ne pas être l''organisation pour laquelle la transaction est effectuée dans un environnement de service bureautique, avec des services centralisés et des transactions entre organisations.',Name = 'Organisation Trx' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Order Line',
'Order Line',
10,
'',
'E005',
'The line on an order',
'',
230,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Order Line', description = 'Order Line', displaylength = 10, displaylogic = '', entitytype = 'E005', help = 'The line on an order', obscuretype = '', seqno = 230, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', 'Order Line','The line on an order','Order Line'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Order Line',Help = 'The line on an order',Name = 'Order Line' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', 'Ligne commande de vente','Identifie de manière unique la ligne de la commande de vente.','Ligne commande de vente'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ligne commande de vente',Help = 'Identifie de manière unique la ligne de la commande de vente.',Name = 'Ligne commande de vente' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'IsProcessed',
'',
1,
'',
'E005',
'',
'',
340,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Status'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'IsProcessed', description = '', displaylength = 1, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 340, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', '','','IsProcessed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsProcessed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', '','','Traité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Traité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsProcessed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'ActionComment',
'',
2000,
'',
'E005',
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
120
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'ActionComment', description = '', displaylength = 2000, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 120 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','ActionComment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ActionComment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Cmt Action'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cmt Action' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'ActionDate',
'',
7,
'',
'E005',
'',
'',
90,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'ActionDate', description = '', displaylength = 7, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 110 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','ActionDate'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ActionDate' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','ActionDate'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ActionDate' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Active',
'The record is active in the system',
1,
'',
'E005',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'',
140,
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
530
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = 'E005', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 530 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', 'L''enregistrement est actif dans le système','Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.','Actif'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'L''enregistrement est actif dans le système',Help = 'Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.',Name = 'Actif' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Activité',
'',
22,
'',
'E005',
'',
'',
40,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Activité', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Activité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Activité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Activité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Activité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Business Partner',
'Identifies a Business Partner',
22,
'',
'E005',
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Business Partner', description = 'Identifies a Business Partner', displaylength = 22, displaylogic = '', entitytype = 'E005', help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', 'Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a Business Partner',Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Name = 'Business Partner' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', 'Identifie un tiers','Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.','Tiers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifie un tiers',Help = 'Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.',Name = 'Tiers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Document No',
'Document sequence number of the document',
30,
'',
'E005',
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
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
130
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Document No', description = 'Document sequence number of the document', displaylength = 30, displaylogic = '', entitytype = 'E005', help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 130 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', 'Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document sequence number of the document',Help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',Name = 'Document No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', 'Numéros du document','','N° Pièces'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Numéros du document',Help = '',Name = 'N° Pièces' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Fournisseur',
'',
60,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Fournisseur', description = '', displaylength = 60, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Fournisseur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Fournisseur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'ProcessComment',
'',
2000,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'ProcessComment', description = '', displaylength = 2000, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','ProcessComment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ProcessComment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','ProcessComment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ProcessComment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Z_Sous_S_Famille_ID',
'',
22,
'',
'E005',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Z_Sous_S_Famille_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Z_Sous_S_Famille_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_Sous_S_Famille_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Ss-Famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ss-Famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Z_Sous_Famille_ID',
'',
22,
'',
'E005',
'',
'',
90,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Z_Sous_Famille_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Z_Sous_Famille_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_Sous_Famille_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Sous-Famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous-Famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Z_ReferenceArt',
'',
30,
'',
'E005',
'',
'',
60,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Z_ReferenceArt', description = '', displaylength = 30, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Z_ReferenceArt'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_ReferenceArt' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Réf.Article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Réf.Article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Z_ProdDescription',
'',
400,
'',
'E005',
'',
'',
70,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Z_ProdDescription', description = '', displaylength = 400, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Z_ProdDescription'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_ProdDescription' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Transaction Message',
'Transaction Message',
22,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Transaction Message', description = 'Transaction Message', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', 'Transaction Message','','Transaction Message'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Message',Help = '',Name = 'Transaction Message' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', 'Transaction Message','','Transaction Message'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Message',Help = '',Name = 'Transaction Message' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'RequisitionNO',
'',
30,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'RequisitionNO', description = '', displaylength = 30, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','RequisitionNO'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'RequisitionNO' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Demande d''Achat'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Demande d''Achat' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'PurchaseOrderNO',
'',
30,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'PurchaseOrderNO', description = '', displaylength = 30, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Ordre d''Achat'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ordre d''Achat' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Ordre d''Achat'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ordre d''Achat' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Product_Price',
'',
14,
'',
'E005',
'',
'',
140,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Product_Price', description = '', displaylength = 14, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Product_Created_ID',
'',
22,
'',
'E005',
'',
'',
20,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Product_Created_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Product_Created_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Product_Created_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Nouveau Produit Créé'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nouveau Produit Créé' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Product Category',
'Category of a Product',
22,
'',
'E005',
'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Product Category', description = 'Category of a Product', displaylength = 22, displaylogic = '', entitytype = 'E005', help = 'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', 'Category of a Product','Identifies the category which this product belongs to.  Product categories are used for pricing and selection.','Product Category'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Category of a Product',Help = 'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.',Name = 'Product Category' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', 'Catégorie à laquelle appartient l''article.','Catégorie à laquelle appartient l''article. La catégorie article est utilisée pour définir les prix et les coûts.','Catégorie article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Catégorie à laquelle appartient l''article.',Help = 'Catégorie à laquelle appartient l''article. La catégorie article est utilisée pour définir les prix et les coûts.',Name = 'Catégorie article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Z_Sous_S_S_Famille_ID',
'',
22,
'',
'E005',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Z_Sous_S_S_Famille_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Z_Sous_S_S_Famille_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_Sous_S_S_Famille_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Sss-Famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sss-Famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Process Now',
'',
1,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Process Now', description = '', displaylength = 1, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Activité',
'',
22,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Activité', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Activité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Activité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Activité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Activité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfActivity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Business Partner',
'Identifies a Business Partner',
22,
'',
'E005',
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Business Partner', description = 'Identifies a Business Partner', displaylength = 22, displaylogic = '', entitytype = 'E005', help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', 'Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a Business Partner',Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Name = 'Business Partner' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', 'Identifie un tiers','Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.','Tiers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifie un tiers',Help = 'Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.',Name = 'Tiers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Fournisseur',
'',
60,
'',
'E005',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Fournisseur', description = '', displaylength = 60, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Fournisseur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Fournisseur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Line No',
'Unique line for this document',
30,
'',
'E005',
'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Line No', description = 'Unique line for this document', displaylength = 30, displaylogic = '', entitytype = 'E005', help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', 'Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Line No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unique line for this document',Help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',Name = 'Line No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', 'N° de ligne unique pour ce document','Définit l''ordre d''affichage des lignes du document.','N° ligne'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'N° de ligne unique pour ce document',Help = 'Définit l''ordre d''affichage des lignes du document.',Name = 'N° ligne' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Marque',
'',
22,
'',
'E005',
'',
'',
130,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Marque', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Marque'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Marque' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Marque'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Marque' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Order Line',
'Order Line',
10,
'',
'E005',
'The line on an order',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Order Line', description = 'Order Line', displaylength = 10, displaylogic = '', entitytype = 'E005', help = 'The line on an order', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', 'Order Line','The line on an order','Order Line'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Order Line',Help = 'The line on an order',Name = 'Order Line' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', 'Ligne commande de vente','Identifie de manière unique la ligne de la commande de vente.','Ligne commande de vente'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ligne commande de vente',Help = 'Identifie de manière unique la ligne de la commande de vente.',Name = 'Ligne commande de vente' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'POReceiptNO',
'',
30,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'POReceiptNO', description = '', displaylength = 30, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','POReceiptNO'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'POReceiptNO' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','No Reception'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'No Reception' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'IsValidatedRequest',
'',
1,
'',
'E005',
'',
'',
10,
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
40
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'IsValidatedRequest', description = '', displaylength = 1, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 40 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','IsValidatedRequest'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsValidatedRequest' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Valider'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valider' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'IsCancelRequest',
'',
1,
'',
'E005',
'',
'',
30,
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
50
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'IsCancelRequest', description = '', displaylength = 1, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 50 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','IsCancelRequest'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsCancelRequest' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Refuser'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Refuser' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Z_PosWfAction_ID',
'',
22,
'',
'E005',
'',
'',
40,
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
60
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Z_PosWfAction_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 60 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Z_PosWfAction_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_PosWfAction_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Z_PosWfAction_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_PosWfAction_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Trx Organization',
'Performing or initiating organization',
10,
'',
'E005',
'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',
'',
50,
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
70
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Trx Organization', description = 'Performing or initiating organization', displaylength = 10, displaylogic = '', entitytype = 'E005', help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 70 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', 'Performing or initiating organization','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Trx Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Performing or initiating organization',Help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',Name = 'Trx Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', 'Organisation transactionnelle','C''est l''organisation qui traite ou qui initie la transaction pour le compte d''une autre organisation. L''organisation peut ne pas être l''organisation pour laquelle la transaction est effectuée dans un environnement de service bureautique, avec des services centralisés et des transactions entre organisations.','Organisation Trx'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organisation transactionnelle',Help = 'C''est l''organisation qui traite ou qui initie la transaction pour le compte d''une autre organisation. L''organisation peut ne pas être l''organisation pour laquelle la transaction est effectuée dans un environnement de service bureautique, avec des services centralisés et des transactions entre organisations.',Name = 'Organisation Trx' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Inter-Organization',
'Organization valid for intercompany documents',
10,
'',
'E005',
'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.',
'',
0,
0,
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
80
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Inter-Organization', description = 'Organization valid for intercompany documents', displaylength = 10, displaylogic = '', entitytype = 'E005', help = 'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 80 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', 'Organization valid for intercompany documents','The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.','Inter-Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organization valid for intercompany documents',Help = 'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.',Name = 'Inter-Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', 'Organisation valide pour les documents inter compagnies','Identifie les organisations qui peuvent être utilisées par cette organisation au niveau des documents inter Compagnie','Inter organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organisation valide pour les documents inter compagnies',Help = 'Identifie les organisations qui peuvent être utilisées par cette organisation au niveau des documents inter Compagnie',Name = 'Inter organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Product',
'Product, Service, Item',
10,
'',
'E005',
'Identifies an item which is either purchased or sold in this organization.',
'',
0,
0,
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
90
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Product', description = 'Product, Service, Item', displaylength = 10, displaylogic = '', entitytype = 'E005', help = 'Identifies an item which is either purchased or sold in this organization.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 90 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', 'Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product, Service, Item',Help = 'Identifies an item which is either purchased or sold in this organization.',Name = 'Product' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', 'Produit service etc?','Identifie un article vendu ou acheté par cette organisation.','Article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Produit service etc?',Help = 'Identifie un article vendu ou acheté par cette organisation.',Name = 'Article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Quantity',
'',
22,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
100
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Quantity', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 100 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Quantité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Quantité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'ActionDate',
'',
7,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'ActionDate', description = '', displaylength = 7, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 110 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','ActionDate'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ActionDate' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','ActionDate'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ActionDate' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'ActionComment',
'',
2000,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'ActionComment', description = '', displaylength = 2000, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 120 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', '','','ActionComment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ActionComment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', '','','Cmt Action'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cmt Action' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Document No',
'Document sequence number of the document',
30,
'',
'E005',
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
'',
0,
0,
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
130
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Document No', description = 'Document sequence number of the document', displaylength = 30, displaylogic = '', entitytype = 'E005', help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 130 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', 'Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document sequence number of the document',Help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',Name = 'Document No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', 'Numéros du document','','N° Pièces'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Numéros du document',Help = '',Name = 'N° Pièces' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Inter-Organization',
'Organization valid for intercompany documents',
10,
'',
'E005',
'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.',
'',
60,
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
80
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Inter-Organization', description = 'Organization valid for intercompany documents', displaylength = 10, displaylogic = '', entitytype = 'E005', help = 'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 80 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', 'Organization valid for intercompany documents','The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.','Inter-Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organization valid for intercompany documents',Help = 'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.',Name = 'Inter-Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', 'Organisation valide pour les documents inter compagnies','Identifie les organisations qui peuvent être utilisées par cette organisation au niveau des documents inter Compagnie','Inter organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organisation valide pour les documents inter compagnies',Help = 'Identifie les organisations qui peuvent être utilisées par cette organisation au niveau des documents inter Compagnie',Name = 'Inter organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'IsCancelRequest',
'',
1,
'',
'E005',
'',
'',
20,
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
50
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'IsCancelRequest', description = '', displaylength = 1, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 50 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','IsCancelRequest'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsCancelRequest' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Refuser'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Refuser' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCancelRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'IsValidatedRequest',
'',
1,
'',
'E005',
'',
'',
10,
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
40
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'IsValidatedRequest', description = '', displaylength = 1, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 40 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','IsValidatedRequest'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'IsValidatedRequest' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Valider'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valider' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsValidatedRequest' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Line No',
'Unique line for this document',
30,
'',
'E005',
'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Line No', description = 'Unique line for this document', displaylength = 30, displaylogic = '', entitytype = 'E005', help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', 'Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Line No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unique line for this document',Help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',Name = 'Line No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', 'N° de ligne unique pour ce document','Définit l''ordre d''affichage des lignes du document.','N° ligne'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'N° de ligne unique pour ce document',Help = 'Définit l''ordre d''affichage des lignes du document.',Name = 'N° ligne' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Marque',
'',
22,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Marque', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Marque'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Marque' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Marque'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Marque' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Order Line',
'Order Line',
10,
'',
'E005',
'The line on an order',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Order Line', description = 'Order Line', displaylength = 10, displaylogic = '', entitytype = 'E005', help = 'The line on an order', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', 'Order Line','The line on an order','Order Line'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Order Line',Help = 'The line on an order',Name = 'Order Line' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', 'Ligne commande de vente','Identifie de manière unique la ligne de la commande de vente.','Ligne commande de vente'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ligne commande de vente',Help = 'Identifie de manière unique la ligne de la commande de vente.',Name = 'Ligne commande de vente' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_OrderLine_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'E005',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'',
130,
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
520
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = 'E005', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 520 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', 'Etablissement au sein d''une société','une unité est une partie d''une société, (établissement, succursale, bureau, etc...).','Organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Etablissement au sein d''une société',Help = 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).',Name = 'Organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'POReceiptNO',
'',
30,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'POReceiptNO', description = '', displaylength = 30, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','POReceiptNO'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'POReceiptNO' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','No Reception'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'No Reception' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Process Now',
'',
1,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Process Now', description = '', displaylength = 1, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'ProcessComment',
'',
2000,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'ProcessComment', description = '', displaylength = 2000, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','ProcessComment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ProcessComment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','ProcessComment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ProcessComment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Product',
'Product, Service, Item',
10,
'',
'E005',
'Identifies an item which is either purchased or sold in this organization.',
'',
70,
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
90
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Product', description = 'Product, Service, Item', displaylength = 10, displaylogic = '', entitytype = 'E005', help = 'Identifies an item which is either purchased or sold in this organization.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 90 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', 'Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product, Service, Item',Help = 'Identifies an item which is either purchased or sold in this organization.',Name = 'Product' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', 'Produit service etc?','Identifie un article vendu ou acheté par cette organisation.','Article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Produit service etc?',Help = 'Identifie un article vendu ou acheté par cette organisation.',Name = 'Article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Product Category',
'Category of a Product',
22,
'',
'E005',
'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Product Category', description = 'Category of a Product', displaylength = 22, displaylogic = '', entitytype = 'E005', help = 'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', 'Category of a Product','Identifies the category which this product belongs to.  Product categories are used for pricing and selection.','Product Category'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Category of a Product',Help = 'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.',Name = 'Product Category' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', 'Catégorie à laquelle appartient l''article.','Catégorie à laquelle appartient l''article. La catégorie article est utilisée pour définir les prix et les coûts.','Catégorie article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Catégorie à laquelle appartient l''article.',Help = 'Catégorie à laquelle appartient l''article. La catégorie article est utilisée pour définir les prix et les coûts.',Name = 'Catégorie article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Product_Created_ID',
'',
22,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Product_Created_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Product_Created_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Product_Created_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Nouveau Produit Créé'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nouveau Produit Créé' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Created_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Product_Price',
'',
14,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Product_Price', description = '', displaylength = 14, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Prix'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Prix' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Product_Price' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'PurchaseOrderNO',
'',
30,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'PurchaseOrderNO', description = '', displaylength = 30, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Ordre d''Achat'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ordre d''Achat' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Ordre d''Achat'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ordre d''Achat' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PurchaseOrderNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Quantity',
'',
22,
'',
'E005',
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
100
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Quantity', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 100 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Quantité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Quantité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Quantity' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'RequisitionNO',
'',
30,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'RequisitionNO', description = '', displaylength = 30, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','RequisitionNO'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'RequisitionNO' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Demande d''Achat'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Demande d''Achat' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RequisitionNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'E005',
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
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
500
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = 'E005', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 500 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', 'Nom de l''entreprise titulaire de la base de données (DB)','','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Help = '',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Transaction Message',
'Transaction Message',
22,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Transaction Message', description = 'Transaction Message', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', 'Transaction Message','','Transaction Message'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Message',Help = '',Name = 'Transaction Message' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', 'Transaction Message','','Transaction Message'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Message',Help = '',Name = 'Transaction Message' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_TransactionMsg_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Trx Organization',
'Performing or initiating organization',
10,
'',
'E005',
'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',
'',
50,
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
70
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Trx Organization', description = 'Performing or initiating organization', displaylength = 10, displaylogic = '', entitytype = 'E005', help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 70 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', 'Performing or initiating organization','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Trx Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Performing or initiating organization',Help = 'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',Name = 'Trx Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', 'Organisation transactionnelle','C''est l''organisation qui traite ou qui initie la transaction pour le compte d''une autre organisation. L''organisation peut ne pas être l''organisation pour laquelle la transaction est effectuée dans un environnement de service bureautique, avec des services centralisés et des transactions entre organisations.','Organisation Trx'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organisation transactionnelle',Help = 'C''est l''organisation qui traite ou qui initie la transaction pour le compte d''une autre organisation. L''organisation peut ne pas être l''organisation pour laquelle la transaction est effectuée dans un environnement de service bureautique, avec des services centralisés et des transactions entre organisations.',Name = 'Organisation Trx' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTrx_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Z_PosWfAction_ID',
'',
22,
'',
'E005',
'',
'',
30,
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
60
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Z_PosWfAction_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 60 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Z_PosWfAction_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_PosWfAction_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Z_PosWfAction_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_PosWfAction_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Z_ProdDescription',
'',
400,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Z_ProdDescription', description = '', displaylength = 400, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Z_ProdDescription'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_ProdDescription' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ProdDescription' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Z_ReferenceArt',
'',
30,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Z_ReferenceArt', description = '', displaylength = 30, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Z_ReferenceArt'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_ReferenceArt' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Réf.Article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Réf.Article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ReferenceArt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Z_Sous_Famille_ID',
'',
22,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Z_Sous_Famille_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Z_Sous_Famille_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_Sous_Famille_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Sous-Famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sous-Famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Z_Sous_S_Famille_ID',
'',
22,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Z_Sous_S_Famille_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Z_Sous_S_Famille_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_Sous_S_Famille_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Ss-Famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Ss-Famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Z_Sous_S_S_Famille_ID',
'',
22,
'',
'E005',
'',
'',
0,
0,
'Y',
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Z_Sous_S_S_Famille_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_BE', 'Y', '','','Z_Sous_S_S_Famille_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_Sous_S_S_Famille_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', '','','Sss-Famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sss-Famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Sous_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'E005',
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'',
150,
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
500
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = 'E005', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 500 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', 'Nom de l''entreprise titulaire de la base de données (DB)','','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Help = '',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'E005',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
520
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = 'E005', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 520 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', 'Etablissement au sein d''une société','une unité est une partie d''une société, (établissement, succursale, bureau, etc...).','Organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Etablissement au sein d''une société',Help = 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).',Name = 'Organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')),
'Active',
'The record is active in the system',
1,
'',
'E005',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'',
170,
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
530
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages_1000328' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = 'E005', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 530 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'nl_BE', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))), 'fr_FR', 'Y', 'L''enregistrement est actif dans le système','Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.','Actif'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'L''enregistrement est actif dans le système',Help = 'Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.',Name = 'Actif' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages_1000328' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation Création d''Article'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Z_PosWfAction_ID',
'',
22,
'',
'E005',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Z_PosWfAction_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', '','','Z_PosWfAction_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_PosWfAction_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', '','','Z_PosWfAction_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_PosWfAction_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_PosWfAction_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'ActionComment',
'',
2000,
'',
'E005',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'ActionComment', description = '', displaylength = 2000, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', '','','ActionComment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ActionComment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', '','','Cmt Action'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cmt Action' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'ActionDate',
'',
7,
'',
'E005',
'',
'',
90,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'ActionDate', description = '', displaylength = 7, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', '','','ActionDate'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ActionDate' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', '','','ActionDate'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ActionDate' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ActionDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Active',
'The record is active in the system',
1,
'',
'E005',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'',
30,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = 'E005', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', 'L''enregistrement est actif dans le système','Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.','Actif'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'L''enregistrement est actif dans le système',Help = 'Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.',Name = 'Actif' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Business Partner',
'Identifies a Business Partner',
22,
'',
'E005',
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Business Partner', description = 'Identifies a Business Partner', displaylength = 22, displaylogic = '', entitytype = 'E005', help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', 'Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a Business Partner',Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Name = 'Business Partner' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', 'Identifie un tiers','Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.','Tiers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifie un tiers',Help = 'Un tiers est un partenaire avec lequel vous réalisez des transactions.  Il peut être un fournisseur, un client, un employé ou un agent commercial.',Name = 'Tiers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Document No',
'Document sequence number of the document',
30,
'',
'E005',
'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Document No', description = 'Document sequence number of the document', displaylength = 30, displaylogic = '', entitytype = 'E005', help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', 'Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Document No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document sequence number of the document',Help = 'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed between greater than and less than symbols. If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',Name = 'Document No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', 'Numéros du document','','N° Pièces'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Numéros du document',Help = '',Name = 'N° Pièces' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocumentNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Inter-Organization',
'Organization valid for intercompany documents',
10,
'',
'E005',
'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.',
'',
70,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Inter-Organization', description = 'Organization valid for intercompany documents', displaylength = 10, displaylogic = '', entitytype = 'E005', help = 'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', 'Organization valid for intercompany documents','The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.','Inter-Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organization valid for intercompany documents',Help = 'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.',Name = 'Inter-Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', 'Organisation valide pour les documents inter compagnies','Identifie les organisations qui peuvent être utilisées par cette organisation au niveau des documents inter Compagnie','Inter organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organisation valide pour les documents inter compagnies',Help = 'Identifie les organisations qui peuvent être utilisées par cette organisation au niveau des documents inter Compagnie',Name = 'Inter organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Line No',
'Unique line for this document',
10,
'',
'E005',
'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',
'',
130,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Line No', description = 'Unique line for this document', displaylength = 10, displaylogic = '', entitytype = 'E005', help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', 'Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Line No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Unique line for this document',Help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.',Name = 'Line No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', 'N° de ligne unique pour ce document','Définit l''ordre d''affichage des lignes du document.','N° ligne'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'N° de ligne unique pour ce document',Help = 'Définit l''ordre d''affichage des lignes du document.',Name = 'N° ligne' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'E005',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'',
20,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = 'E005', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', 'Etablissement au sein d''une société','une unité est une partie d''une société, (établissement, succursale, bureau, etc...).','Organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Etablissement au sein d''une société',Help = 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).',Name = 'Organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'POReceiptNO',
'',
22,
'',
'E005',
'',
'',
210,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'POReceiptNO', description = '', displaylength = 22, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 210, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', '','','POReceiptNO'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'POReceiptNO' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', '','','No Reception'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'No Reception' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReceiptNO' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'Process Now',
'',
1,
'',
'E005',
'',
'',
170,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'Process Now', description = '', displaylength = 1, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')),
'ProcessComment',
'',
2000,
'',
'E005',
'',
'',
180,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Transactions Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Transactions Messages')), name = 'ProcessComment', description = '', displaylength = 2000, displaylogic = '', entitytype = 'E005', help = '', obscuretype = '', seqno = 180, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'nl_BE', 'Y', '','','ProcessComment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ProcessComment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))), 'fr_FR', 'Y', '','','ProcessComment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ProcessComment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ProcessComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Transactions Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Transactions Messages'))) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'ResetError',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Transactions Message Processor'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Reset Error Before Process',
'N',
'',
'Reset Error Before Process',
'E005',
0,
'',
10,
'',
'',
'',
'Y',
'Y',
'N',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'ResetError'  and ad_process_id in (select ad_process_id from ad_process where value = 'Transactions Message Processor'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Transactions Message Processor'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Reset Error Before Process', defaultvalue = 'N', defaultvalue2 = '', description = 'Reset Error Before Process', entitytype = 'E005', fieldlength = 0, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'ResetError'  and ad_process_id in (select ad_process_id from ad_process where value = 'Transactions Message Processor');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ResetError' and ad_process_id in (select ad_process_id from ad_process where value = 'Transactions Message Processor')), 'nl_BE', 'Y', 'Reset Error Before Process','','Reset Error Before Process'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ResetError' and ad_process_id in (select ad_process_id from ad_process where value = 'Transactions Message Processor')) and ad_language = 'nl_BE');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Reset Error Before Process',Help = '',Name = 'Reset Error Before Process' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ResetError' and ad_process_id in (select ad_process_id from ad_process where value = 'Transactions Message Processor')) and ad_language = 'nl_BE';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ResetError' and ad_process_id in (select ad_process_id from ad_process where value = 'Transactions Message Processor')), 'fr_FR', 'Y', 'Reset Error Before Process','','Reset Error Before Process'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ResetError' and ad_process_id in (select ad_process_id from ad_process where value = 'Transactions Message Processor')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Reset Error Before Process',Help = '',Name = 'Reset Error Before Process' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ResetError' and ad_process_id in (select ad_process_id from ad_process where value = 'Transactions Message Processor')) and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Transactions Messages','Transactions Messages',
'W',
'Transactions Messages',
'E005',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'Transactions Messages'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Transactions Messages' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Transactions Messages', action = 'W', description = 'Transactions Messages', entitytype = 'E005', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Transactions Messages'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Transactions Messages' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Transactions Messages'), 'nl_BE', 'Y', 'Transactions Messages','Transactions Messages'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Transactions Messages') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transactions Messages',Name = 'Transactions Messages' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Transactions Messages') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Transactions Messages'), 'fr_FR', 'Y', 'Messages Transactionnels','Messages Transactionnels'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Transactions Messages') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Messages Transactionnels',Name = 'Messages Transactionnels' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Transactions Messages') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Validation des Messages','Validation des Messages',
'W',
'',
'E005',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'Validation des Messages'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Validation des Messages' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Validation des Messages', action = 'W', description = '', entitytype = 'E005', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Validation des Messages'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Validation des Messages' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Validation des Messages'), 'nl_BE', 'Y', '','Validation des Messages'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Validation des Messages') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Validation des Messages' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Validation des Messages') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Validation des Messages'), 'fr_FR', 'Y', '','Validation des Messages'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Validation des Messages') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Validation des Messages' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Validation des Messages') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Transactions MEssage Processor','Transactions MEssage Processor',
'P',
'',
'E005',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'Transactions Message Processor'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Transactions MEssage Processor' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Transactions MEssage Processor', action = 'P', description = '', entitytype = 'E005', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Transactions Message Processor'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Transactions MEssage Processor' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Transactions MEssage Processor'), 'nl_BE', 'Y', '','Transactions MEssage Processor'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Transactions MEssage Processor') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Transactions MEssage Processor' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Transactions MEssage Processor') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Transactions MEssage Processor'), 'fr_FR', 'Y', '','Transactions MEssage Processor'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Transactions MEssage Processor') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Transactions MEssage Processor' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Transactions MEssage Processor') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Validation Création d''Article','Validation Création d''Article',
'W',
'',
'E005',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Validation Création d''Article' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Validation Création d''Article', action = 'W', description = '', entitytype = 'E005', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Validation Création d''Article'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Validation Création d''Article' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Validation Création d''Article'), 'nl_BE', 'Y', '','Validation Création d''Article'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Validation Création d''Article') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Validation Création d''Article' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Validation Création d''Article') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Validation Création d''Article'), 'fr_FR', 'Y', '','Validation Création d''Article'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Validation Création d''Article') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Validation Création d''Article' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Validation Création d''Article') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_COMPLETED_ACTIVITY','E005',
'90',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_COMPLETED_ACTIVITY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E005', msgtext = '90', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_COMPLETED_ACTIVITY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_COMPLETED_ACTIVITY'), 'nl_BE', 'Y', '90',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_COMPLETED_ACTIVITY') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '90',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_COMPLETED_ACTIVITY') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_COMPLETED_ACTIVITY'), 'fr_FR', 'Y', '90',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_COMPLETED_ACTIVITY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '90',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_COMPLETED_ACTIVITY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONFIRM_FORM_OTHER_WH_ACTIVITY','E005',
'17',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONFIRM_FORM_OTHER_WH_ACTIVITY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E005', msgtext = '17', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONFIRM_FORM_OTHER_WH_ACTIVITY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONFIRM_FORM_OTHER_WH_ACTIVITY'), 'nl_BE', 'Y', '17',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONFIRM_FORM_OTHER_WH_ACTIVITY') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '17',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONFIRM_FORM_OTHER_WH_ACTIVITY') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONFIRM_FORM_OTHER_WH_ACTIVITY'), 'fr_FR', 'Y', '17',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONFIRM_FORM_OTHER_WH_ACTIVITY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '17',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONFIRM_FORM_OTHER_WH_ACTIVITY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CHARGE_MVT_NP_ID','E005',
'ATTENTE D''EXPEDITION',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CHARGE_MVT_NP_ID' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E005', msgtext = 'ATTENTE D''EXPEDITION', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CHARGE_MVT_NP_ID' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CHARGE_MVT_NP_ID'), 'nl_BE', 'Y', 'ATTENTE D''EXPEDITION',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CHARGE_MVT_NP_ID') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'ATTENTE D''EXPEDITION',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CHARGE_MVT_NP_ID') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CHARGE_MVT_NP_ID'), 'fr_FR', 'Y', 'ATTENTE D''EXPEDITION',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CHARGE_MVT_NP_ID') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'ATTENTE D''EXPEDITION',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CHARGE_MVT_NP_ID') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ACTIVITY_ACTION_CANCEL_VALUE','E005',
'99',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ACTIVITY_ACTION_CANCEL_VALUE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E005', msgtext = '99', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ACTIVITY_ACTION_CANCEL_VALUE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACTIVITY_ACTION_CANCEL_VALUE'), 'nl_BE', 'Y', '99',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIVITY_ACTION_CANCEL_VALUE') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '99',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIVITY_ACTION_CANCEL_VALUE') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACTIVITY_ACTION_CANCEL_VALUE'), 'fr_FR', 'Y', '99',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIVITY_ACTION_CANCEL_VALUE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '99',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIVITY_ACTION_CANCEL_VALUE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONFIRM_FORM_OTHER_WH_ACTION','E005',
'80',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONFIRM_FORM_OTHER_WH_ACTION' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E005', msgtext = '80', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONFIRM_FORM_OTHER_WH_ACTION' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONFIRM_FORM_OTHER_WH_ACTION'), 'nl_BE', 'Y', '80',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONFIRM_FORM_OTHER_WH_ACTION') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '80',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONFIRM_FORM_OTHER_WH_ACTION') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONFIRM_FORM_OTHER_WH_ACTION'), 'fr_FR', 'Y', '80',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONFIRM_FORM_OTHER_WH_ACTION') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '80',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONFIRM_FORM_OTHER_WH_ACTION') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PROCESS_BO_ACTIVITY','E005',
'60',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PROCESS_BO_ACTIVITY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E005', msgtext = '60', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PROCESS_BO_ACTIVITY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PROCESS_BO_ACTIVITY'), 'nl_BE', 'Y', '60',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PROCESS_BO_ACTIVITY') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '60',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PROCESS_BO_ACTIVITY') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PROCESS_BO_ACTIVITY'), 'fr_FR', 'Y', '60',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PROCESS_BO_ACTIVITY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '60',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PROCESS_BO_ACTIVITY') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'E005 - Transaction Message Table', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.00', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E005' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = 'Transaction Message', entitytype = 'E005', help = '', importtable = 'N', loadseq = 0, name = 'Transaction Message', replicationtype = 'L', isactive = 'Y', ischangelog = 'N', isdeleteable = 'Y', ishighvolume = 'Y', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Transactions Messages'), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'Z_TransactionMsg' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Transactions Messages') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Transactions Messages')); 

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Validation des Messages') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Validation des Messages')); 

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Validation Création d''Article') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Validation Création d''Article')); 

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Transactions MEssage Processor') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Transactions MEssage Processor')); 

