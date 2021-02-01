insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'S100','S100-Intégration Arco',
'S100-Intégration Arco',
'',
'Y',
'',
'',
'',
'N',
'3.',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'S100' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'S100-Intégration Arco', description = 'S100-Intégration Arco', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'S100' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'01',(select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'),
'',
'S100',
'Erreur Qté',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'), description = '', entitytype = 'S100', name = 'Erreur Qté', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'nl_NL', 'Y', '','Erreur Qté'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Erreur Qté' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'fr_FR', 'Y', '','Erreur Qté'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Erreur Qté' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'02',(select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'),
'',
'S100',
'Erreur Prix',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'), description = '', entitytype = 'S100', name = 'Erreur Prix', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'nl_NL', 'Y', '','Erreur Prix'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Erreur Prix' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'fr_FR', 'Y', '','Erreur Prix'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Erreur Prix' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'03',(select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'),
'',
'S100',
'Erreur Qté et Prix',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'), description = '', entitytype = 'S100', name = 'Erreur Qté et Prix', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'nl_NL', 'Y', '','Erreur Qté et Prix'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Erreur Qté et Prix' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'fr_FR', 'Y', '','Erreur Qté et Prix'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Erreur Qté et Prix' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'04',(select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'),
'',
'S100',
'Pas d?erreur',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'), description = '', entitytype = 'S100', name = 'Pas d?erreur', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'nl_NL', 'Y', '','Pas d?erreur'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Pas d?erreur' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'fr_FR', 'Y', '','Pas d?erreur'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Pas d?erreur' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'Z_LineStatus','',
'S100',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'Z_LineStatus' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'Z_LineStatus' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='Z_LineStatus'), 'nl_NL', 'Y', '','','Z_LineStatus'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Z_LineStatus') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_LineStatus' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Z_LineStatus') and ad_language = 'nl_NL';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='Z_LineStatus'), 'fr_FR', 'Y', '','','Z_LineStatus'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Z_LineStatus') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_LineStatus' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Z_LineStatus') and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'01',(select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'),
'',
'S100',
'Erreur Qté',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'), description = '', entitytype = 'S100', name = 'Erreur Qté', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'nl_NL', 'Y', '','Erreur Qté'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Erreur Qté' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'fr_FR', 'Y', '','Erreur Qté'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Erreur Qté' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'02',(select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'),
'',
'S100',
'Erreur Prix',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'), description = '', entitytype = 'S100', name = 'Erreur Prix', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'nl_NL', 'Y', '','Erreur Prix'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Erreur Prix' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'fr_FR', 'Y', '','Erreur Prix'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Erreur Prix' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'03',(select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'),
'',
'S100',
'Erreur Qté et Prix',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'), description = '', entitytype = 'S100', name = 'Erreur Qté et Prix', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'nl_NL', 'Y', '','Erreur Qté et Prix'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Erreur Qté et Prix' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'fr_FR', 'Y', '','Erreur Qté et Prix'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Erreur Qté et Prix' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'04',(select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'),
'',
'S100',
'Pas d?erreur',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'), description = '', entitytype = 'S100', name = 'Pas d?erreur', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'nl_NL', 'Y', '','Pas d?erreur'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Pas d?erreur' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')), 'fr_FR', 'Y', '','Pas d?erreur'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Pas d?erreur' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_LineStatus')) and ad_language = 'fr_FR';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'ZRV_CutOff','7',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'S100',
'',
'N',
0,
'ZRV_CutOff',
'L',
'Y',
'N',
'N',
'N',
'Y',
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'ZRV_CutOff' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '7', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'S100', help = '', importtable = 'N', loadseq = 0, name = 'ZRV_CutOff', replicationtype = 'L', isactive = 'Y', isdeleteable = 'N', ishighvolume = 'N', issecurityenabled = 'N', isview = 'Y', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'ZRV_CutOff' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='ZRV_CutOff'), 'nl_NL', 'Y', 'ZRV_CutOff'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_CutOff') and ad_language = 'nl_NL');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ZRV_CutOff' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_CutOff') and ad_language = 'nl_NL';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='ZRV_CutOff'), 'fr_FR', 'Y', 'ZRV_CutOff'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_CutOff') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ZRV_CutOff' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_CutOff') and ad_language = 'fr_FR';

insert into AD_ReportView (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ReportView_ID,Name,ad_table_id, description, entitytype, orderbyclause, whereclause, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ReportView'),'zrv_cutoff',(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
'',
'S100',
'',
'ZRV_CutOff.QtyInvoiced <> ZRV_CutOff.QtyDelivered',
'Y'
 from dual  
where not exists (select 1 from AD_ReportView where Name = 'zrv_cutoff' );

update AD_ReportView set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), description = '', entitytype = 'S100', orderbyclause = '', whereclause = 'ZRV_CutOff.QtyInvoiced <> ZRV_CutOff.QtyDelivered', isactive = 'Y' 
where Name = 'zrv_cutoff' ;

insert into AD_PrintFormat (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormat_ID,Name,description,istablebased,isform,ad_printPaper_id,ad_printcolor_id,ad_printfont_id,isstandardheaderfooter,headermargin,footermargin, ad_reportview_id,ad_printtableformat_id,printername,isdefault,ad_table_id,ad_process_id,zisdetail,IsTotalsOnly) 
select 1000022,1000012,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormat'),'cutoff_print','',
'Y',
'N',
(select AD_PrintPaper_ID from AD_PrintPaper where name = 'A4 Landscape'),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
'Y',
0,
0,
(select AD_ReportView_ID from AD_ReportView where name = 'oldzrv_cutoff'),
(select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = ''),
'',
'N',
(select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff'),
(select AD_Process_ID from AD_Process where value = ''),
'Y',
'N'
 from dual  
where not exists (select 1 from AD_PrintFormat where Name = 'cutoff_print' );

update AD_PrintFormat set Updated = sysdate, UpdatedBy = 0, description = '', istablebased = 'Y', isform = 'N', ad_printPaper_id = (select AD_PrintPaper_ID from AD_PrintPaper where name = 'A4 Landscape'), ad_printcolor_id = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printfont_id = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), isstandardheaderfooter = 'Y', headermargin = 0, footermargin = 0, ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where name = 'oldzrv_cutoff'), ad_printtableformat_id = (select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = ''), printername = '', isdefault = 'N', ad_table_id = (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff'), ad_process_id = (select AD_Process_ID from AD_Process where value = ''), zisdetail = 'Y', IsTotalsOnly = 'N' 
where Name = 'cutoff_print' ;

insert into AD_PrintFormat (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormat_ID,Name,description,istablebased,isform,ad_printPaper_id,ad_printcolor_id,ad_printfont_id,isstandardheaderfooter,headermargin,footermargin, ad_reportview_id,ad_printtableformat_id,printername,isdefault,ad_table_id,ad_process_id,zisdetail,IsTotalsOnly) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormat'),'cutoff_print','',
'Y',
'N',
(select AD_PrintPaper_ID from AD_PrintPaper where name = 'Letter Landscape'),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
'Y',
0,
0,
(select AD_ReportView_ID from AD_ReportView where name = 'zrv_cutoff'),
(select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = 'Default Report'),
'',
'N',
(select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff'),
(select AD_Process_ID from AD_Process where value = ''),
'Y',
'N'
 from dual  
where not exists (select 1 from AD_PrintFormat where Name = 'cutoff_print' );

update AD_PrintFormat set Updated = sysdate, UpdatedBy = 0, description = '', istablebased = 'Y', isform = 'N', ad_printPaper_id = (select AD_PrintPaper_ID from AD_PrintPaper where name = 'Letter Landscape'), ad_printcolor_id = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printfont_id = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), isstandardheaderfooter = 'Y', headermargin = 0, footermargin = 0, ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where name = 'zrv_cutoff'), ad_printtableformat_id = (select AD_PrinttableFormat_ID from AD_PrinttableFormat where name = 'Default Report'), printername = '', isdefault = 'N', ad_table_id = (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff'), ad_process_id = (select AD_Process_ID from AD_Process where value = ''), zisdetail = 'Y', IsTotalsOnly = 'N' 
where Name = 'cutoff_print' ;

insert into AD_ReportView (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ReportView_ID,Name,ad_table_id, description, entitytype, orderbyclause, whereclause, isactive) 
select 1000022,1000012,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ReportView'),'cutoff_print',(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
'',
'',
'',
'',
'Y'
 from dual  
where not exists (select 1 from AD_ReportView where Name = 'cutoff_print' );

update AD_ReportView set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), description = '', entitytype = '', orderbyclause = '', whereclause = '', isactive = 'Y' 
where Name = 'cutoff_print' ;

