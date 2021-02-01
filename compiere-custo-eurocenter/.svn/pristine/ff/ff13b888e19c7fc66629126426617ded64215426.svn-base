insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC34','EC34 - Liste livreur vente WEB',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EC34' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC34 - Liste livreur vente WEB', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC34' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'2',(select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'),
'',
'EC34',
'UPS',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'), description = '', entitytype = 'EC34', name = 'UPS', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'nl_NL', 'Y', '','UPS'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'UPS' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'fr_FR', 'Y', '','UPS'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'UPS' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'3',(select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'),
'',
'EC34',
'DPD',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '3'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'), description = '', entitytype = 'EC34', name = 'DPD', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '3'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'nl_NL', 'Y', '','DPD'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'DPD' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'fr_FR', 'Y', '','DPD'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'DPD' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'0',(select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'),
'',
'EC34',
' ',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '0'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'), description = '', entitytype = 'EC34', name = ' ', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '0'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='0' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'nl_NL', 'Y', '',' '
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='0' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = ' ' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='0' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='0' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'fr_FR', 'Y', '',' '
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='0' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = ' ' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='0' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'1',(select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'),
'',
'EC34',
'TNPS',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '1'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'), description = '', entitytype = 'EC34', name = 'TNPS', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '1'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'nl_NL', 'Y', '','TNPS'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TNPS' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'fr_FR', 'Y', '','TNPS'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TNPS' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'WEB_DELIVERY','',
'EC34',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'WEB_DELIVERY' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC34', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'WEB_DELIVERY' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='WEB_DELIVERY'), 'nl_NL', 'Y', '','','WEB_DELIVERY'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='WEB_DELIVERY') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'WEB_DELIVERY' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='WEB_DELIVERY') and ad_language = 'nl_NL';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='WEB_DELIVERY'), 'fr_FR', 'Y', '','','Livreur'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='WEB_DELIVERY') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Livreur' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='WEB_DELIVERY') and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'2',(select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'),
'',
'EC34',
'UPS',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'), description = '', entitytype = 'EC34', name = 'UPS', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'nl_NL', 'Y', '','UPS'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'UPS' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'fr_FR', 'Y', '','UPS'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'UPS' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'3',(select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'),
'',
'EC34',
'DPD',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '3'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'), description = '', entitytype = 'EC34', name = 'DPD', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '3'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'nl_NL', 'Y', '','DPD'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'DPD' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'fr_FR', 'Y', '','DPD'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'DPD' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'0',(select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'),
'',
'EC34',
' ',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '0'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'), description = '', entitytype = 'EC34', name = ' ', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '0'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='0' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'nl_NL', 'Y', '',' '
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='0' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = ' ' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='0' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='0' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'fr_FR', 'Y', '',' '
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='0' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = ' ' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='0' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'1',(select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'),
'',
'EC34',
'TNPS',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '1'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'), description = '', entitytype = 'EC34', name = 'TNPS', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '1'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'nl_NL', 'Y', '','TNPS'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TNPS' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')), 'fr_FR', 'Y', '','TNPS'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TNPS' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'WEB_DELIVERY')) and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_Livreur','',
'EC34',
'',
'Livreur',
'',
'',
'',
'',
'Livreur',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_Livreur' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC34', help = '', name = 'Livreur', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Livreur', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_Livreur' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_Livreur'), 'nl_NL', 'Y', '','','Livreur','','','','','Livreur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_Livreur') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Livreur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Livreur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_Livreur') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_Livreur'), 'fr_FR', 'Y', '','','Livreur','','','','','Livreur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_Livreur') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Livreur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Livreur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_Livreur') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'BDV_R_MailText_ID','',
'EC34',
'',
'Modèle email vente',
'',
'',
'',
'',
'Modèle email vente',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'BDV_R_MailText_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC34', help = '', name = 'Modèle email vente', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Modèle email vente', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'BDV_R_MailText_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='BDV_R_MailText_ID'), 'nl_NL', 'Y', '','','Modèle email vente','','','','','Modèle email vente'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='BDV_R_MailText_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Modèle email vente',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Modèle email vente' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='BDV_R_MailText_ID') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='BDV_R_MailText_ID'), 'fr_FR', 'Y', '','','Modèle email vente','','','','','Modèle email vente'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='BDV_R_MailText_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Modèle email vente',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Modèle email vente' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='BDV_R_MailText_ID') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'BDV_R_MailText_ID',(select AD_Element_ID from AD_Element where ColumnName = 'BDV_R_MailText_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'R_MailText'),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'0',
'',
'EC34',
22,
'',
'Modèle email vente',
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
where not exists (select 1 from AD_Column where ColumnName = 'BDV_R_MailText_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'BDV_R_MailText_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'R_MailText'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '0', description = '', entitytype = 'EC34', fieldlength = 22, help = '', name = 'Modèle email vente', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'BDV_R_MailText_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'nl_NL', 'Y', 'Modèle email vente'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modèle email vente' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'fr_FR', 'Y', 'Modèle email vente'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modèle email vente' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Country_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Country_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_Country No Summary'),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'0',
'Country',
'EC34',
22,
'The Country defines a Country.  Each Country must be defined before it can be used in any document.',
'Country',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Country_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Country_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_Country No Summary'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '0', description = 'Country', entitytype = 'EC34', fieldlength = 22, help = 'The Country defines a Country.  Each Country must be defined before it can be used in any document.', name = 'Country', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Country_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'nl_NL', 'Y', 'Land'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Land' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'fr_FR', 'Y', 'Pays'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Pays' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_Livreur',(select AD_Element_ID from AD_Element where ColumnName = 'Z_Livreur'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'),
(select AD_Table_ID from AD_Table where TableName = 'C_OrderLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC34',
1,
'',
'Livreur',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_Livreur'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_Livreur'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'WEB_DELIVERY'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_OrderLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC34', fieldlength = 1, help = '', name = 'Livreur', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_Livreur'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')), 'nl_NL', 'Y', 'Livreur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Livreur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')), 'fr_FR', 'Y', 'Livreur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Livreur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Message_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Message_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_Message'),
(select AD_Table_ID from AD_Table where TableName = 'Z_S_S_Famille'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'System Message',
'EC34',
22,
'Information and Error messages',
'Message',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Message_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Message_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_Message'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_S_S_Famille'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'System Message', entitytype = 'EC34', fieldlength = 22, help = 'Information and Error messages', name = 'Message', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Message_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')), 'nl_NL', 'Y', 'Melding'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Melding' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')), 'fr_FR', 'Y', 'Message'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Message' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sous_sous_famille' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')),
'Message',
'System Message',
22,
'',
'EC34',
'Information and Error messages',
'',
0,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sous_sous_famille' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product Category_144')), name = 'Message', description = 'System Message', displaylength = 22, displaylogic = '', entitytype = 'EC34', help = 'Information and Error messages', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'nl_NL', 'Y', 'Systeem Melding.','Informatie- en foutmeldingen.','Melding'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Systeem Melding.',Help = 'Informatie- en foutmeldingen.',Name = 'Melding' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))), 'fr_FR', 'Y', 'Message système','Messages d''informations et d''erreurs envoyés par le système','Message'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Message système',Help = 'Messages d''informations et d''erreurs envoyés par le système',Name = 'Message' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Message_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_S_S_Famille')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous_sous_famille' and ad_window_id in (select ad_window_id from ad_window where value = 'Product Category_144'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Order Line_187' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Livreur',
'',
1,
'',
'EC34',
'',
'',
490,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Order Line_187' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Livreur', description = '', displaylength = 1, displaylogic = '', entitytype = 'EC34', help = '', obscuretype = '', seqno = 490, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_NL', 'Y', '','','Livreur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Livreur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', '','','Livreur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Livreur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_Livreur' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order Line_187' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'),
(select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'Mail Template',
'Text templates for mailings',
22,
'',
'EC34',
'The Mail Template indicates the mail template for return messages. Mail text can include variables.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br> So, @Name@ would resolve into the User name (if user is defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br> For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.',
'',
140,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'Mail Template', description = 'Text templates for mailings', displaylength = 22, displaylogic = '', entitytype = 'EC34', help = 'The Mail Template indicates the mail template for return messages. Mail text can include variables.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br> So, @Name@ would resolve into the User name (if user is defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br> For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_NL', 'Y', '','',''
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = '' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', 'Modèle de texte d''Email','Indique le modèle de mail utilisé pour la réponse','Modèle Email SAV'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Modèle de texte d''Email',Help = 'Indique le modèle de mail utilisé pour la réponse',Name = 'Modèle Email SAV' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'),
(select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'Modèle Email Vente',
'',
22,
'',
'EC34',
'',
'',
130,
0,
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'General'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'Modèle Email Vente', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC34', help = '', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_NL', 'Y', '','','Modèle email vente'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Modèle email vente' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','Modèle Email Vente'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Modèle Email Vente' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'BDV_R_MailText_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'Country',
'Country',
22,
'',
'EC34',
'The Country defines a Country.  Each Country must be defined before it can be used in any document.',
'',
141,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'Country', description = 'Country', displaylength = 22, displaylogic = '', entitytype = 'EC34', help = 'The Country defines a Country.  Each Country must be defined before it can be used in any document.', obscuretype = '', seqno = 141, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_NL', 'Y', 'Land','Het land geeft een land aan. Elk land moet gedefinieerd zijn voordat het kan worden gebruikt in een document.','Land'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Land',Help = 'Het land geeft een land aan. Elk land moet gedefinieerd zijn voordat het kan worden gebruikt in een document.',Name = 'Land' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', 'Pays','Indique le pays.  le code d''un pays doit être créé avant d''être utilisé sur un document','Pays'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Pays',Help = 'Indique le pays.  le code d''un pays doit être créé avant d''être utilisé sur un document',Name = 'Pays' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Country_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC34 - Liste livreur vente WEB', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC34' ;