insert into AD_ReportView (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ReportView_ID,Name,ad_table_id, description, entitytype, orderbyclause, whereclause, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ReportView'),'cutoff_print',(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
'',
'',
'',
'',
'Y'
 from dual  
where not exists (select 1 from AD_ReportView where Name = 'cutoff_print' );

update AD_ReportView set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), description = '', entitytype = '', orderbyclause = '', whereclause = '', isactive = 'Y' 
where Name = 'cutoff_print' ;

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'line',(select AD_Column_ID from AD_Column where columnName = 'Line' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'cutoff_print' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
0,
'D',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
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
'N',
'X',
0,
0,
'C',
'F',
'Numéro de ligne',
'',
20,
30,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'line'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'Line' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'cutoff_print' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'D', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'Y', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'Y', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Numéro de ligne', PrintNameSuffix = '', runningTotalLines = 20, seqno = 30, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'line'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='line' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')), 'nl_NL', 'Y', 'line','Regel nr.',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='line' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'line',PrintName = 'Regel nr.',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='line' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='line' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')), 'fr_FR', 'Y', 'line','Numéro de ligne',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='line' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'line',PrintName = 'Numéro de ligne',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='line' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'c_invoice_id',(select AD_Column_ID from AD_Column where columnName = 'C_Invoice_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'cutoff_print' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
0,
'D',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
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
'N',
'X',
0,
0,
'C',
'F',
'Numéro de facture fournisseur',
'',
20,
10,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'c_invoice_id'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'C_Invoice_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'cutoff_print' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'D', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'Y', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'Y', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Numéro de facture fournisseur', PrintNameSuffix = '', runningTotalLines = 20, seqno = 10, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'c_invoice_id'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_invoice_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')), 'nl_NL', 'Y', 'c_invoice_id','Factuur',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_invoice_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'c_invoice_id',PrintName = 'Factuur',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_invoice_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_invoice_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')), 'fr_FR', 'Y', 'c_invoice_id','Numéro de facture fournisseur',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_invoice_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'c_invoice_id',PrintName = 'Numéro de facture fournisseur',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_invoice_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'z_cutoffamt',(select AD_Column_ID from AD_Column where columnName = 'Z_CutOffAmt' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'cutoff_print' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
0,
'T',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
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
'N',
'X',
0,
0,
'C',
'F',
'Montant cut-off',
'',
20,
40,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'z_cutoffamt'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'Z_CutOffAmt' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'cutoff_print' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'T', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'Y', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'Y', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Montant cut-off', PrintNameSuffix = '', runningTotalLines = 20, seqno = 40, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'z_cutoffamt'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='z_cutoffamt' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')), 'nl_NL', 'Y', 'z_cutoffamt','Cut-Off Amt',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='z_cutoffamt' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'z_cutoffamt',PrintName = 'Cut-Off Amt',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='z_cutoffamt' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='z_cutoffamt' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')), 'fr_FR', 'Y', 'z_cutoffamt','Montant cut-off',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='z_cutoffamt' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'z_cutoffamt',PrintName = 'Montant cut-off',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='z_cutoffamt' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'fr_FR';

insert into AD_PrintFormatItem (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,Name,AD_Column_ID,AD_PrintColor_ID,ad_printFont_ID,ad_PrintFormatChild_ID,AD_PrintFormat_ID,belowColumn,FieldAlignmentType,imageisAttached,imageurl,isActive,isAveraged,isCounted,IsDeviationCalc,isFixedWidth,isgroupBy,isHeightOneLine,isMaxCalc,isMinCalc,isNextLine,isNextPage,isOrderBy,isPageBreak,isPrinted,isRelativePosition,isRunningTotal,isSetNlPosition,isSummarized,isSuppressNull,isVarianceCalc,lineAlignmentType,MaxHeight,MaxWidth,PrintAreaType,PrintFormatType,PrintName,PrintNameSuffix,runningTotalLines,seqno,sortno,xposition,yposition,xspace,yspace,shapeType,arcDiameter) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_PrintFormatItem'),'c_order_id',(select AD_Column_ID from AD_Column where columnName = 'C_Order_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')),
(select AD_PrintColor_ID from AD_PrintColor where name = 'Black'),
(select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'),
(select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
(select AD_PrintFormat_ID from AD_PrintFormat where name = 'cutoff_print' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')),
0,
'D',
'N',
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
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
'N',
'X',
0,
0,
'C',
'F',
'Numéro de commande fournisseur',
'',
20,
20,
0,
0,
0,
0,
0,
'N',
0
 from dual  
where not exists (select 1 from AD_PrintFormatItem where Name = 'c_order_id'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print'));

update AD_PrintFormatItem set Updated = sysdate, UpdatedBy = 0, AD_Column_ID = (select AD_Column_ID from AD_Column where columnName = 'C_Order_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_CutOff')), AD_PrintColor_ID = (select AD_PrintColor_ID from AD_PrintColor where name = 'Black'), ad_printFont_ID = (select AD_PrintFont_ID from AD_PrintFont where name = 'SansSerif 9'), ad_PrintFormatChild_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = '' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), AD_PrintFormat_ID = (select AD_PrintFormat_ID from AD_PrintFormat where name = 'cutoff_print' and AD_Client_ID in (select AD_Client_ID from AD_Client where name = 'System')), belowColumn = 0, FieldAlignmentType = 'D', imageisAttached = 'N', imageurl = '', isActive = 'Y', isAveraged = 'N', isCounted = 'N', IsDeviationCalc = 'N', isFixedWidth = 'N', isgroupBy = 'N', isHeightOneLine = 'Y', isMaxCalc = 'N', isMinCalc = 'N', isNextLine = 'Y', isNextPage = 'N', isOrderBy = 'N', isPageBreak = 'N', isPrinted = 'Y', isRelativePosition = 'Y', isRunningTotal = 'N', isSetNlPosition = 'N', isSummarized = 'N', isSuppressNull = 'N', isVarianceCalc = 'N', lineAlignmentType = 'X', MaxHeight = 0, MaxWidth = 0, PrintAreaType = 'C', PrintFormatType = 'F', PrintName = 'Numéro de commande fournisseur', PrintNameSuffix = '', runningTotalLines = 20, seqno = 20, sortno = 0, xposition = 0, yposition = 0, xspace = 0, yspace = 0, shapeType = 'N', arcDiameter = 0 
where Name = 'c_order_id'  and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print');

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_order_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')), 'nl_NL', 'Y', 'c_order_id','Verkoop Order',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_order_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'nl_NL');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'c_order_id',PrintName = 'Verkoop Order',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_order_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'nl_NL';

insert into AD_PrintFormatItem_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_PrintFormatItem_ID,AD_Language, IsTranslated,Name,PrintName,PrintNameSuffix) 
select 0,0,sysdate, sysdate,0,0,(select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_order_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')), 'fr_FR', 'Y', 'c_order_id','Numéro de commande fournisseur',''
 from dual  
where not exists (select 1 from AD_PrintFormatItem_Trl where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_order_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'fr_FR');

update AD_PrintFormatItem_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'c_order_id',PrintName = 'Numéro de commande fournisseur',PrintNameSuffix = '' where AD_PrintFormatItem_ID in (select AD_PrintFormatItem_ID from AD_PrintFormatItem where Name='c_order_id' and ad_PrintFormat_id in (select ad_PrintFormat_id from ad_PrintFormat where name = 'cutoff_print')) and ad_language = 'fr_FR';

insert into AD_ReportView (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ReportView_ID,Name,ad_table_id, description, entitytype, orderbyclause, whereclause, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ReportView'),'zrv_cutoff',(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
'',
'S100',
'',
'ZRV_CutOff.QtyInvoiced <> ZRV_CutOff.QtyDelivered',
'Y'
 from dual  
where not exists (select 1 from AD_ReportView where Name = 'zrv_cutoff' );

update AD_ReportView set Updated = sysdate, UpdatedBy = 0, ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), description = '', entitytype = 'S100', orderbyclause = '', whereclause = 'ZRV_CutOff.QtyInvoiced <> ZRV_CutOff.QtyDelivered', isactive = 'Y' 
where Name = 'zrv_cutoff' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Cut-Off calculation','7',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.process.CutOffAmt',
'',
'S100',
'',
'',
'',
'Cut-Off calculation',
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
where not exists (select 1 from AD_Process where Value = 'Cut-Off calculation' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '7', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.process.CutOffAmt', description = '', entitytype = 'S100', help = '', jasperreport = '', procedurename = '', name = 'Cut-Off calculation', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Cut-Off calculation' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Cut-Off calculation'), 'nl_NL', 'Y', '','','Cut-Off calculation'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Cut-Off calculation') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cut-Off calculation' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Cut-Off calculation') and ad_language = 'nl_NL';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Cut-Off calculation'), 'fr_FR', 'Y', '','','Cut-Off calculation'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Cut-Off calculation') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cut-Off calculation' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Cut-Off calculation') and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Cut-Off calculation-paramaters','7',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.process.CutOffAmtPartner',
'',
'S100',
'',
'',
'',
'Cut-Off calculation-paramaters',
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
where not exists (select 1 from AD_Process where Value = 'Cut-Off calculation-paramaters' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '7', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.process.CutOffAmtPartner', description = '', entitytype = 'S100', help = '', jasperreport = '', procedurename = '', name = 'Cut-Off calculation-paramaters', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Cut-Off calculation-paramaters' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Cut-Off calculation-paramaters'), 'nl_NL', 'Y', '','','Cut-Off calculation'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Cut-Off calculation-paramaters') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cut-Off calculation' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Cut-Off calculation-paramaters') and ad_language = 'nl_NL';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Cut-Off calculation-paramaters'), 'fr_FR', 'Y', '','','Calcul Cut-Off'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Cut-Off calculation-paramaters') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Calcul Cut-Off' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Cut-Off calculation-paramaters') and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'cutoff_print','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = 'cutoff_print'),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'',
'',
'S100',
'',
'',
'',
'cutoff_print',
'',
'Y',
'N',
'N',
'Y',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
(select AD_BView_ID from AD_BView where Name = ''),
(select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Process where Value = 'cutoff_print' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = 'cutoff_print'), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = '', description = '', entitytype = 'S100', help = '', jasperreport = '', procedurename = '', name = 'cutoff_print', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'Y', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'cutoff_print' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='cutoff_print'), 'nl_NL', 'Y', '','','cutoff_print'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='cutoff_print') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'cutoff_print' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='cutoff_print') and ad_language = 'nl_NL';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='cutoff_print'), 'fr_FR', 'Y', '','','cutoff_print'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='cutoff_print') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'cutoff_print' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='cutoff_print') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_CutOffCalc','',
'S100',
'',
'Cut-Off calculation',
'',
'',
'',
'',
'Cut-Off calculation',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_CutOffCalc' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'Cut-Off calculation', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Cut-Off calculation', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_CutOffCalc' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_CutOffCalc'), 'nl_NL', 'Y', '','','Cut-Off calculation','','','','','Cut-Off calculation'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CutOffCalc') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cut-Off calculation',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Cut-Off calculation' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CutOffCalc') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_CutOffCalc'), 'fr_FR', 'Y', '','','Calcul Cut-Off','','','','','Calcul Cut-Off'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CutOffCalc') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Calcul Cut-Off',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Calcul Cut-Off' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CutOffCalc') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'N° de facture fournisseur','',
'S100',
'',
'N° de facture fournisseur',
'',
'',
'',
'',
'N° de facture fournisseur',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'N° de facture fournisseur' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'N° de facture fournisseur', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'N° de facture fournisseur', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'N° de facture fournisseur' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='N° de facture fournisseur'), 'nl_NL', 'Y', '','','N° de facture fournisseur','','','','','N° de facture fournisseur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N° de facture fournisseur') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° de facture fournisseur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° de facture fournisseur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N° de facture fournisseur') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='N° de facture fournisseur'), 'fr_FR', 'Y', '','','N° de facture fournisseur','','','','','N° de facture fournisseur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N° de facture fournisseur') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° de facture fournisseur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° de facture fournisseur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N° de facture fournisseur') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Nofacture','',
'S100',
'',
'Nofacture',
'',
'',
'',
'',
'Nofacture',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Nofacture' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'Nofacture', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Nofacture', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Nofacture' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Nofacture'), 'nl_NL', 'Y', '','','Nofacture','','','','','Nofacture'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Nofacture') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nofacture',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nofacture' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Nofacture') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Nofacture'), 'fr_FR', 'Y', '','','Nofacture','','','','','Nofacture'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Nofacture') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nofacture',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nofacture' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Nofacture') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Nocommande','',
'S100',
'',
'Nocommande',
'',
'',
'',
'',
'Nocommande',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Nocommande' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'Nocommande', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Nocommande', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Nocommande' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Nocommande'), 'nl_NL', 'Y', '','','Nocommande','','','','','Nocommande'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Nocommande') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nocommande',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nocommande' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Nocommande') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Nocommande'), 'fr_FR', 'Y', '','','Nocommande','','','','','Nocommande'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Nocommande') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nocommande',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Nocommande' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Nocommande') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Noligne','',
'S100',
'',
'Noligne',
'',
'',
'',
'',
'Noligne',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Noligne' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'Noligne', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Noligne', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Noligne' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Noligne'), 'nl_NL', 'Y', '','','Noligne','','','','','Noligne'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Noligne') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Noligne',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Noligne' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Noligne') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Noligne'), 'fr_FR', 'Y', '','','Noligne','','','','','Noligne'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Noligne') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Noligne',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Noligne' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Noligne') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'nligne','',
'S100',
'',
'nligne',
'',
'',
'',
'',
'nligne',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'nligne' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'nligne', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'nligne', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'nligne' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='nligne'), 'nl_NL', 'Y', '','','nligne','','','','','nligne'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='nligne') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'nligne',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'nligne' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='nligne') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='nligne'), 'fr_FR', 'Y', '','','nligne','','','','','nligne'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='nligne') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'nligne',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'nligne' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='nligne') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'N_de_lignes_de_facture','',
'S100',
'',
'N° de lignes de facture',
'',
'',
'',
'',
'N° de lignes de facture',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'N_de_lignes_de_facture' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'N° de lignes de facture', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'N° de lignes de facture', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'N_de_lignes_de_facture' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='N_de_lignes_de_facture'), 'nl_NL', 'Y', '','','N° de lignes de facture','','','','','N° de lignes de facture'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N_de_lignes_de_facture') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° de lignes de facture',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° de lignes de facture' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N_de_lignes_de_facture') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='N_de_lignes_de_facture'), 'fr_FR', 'Y', '','','N° de lignes de facture','','','','','N° de lignes de facture'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N_de_lignes_de_facture') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° de lignes de facture',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° de lignes de facture' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N_de_lignes_de_facture') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'N_de_facture_fournisseur','',
'S100',
'',
'N° de facture fournisseur',
'',
'',
'',
'',
'N° de facture fournisseur',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'N_de_facture_fournisseur' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'N° de facture fournisseur', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'N° de facture fournisseur', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'N_de_facture_fournisseur' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='N_de_facture_fournisseur'), 'nl_NL', 'Y', '','','N° de facture fournisseur','','','','','N° de facture fournisseur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N_de_facture_fournisseur') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° de facture fournisseur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° de facture fournisseur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N_de_facture_fournisseur') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='N_de_facture_fournisseur'), 'fr_FR', 'Y', '','','N° de facture fournisseur','','','','','N° de facture fournisseur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N_de_facture_fournisseur') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° de facture fournisseur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° de facture fournisseur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N_de_facture_fournisseur') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'N_de_commande_fournisseur','',
'S100',
'',
'N° de commande fournisseur',
'',
'',
'',
'',
'N° de commande fournisseur',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'N_de_commande_fournisseur' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'N° de commande fournisseur', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'N° de commande fournisseur', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'N_de_commande_fournisseur' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='N_de_commande_fournisseur'), 'nl_NL', 'Y', '','','N° de commande fournisseur','','','','','N° de commande fournisseur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N_de_commande_fournisseur') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° de commande fournisseur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° de commande fournisseur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N_de_commande_fournisseur') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='N_de_commande_fournisseur'), 'fr_FR', 'Y', '','','N° de commande fournisseur','','','','','N° de commande fournisseur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N_de_commande_fournisseur') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° de commande fournisseur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° de commande fournisseur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N_de_commande_fournisseur') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'N° de commande fournisseur','',
'S100',
'',
'N° de commande fournisseur',
'',
'',
'',
'',
'N° de commande fournisseur',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'N° de commande fournisseur' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'N° de commande fournisseur', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'N° de commande fournisseur', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'N° de commande fournisseur' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='N° de commande fournisseur'), 'nl_NL', 'Y', '','','N° de commande fournisseur','','','','','N° de commande fournisseur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N° de commande fournisseur') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° de commande fournisseur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° de commande fournisseur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N° de commande fournisseur') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='N° de commande fournisseur'), 'fr_FR', 'Y', '','','N° de commande fournisseur','','','','','N° de commande fournisseur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N° de commande fournisseur') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° de commande fournisseur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° de commande fournisseur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N° de commande fournisseur') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'N° de lignes de facture','',
'S100',
'',
'N° de lignes de facture',
'',
'',
'',
'',
'N° de lignes de facture',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'N° de lignes de facture' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'N° de lignes de facture', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'N° de lignes de facture', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'N° de lignes de facture' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='N° de lignes de facture'), 'nl_NL', 'Y', '','','N° de lignes de facture','','','','','N° de lignes de facture'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N° de lignes de facture') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° de lignes de facture',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° de lignes de facture' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N° de lignes de facture') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='N° de lignes de facture'), 'fr_FR', 'Y', '','','N° de lignes de facture','','','','','N° de lignes de facture'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N° de lignes de facture') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N° de lignes de facture',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'N° de lignes de facture' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='N° de lignes de facture') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_LineStatus','',
'S100',
'',
'Line status',
'',
'',
'',
'',
'Line status',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_LineStatus' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'Line status', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Line status', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_LineStatus' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_LineStatus'), 'nl_NL', 'Y', '','','Line status','','','','','Line status'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_LineStatus') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Line status',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Line status' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_LineStatus') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_LineStatus'), 'fr_FR', 'Y', '','','Statut ligne','','','','','Statut ligne'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_LineStatus') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Statut ligne',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Statut ligne' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_LineStatus') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_ArcoComment','',
'S100',
'',
'Arco comments',
'',
'',
'',
'',
'Arco comments',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_ArcoComment' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'Arco comments', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Arco comments', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_ArcoComment' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_ArcoComment'), 'nl_NL', 'Y', '','','Arco comments','','','','','Arco comments'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ArcoComment') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Arco comments',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Arco comments' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ArcoComment') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_ArcoComment'), 'fr_FR', 'Y', '','','Commentaire Arco','','','','','Commentaire Arco'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ArcoComment') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Commentaire Arco',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Commentaire Arco' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ArcoComment') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_ApprovedInv','',
'S100',
'',
'Approv. Invoice',
'',
'',
'',
'',
'Approv. Invoice',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_ApprovedInv' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'Approv. Invoice', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Approv. Invoice', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_ApprovedInv' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_ApprovedInv'), 'nl_NL', 'Y', '','','Approv. Invoice','','','','','Approv. Invoice'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ApprovedInv') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Approv. Invoice',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Approv. Invoice' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ApprovedInv') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_ApprovedInv'), 'fr_FR', 'Y', '','','Approv. Invoice','','','','','Approv. Invoice'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ApprovedInv') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Approv. Invoice',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Approv. Invoice' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_ApprovedInv') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_CutOffAmt','',
'S100',
'',
'Cut-Off Amt',
'',
'',
'',
'',
'Cut-Off Amt',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_CutOffAmt' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', name = 'Cut-Off Amt', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Cut-Off Amt', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_CutOffAmt' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_CutOffAmt'), 'nl_NL', 'Y', '','','Cut-Off Amt','','','','','Cut-Off Amt'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CutOffAmt') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cut-Off Amt',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Cut-Off Amt' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CutOffAmt') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_CutOffAmt'), 'fr_FR', 'Y', '','','Montant Cut-Off','','','','','Montant Cut-Off'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CutOffAmt') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant Cut-Off',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Montant Cut-Off' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_CutOffAmt') and ad_language = 'fr_FR';

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'C_BPartner - Vendor','C_Invoice.C_BPartner_ID=@C_BPartner_ID@',
'',
'S100',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'C_BPartner - Vendor' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'C_Invoice.C_BPartner_ID=@C_BPartner_ID@', description = '', entitytype = 'S100', type = 'S', isactive = 'Y' 
where Name = 'C_BPartner - Vendor' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'S100',
10,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'Tenant',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = 'S100', fieldlength = 10, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'S100',
10,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'Organization',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = 'S100', fieldlength = 10, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'The record is active in the system',
'S100',
1,
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'Active',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'The record is active in the system', entitytype = 'S100', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'S100',
7,
'The Created On field indicates the date that this record was created.',
'Created On',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = 'S100', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'S100',
10,
'The Created By field indicates the user who created this record.',
'Created By',
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
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = 'S100', fieldlength = 10, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'S100',
7,
'The Updated field indicates the date that this record was updated.',
'Updated',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = 'S100', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'S100',
10,
'The Updated By field indicates the user who updated this record.',
'Updated By',
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
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = 'S100', fieldlength = 10, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Invoice_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Invoice_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Invoice Identifier',
'S100',
10,
'The Invoice Document.',
'Invoice',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Invoice_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Invoice_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Invoice Identifier', entitytype = 'S100', fieldlength = 10, help = 'The Invoice Document.', name = 'Invoice', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Invoice_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Invoice'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Invoice' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Invoice'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Invoice' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Order_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Order',
'S100',
10,
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
'Order',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Order', entitytype = 'S100', fieldlength = 10, help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', name = 'Order', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Line',(select AD_Element_ID from AD_Element where ColumnName = 'Line'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Unique line for this document',
'S100',
10,
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
where not exists (select 1 from AD_Column where ColumnName = 'Line'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Line'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Unique line for this document', entitytype = 'S100', fieldlength = 10, help = 'Indicates the unique line for a document.  It will also control the display order of the lines within a document.', name = 'Line No', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Line'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Line No'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Line No' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Line No'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Line No' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Line' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_CutOffAmt',(select AD_Element_ID from AD_Element where ColumnName = 'Z_CutOffAmt'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'S100',
22,
'',
'Cut-Off Amt',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_CutOffAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_CutOffAmt'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'S100', fieldlength = 22, help = '', name = 'Cut-Off Amt', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_CutOffAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Cut-Off Amt'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Cut-Off Amt' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Cut-Off Amt'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Cut-Off Amt' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Identifies a Business Partner',
'S100',
10,
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
where not exists (select 1 from AD_Column where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Identifies a Business Partner', entitytype = 'S100', fieldlength = 10, help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', name = 'Business Partner', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Business Partner'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Business Partner'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'QtyInvoiced',(select AD_Element_ID from AD_Element where ColumnName = 'QtyInvoiced'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Quantity'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Invoiced Quantity',
'S100',
22,
'The Invoiced Quantity indicates the quantity of a product that has been invoiced.',
'Quantity Invoiced',
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
where not exists (select 1 from AD_Column where ColumnName = 'QtyInvoiced'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'QtyInvoiced'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Quantity'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Invoiced Quantity', entitytype = 'S100', fieldlength = 22, help = 'The Invoiced Quantity indicates the quantity of a product that has been invoiced.', name = 'Quantity Invoiced', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'QtyInvoiced'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Quantity Invoiced'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantity Invoiced' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Quantity Invoiced'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantity Invoiced' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyInvoiced' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'QtyDelivered',(select AD_Element_ID from AD_Element where ColumnName = 'QtyDelivered'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Quantity'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Quantity Delivered',
'S100',
22,
'The Quantity Delivered indicates the quantity of a product that has been delivered.',
'Quantity Delivered',
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
where not exists (select 1 from AD_Column where ColumnName = 'QtyDelivered'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'QtyDelivered'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Quantity'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Quantity Delivered', entitytype = 'S100', fieldlength = 22, help = 'The Quantity Delivered indicates the quantity of a product that has been delivered.', name = 'Quantity Delivered', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'QtyDelivered'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'nl_NL', 'Y', 'Quantity Delivered'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantity Delivered' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')), 'fr_FR', 'Y', 'Quantity Delivered'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantity Delivered' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyDelivered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_CutOff')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'S100',
10,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'Tenant',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = 'S100', fieldlength = 10, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'Client'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Client' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'S100',
10,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'Organization',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = 'S100', fieldlength = 10, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'Organisatie'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisatie' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'The record is active in the system',
'S100',
1,
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'Active',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'The record is active in the system', entitytype = 'S100', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'Aktief'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Aktief' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'S100',
7,
'The Created On field indicates the date that this record was created.',
'Created On',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = 'S100', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'Gemaakt Op'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Gemaakt Op' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'S100',
10,
'The Created By field indicates the user who created this record.',
'Created By',
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
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = 'S100', fieldlength = 10, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'Gemaakt Door'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Gemaakt Door' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'S100',
7,
'The Updated field indicates the date that this record was updated.',
'Updated',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = 'S100', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'Gewijzigd Op'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Gewijzigd Op' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'S100',
10,
'The Updated By field indicates the user who updated this record.',
'Updated By',
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
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = 'S100', fieldlength = 10, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'Gewijzigd Door'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Gewijzigd Door' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'N_de_facture_fournisseur',(select AD_Element_ID from AD_Element where ColumnName = 'N° de facture fournisseur'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'S100',
15,
'',
'N° de facture fournisseur',
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
where not exists (select 1 from AD_Column where ColumnName = 'N_de_facture_fournisseur'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'N° de facture fournisseur'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'S100', fieldlength = 15, help = '', name = 'N° de facture fournisseur', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'N_de_facture_fournisseur'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='N_de_facture_fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'N° de facture fournisseur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='N_de_facture_fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° de facture fournisseur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='N_de_facture_fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='N_de_facture_fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'N° de facture fournisseur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='N_de_facture_fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° de facture fournisseur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='N_de_facture_fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'N_de_commande_fournisseur',(select AD_Element_ID from AD_Element where ColumnName = 'N° de commande fournisseur'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'S100',
15,
'',
'N° de commande fournisseur',
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
where not exists (select 1 from AD_Column where ColumnName = 'N_de_commande_fournisseur'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'N° de commande fournisseur'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'S100', fieldlength = 15, help = '', name = 'N° de commande fournisseur', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'N_de_commande_fournisseur'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='N_de_commande_fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'N° de commande fournisseur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='N_de_commande_fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° de commande fournisseur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='N_de_commande_fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='N_de_commande_fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'N° de commande fournisseur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='N_de_commande_fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° de commande fournisseur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='N_de_commande_fournisseur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'N_de_lignes_de_facture',(select AD_Element_ID from AD_Element where ColumnName = 'N° de lignes de facture'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'S100',
10,
'',
'N° de lignes de facture',
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
where not exists (select 1 from AD_Column where ColumnName = 'N_de_lignes_de_facture'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'N° de lignes de facture'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'S100', fieldlength = 10, help = '', name = 'N° de lignes de facture', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'N_de_lignes_de_facture'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='N_de_lignes_de_facture' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'N° de lignes de facture'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='N_de_lignes_de_facture' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° de lignes de facture' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='N_de_lignes_de_facture' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='N_de_lignes_de_facture' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'N° de lignes de facture'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='N_de_lignes_de_facture' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'N° de lignes de facture' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='N_de_lignes_de_facture' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_CutOffAmt',(select AD_Element_ID from AD_Element where ColumnName = 'Z_CutOffAmt'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'S100',
22,
'',
'Cut-Off Amt',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_CutOffAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_CutOffAmt'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'S100', fieldlength = 22, help = '', name = 'Cut-Off Amt', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_CutOffAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'Cut-Off Amt'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Cut-Off Amt' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'Montant Cut-Off'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant Cut-Off' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_ApprovedInv',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ApprovedInv'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BPartner'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'',
'S100',
1,
'',
'Approv. Invoice',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_ApprovedInv'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ApprovedInv'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BPartner'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = '', entitytype = 'S100', fieldlength = 1, help = '', name = 'Approv. Invoice', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_ApprovedInv'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'nl_NL', 'Y', 'Approv. Invoice'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Approv. Invoice' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')), 'fr_FR', 'Y', 'Approv. Invoice'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Approv. Invoice' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_ApprovedInv',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ApprovedInv'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'@SQL=SELECT Z_ApprovedInv FROM C_bpartner WHERE C_BPartner_ID=@C_BPartner_ID@',
'',
'S100',
1,
'',
'Approv. Invoice',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_ApprovedInv'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ApprovedInv'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '@SQL=SELECT Z_ApprovedInv FROM C_bpartner WHERE C_BPartner_ID=@C_BPartner_ID@', description = '', entitytype = 'S100', fieldlength = 1, help = '', name = 'Approv. Invoice', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_ApprovedInv'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'nl_NL', 'Y', 'Approv. Invoice'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Approv. Invoice' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'fr_FR', 'Y', 'Approv. Invoice'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Approv. Invoice' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_LineStatus',(select AD_Element_ID from AD_Element where ColumnName = 'Z_LineStatus'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'),
(select AD_Table_ID from AD_Table where TableName = 'C_InvoiceLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'S100',
2,
'',
'Line status',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_LineStatus'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_LineStatus'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_LineStatus'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_InvoiceLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'S100', fieldlength = 2, help = '', name = 'Line status', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_LineStatus'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')), 'nl_NL', 'Y', 'Line status'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Line status' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')), 'fr_FR', 'Y', 'Statut ligne'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Statut ligne' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_CutOffCalc',(select AD_Element_ID from AD_Element where ColumnName = 'Z_CutOffCalc'),
(select AD_Process_ID from AD_Process where Value = 'Cut-Off calculation'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Invoice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'S100',
1,
'',
'Cut-Off calculation',
'',
0,
'',
'',
0,
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_CutOffCalc'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_CutOffCalc'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Cut-Off calculation'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Invoice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'S100', fieldlength = 1, help = '', name = 'Cut-Off calculation', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_CutOffCalc'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'nl_NL', 'Y', 'Cut-Off calculation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Cut-Off calculation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')), 'fr_FR', 'Y', 'Calcul Cut-Off'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Calcul Cut-Off' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_CutOffAmt',(select AD_Element_ID from AD_Element where ColumnName = 'Z_CutOffAmt'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_InvoiceLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'0',
'',
'S100',
22,
'',
'Cut-Off Amt',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_CutOffAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_CutOffAmt'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_InvoiceLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '0', description = '', entitytype = 'S100', fieldlength = 22, help = '', name = 'Cut-Off Amt', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_CutOffAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')), 'nl_NL', 'Y', 'Cut-Off Amt'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Cut-Off Amt' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')), 'fr_FR', 'Y', 'Montant Cut-Off'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant Cut-Off' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_ArcoComment',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ArcoComment'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_InvoiceLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'S100',
200,
'',
'Arco comments',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_ArcoComment'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ArcoComment'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_InvoiceLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'S100', fieldlength = 200, help = '', name = 'Arco comments', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_ArcoComment'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')), 'nl_NL', 'Y', 'Arco comments'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Arco comments' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')), 'fr_FR', 'Y', 'Commentaire Arco'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Commentaire Arco' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Nofacture',(select AD_Element_ID from AD_Element where ColumnName = 'Nofacture'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'S100',
15,
'',
'Nofacture',
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
where not exists (select 1 from AD_Column where ColumnName = 'Nofacture'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Nofacture'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'S100', fieldlength = 15, help = '', name = 'Nofacture', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Nofacture'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Nofacture' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'Nofacture'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Nofacture' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nofacture' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Nofacture' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Nofacture' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'Nofacture'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Nofacture' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nofacture' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Nofacture' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Nocommande',(select AD_Element_ID from AD_Element where ColumnName = 'Nocommande'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'S100',
15,
'',
'Nocommande',
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
where not exists (select 1 from AD_Column where ColumnName = 'Nocommande'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Nocommande'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'S100', fieldlength = 15, help = '', name = 'Nocommande', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Nocommande'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Nocommande' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'Nocommande'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Nocommande' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nocommande' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Nocommande' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Nocommande' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'Nocommande'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Nocommande' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Nocommande' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Nocommande' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Noligne',(select AD_Element_ID from AD_Element where ColumnName = 'Noligne'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Integer'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'S100',
10,
'',
'Noligne',
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
where not exists (select 1 from AD_Column where ColumnName = 'Noligne'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Noligne'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Integer'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'S100', fieldlength = 10, help = '', name = 'Noligne', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Noligne'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'null');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Noligne' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'nl_NL', 'Y', 'Noligne'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Noligne' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Noligne' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Noligne' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Noligne' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')), 'fr_FR', 'Y', 'Noligne'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Noligne' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Noligne' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Noligne' and ad_table_id in (select ad_table_id from ad_table where tablename = 'null')) and ad_language = 'fr_FR';

insert into AD_ViewComponent (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewComponent_ID,to_char(SeqNo),Name, description, entitytype, help, isactive, AD_Table_ID, referenced_table_id, fromclause, whereclause, otherclause) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewComponent'),'','VC_ZRV_CutOff',
'',
'S100',
'',
'Y',
(select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'),
(select AD_Table_ID from AD_Table where TableName = 'C_InvoiceLine'),
'FROM c_invoiceline vl   INNER JOIN c_orderline ol   ON ol.c_orderline_id = vl.c_orderline_id   INNER JOIN c_invoice v   ON v.c_invoice_id = vl.c_invoice_id   INNER JOIN c_order o   ON o.c_order_id       = v.c_order_id  ',
'WHERE vl.Z_CutOffAmt <> 0  ',
'ORDER BY vl.c_invoice_id'
 from dual  
where not exists (select 1 from AD_ViewComponent where to_char(SeqNo) = ''  and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

update AD_ViewComponent set Updated = sysdate, UpdatedBy = 0, Name = 'VC_ZRV_CutOff', description = '', entitytype = 'S100', help = '', isactive = 'Y', AD_Table_ID = (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_InvoiceLine'), fromclause = 'FROM c_invoiceline vl   INNER JOIN c_orderline ol   ON ol.c_orderline_id = vl.c_orderline_id   INNER JOIN c_invoice v   ON v.c_invoice_id = vl.c_invoice_id   INNER JOIN c_order o   ON o.c_order_id       = v.c_order_id  ', whereclause = 'WHERE vl.Z_CutOffAmt <> 0  ', otherclause = 'ORDER BY vl.c_invoice_id' 
where to_char(SeqNo) = ''  and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff');

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'CREATED','',
'S100',
'',
'vl.created',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'CREATED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'vl.created', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'CREATED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'UPDATED','',
'S100',
'',
'vl.updated',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'UPDATED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'vl.updated', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'UPDATED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'UPDATEDBY','',
'S100',
'',
'vl.updatedby',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'UPDATEDBY'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'vl.updatedby', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'UPDATEDBY'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'C_ORDER_ID','',
'S100',
'',
'o.c_order_id',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'C_ORDER_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'o.c_order_id', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'C_ORDER_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'LINE','',
'S100',
'',
'vl.line',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'LINE'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'vl.line', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'LINE'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'Z_CUTOFFAMT','',
'S100',
'',
'vl.z_cutoffamt',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'Z_CUTOFFAMT'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'vl.z_cutoffamt', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'Z_CUTOFFAMT'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'QTYINVOICED','',
'S100',
'',
'ol.qtyinvoiced',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'QTYINVOICED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'ol.qtyinvoiced', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'QTYINVOICED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'QTYDELIVERED','',
'S100',
'',
'ol.qtydelivered',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'QTYDELIVERED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'ol.qtydelivered', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'QTYDELIVERED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'AD_ORG_ID','',
'S100',
'',
'vl.ad_org_id',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'AD_ORG_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'vl.ad_org_id', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'AD_ORG_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'ISACTIVE','',
'S100',
'',
'vl.isactive',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'ISACTIVE'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'vl.isactive', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'ISACTIVE'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'C_INVOICE_ID','',
'S100',
'',
'vl.c_invoice_id',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'C_INVOICE_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'vl.c_invoice_id', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'C_INVOICE_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'C_BPARTNER_ID','',
'S100',
'',
'v.c_bpartner_id',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'C_BPARTNER_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'v.c_bpartner_id', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'C_BPARTNER_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'AD_CLIENT_ID','',
'S100',
'',
'vl.ad_client_id',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'AD_CLIENT_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'vl.ad_client_id', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'AD_CLIENT_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'CREATEDBY','',
'S100',
'',
'vl.createdby',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'CREATEDBY'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'S100', help = '', columnsql = 'vl.createdby', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff')) 
where ColumnName = 'CREATEDBY'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_CutOff'));

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')),
'Approv. Invoice',
'',
0,
'',
'S100',
'',
'',
500,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')), name = 'Approv. Invoice', description = '', displaylength = 0, displaylogic = '', entitytype = 'S100', help = '', obscuretype = '', seqno = 500, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'nl_NL', 'Y', '','','Approv. Invoice'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Approv. Invoice' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'fr_FR', 'Y', '','','Approv. Invoice'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Approv. Invoice' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')),
'Cut-Off calculation',
'',
0,
'',
'S100',
'',
'',
510,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice_290' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')), name = 'Cut-Off calculation', description = '', displaylength = 0, displaylogic = '', entitytype = 'S100', help = '', obscuretype = '', seqno = 510, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'nl_NL', 'Y', '','','Cut-Off calculation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cut-Off calculation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'fr_FR', 'Y', '','','Calcul Cut-Off'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Calcul Cut-Off' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CutOffCalc' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice Line_291' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')),
'Cut-Off Amt',
'',
0,
'',
'S100',
'',
'',
350,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice Line_291' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')), name = 'Cut-Off Amt', description = '', displaylength = 0, displaylogic = '', entitytype = 'S100', help = '', obscuretype = '', seqno = 350, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'nl_NL', 'Y', '','','Cut-Off Amt'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Cut-Off Amt' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'fr_FR', 'Y', '','','Montant Cut-Off'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant Cut-Off' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_CutOffAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice Line_291' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')),
'Arco comments',
'',
0,
'',
'S100',
'',
'',
370,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice Line_291' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')), name = 'Arco comments', description = '', displaylength = 0, displaylogic = '', entitytype = 'S100', help = '', obscuretype = '', seqno = 370, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'nl_NL', 'Y', '','','Arco comments'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Arco comments' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'fr_FR', 'Y', '','','Commentaire Arco'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Commentaire Arco' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ArcoComment' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Vendor_224' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')),
'Approv. Invoice',
'',
0,
'',
'S100',
'',
'',
220,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Vendor_224' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')), name = 'Approv. Invoice', description = '', displaylength = 0, displaylogic = '', entitytype = 'S100', help = '', obscuretype = '', seqno = 220, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'nl_NL', 'Y', '','','Approv. Invoice'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Approv. Invoice' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'fr_FR', 'Y', '','','Approv. Invoice'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Approv. Invoice' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_ApprovedInv' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Vendor_224' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Invoice Line_291' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')),
'Line status',
'',
0,
'',
'S100',
'',
'',
360,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'Y',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Invoice Line_291' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Invoice (Vendor)_183')), name = 'Line status', description = '', displaylength = 0, displaylogic = '', entitytype = 'S100', help = '', obscuretype = '', seqno = 360, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'nl_NL', 'Y', '','','Line status'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Line status' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))), 'fr_FR', 'Y', '','','Statut ligne'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Statut ligne' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_LineStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_InvoiceLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice Line_291' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'))) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = 'cutoff_print'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Tenant',
'',
'',
'Identifies the Client/Tenant for this installation.',
'S100',
0,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'cutoff_print'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Tenant', defaultvalue = '', defaultvalue2 = '', description = 'Identifies the Client/Tenant for this installation.', entitytype = 'S100', fieldlength = 0, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')), 'nl_NL', 'Y', 'Client voor deze installatie.','Een client is een bedrijf of een rechtspersoon.','Client'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Client voor deze installatie.',Help = 'Een client is een bedrijf of een rechtspersoon.',Name = 'Client' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')), 'fr_FR', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Société'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Société' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = 'cutoff_print'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Organization',
'',
'',
'Organizational entity within Tenant',
'S100',
0,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
20,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'cutoff_print'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Organization', defaultvalue = '', defaultvalue2 = '', description = 'Organizational entity within Tenant', entitytype = 'S100', fieldlength = 0, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')), 'nl_NL', 'Y', 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Organisatie'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Help = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Name = 'Organisatie' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organisation'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organisation' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_Invoice_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Invoice_ID'),
(select AD_Process_ID from AD_Process where Value = 'cutoff_print'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_BPartner - Vendor'),
'Invoice',
'',
'',
'Invoice Identifier',
'S100',
0,
'The Invoice Document.',
40,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_Invoice_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Invoice_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'cutoff_print'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_BPartner - Vendor'), name = 'Invoice', defaultvalue = '', defaultvalue2 = '', description = 'Invoice Identifier', entitytype = 'S100', fieldlength = 0, help = 'The Invoice Document.', seqno = 40, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_Invoice_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Invoice_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')), 'nl_NL', 'Y', 'Factuur kenmerk.','Het factuur kenmerk geeft een uniek kenmerk aan voor een factuur document.','Factuur'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Invoice_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Factuur kenmerk.',Help = 'Het factuur kenmerk geeft een uniek kenmerk aan voor een factuur document.',Name = 'Factuur' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Invoice_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Invoice_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')), 'fr_FR', 'Y', 'Invoice Identifier','The Invoice Document.','Numéro de facture'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Invoice_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Invoice Identifier',Help = 'The Invoice Document.',Name = 'Numéro de facture' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Invoice_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Cut-Off calculation-paramaters'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Tenant',
'',
'',
'Identifies the Client/Tenant for this installation.',
'S100',
0,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
10,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Cut-Off calculation-paramaters'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Tenant', defaultvalue = '', defaultvalue2 = '', description = 'Identifies the Client/Tenant for this installation.', entitytype = 'S100', fieldlength = 0, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Client_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')), 'nl_NL', 'Y', 'Client voor deze installatie.','Een client is een bedrijf of een rechtspersoon.','Client'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Client voor deze installatie.',Help = 'Een client is een bedrijf of een rechtspersoon.',Name = 'Client' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')), 'fr_FR', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Client_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Cut-Off calculation-paramaters'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Business Partner',
'',
'',
'Identifies a Business Partner',
'S100',
0,
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
30,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Cut-Off calculation-paramaters'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Business Partner', defaultvalue = '', defaultvalue2 = '', description = 'Identifies a Business Partner', entitytype = 'S100', fieldlength = 0, help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', seqno = 30, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')), 'nl_NL', 'Y', 'Geeft een relatie aan.','Een relatie is iedereen met wie u interactie heeft. Dit omvat bijvoorbeeld leveranciers, klanten, peroneelsleden en verkopers.','Relatie'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Geeft een relatie aan.',Help = 'Een relatie is iedereen met wie u interactie heeft. Dit omvat bijvoorbeeld leveranciers, klanten, peroneelsleden en verkopers.',Name = 'Relatie' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')), 'fr_FR', 'Y', 'Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a Business Partner',Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Name = 'Business Partner' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'),
(select AD_Process_ID from AD_Process where Value = 'cutoff_print'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Business Partner',
'',
'',
'Identifies a Business Partner',
'S100',
0,
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
30,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'cutoff_print'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Business Partner', defaultvalue = '', defaultvalue2 = '', description = 'Identifies a Business Partner', entitytype = 'S100', fieldlength = 0, help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', seqno = 30, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')), 'nl_NL', 'Y', 'Geeft een relatie aan.','Een relatie is iedereen met wie u interactie heeft. Dit omvat bijvoorbeeld leveranciers, klanten, peroneelsleden en verkopers.','Relatie'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Geeft een relatie aan.',Help = 'Een relatie is iedereen met wie u interactie heeft. Dit omvat bijvoorbeeld leveranciers, klanten, peroneelsleden en verkopers.',Name = 'Relatie' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')), 'fr_FR', 'Y', 'Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Tiers'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a Business Partner',Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Name = 'Tiers' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'cutoff_print')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Cut-Off calculation-paramaters'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org_Without *'),
'Organization',
'',
'',
'Organizational entity within Tenant',
'S100',
0,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
20,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Cut-Off calculation-paramaters'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org_Without *'), name = 'Organization', defaultvalue = '', defaultvalue2 = '', description = 'Organizational entity within Tenant', entitytype = 'S100', fieldlength = 0, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'AD_Org_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')), 'nl_NL', 'Y', 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.','Organisatie'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Help = 'Een organisatie is een onderdeel van uw client. Voorbeelden zijn een winkel of een afdeling.',Name = 'Organisatie' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='AD_Org_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_Invoice_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Cut-Off calculation-paramaters'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_BPartner - Vendor'),
'Invoice',
'',
'',
'Invoice Identifier',
'S100',
0,
'The Invoice Document.',
40,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_Invoice_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Cut-Off calculation-paramaters'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_BPartner - Vendor'), name = 'Invoice', defaultvalue = '', defaultvalue2 = '', description = 'Invoice Identifier', entitytype = 'S100', fieldlength = 0, help = 'The Invoice Document.', seqno = 40, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_Invoice_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Invoice_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')), 'nl_NL', 'Y', 'Factuur kenmerk.','Het factuur kenmerk geeft een uniek kenmerk aan voor een factuur document.','Factuur'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Invoice_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Factuur kenmerk.',Help = 'Het factuur kenmerk geeft een uniek kenmerk aan voor een factuur document.',Name = 'Factuur' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Invoice_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Invoice_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')), 'fr_FR', 'Y', 'Invoice Identifier','The Invoice Document.','Invoice'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Invoice_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Invoice Identifier',Help = 'The Invoice Document.',Name = 'Invoice' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_Invoice_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Cut-Off calculation-paramaters')) and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Cut-Off calculation-paramaters','Cut-Off calculation-paramaters',
'P',
'',
'S100',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'Cut-Off calculation-paramaters'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Cut-Off calculation-paramaters' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Cut-Off calculation-paramaters', action = 'P', description = '', entitytype = 'S100', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Cut-Off calculation-paramaters'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Cut-Off calculation-paramaters' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Cut-Off calculation-paramaters'), 'nl_NL', 'Y', 'Cut-Off calculation','Cut-Off calculation'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Cut-Off calculation-paramaters') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Cut-Off calculation',Name = 'Cut-Off calculation' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Cut-Off calculation-paramaters') and ad_language = 'nl_NL';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Cut-Off calculation-paramaters'), 'fr_FR', 'Y', 'Calcul Cut-Off','Calcul Cut-Off'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Cut-Off calculation-paramaters') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Calcul Cut-Off',Name = 'Calcul Cut-Off' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Cut-Off calculation-paramaters') and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Report_cutoff','cutoff_print',
'R',
'',
'S100',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'cutoff_print'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Report_cutoff' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'cutoff_print', action = 'R', description = '', entitytype = 'S100', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'cutoff_print'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Report_cutoff' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Report_cutoff'), 'nl_NL', 'Y', '','Report_cutoff'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Report_cutoff') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Report_cutoff' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Report_cutoff') and ad_language = 'nl_NL';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Report_cutoff'), 'fr_FR', 'Y', '','Rapport des cut-off'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Report_cutoff') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Rapport des cut-off' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Report_cutoff') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'S100-Intégration Arco', description = 'S100-Intégration Arco', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'S100' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '7', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'S100', help = '', importtable = 'N', loadseq = 0, name = 'ZRV_CutOff', replicationtype = 'L', isactive = 'Y', isdeleteable = 'N', ishighvolume = 'N', issecurityenabled = 'N', isview = 'Y', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'ZRV_CutOff' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Cut-Off calculation-paramaters') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Cut-Off calculation-paramaters')); 

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Report_cutoff') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Report_cutoff')); 
