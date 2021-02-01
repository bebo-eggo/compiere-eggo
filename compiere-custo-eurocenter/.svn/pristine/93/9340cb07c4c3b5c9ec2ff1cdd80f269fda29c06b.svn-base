insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2PCC','2PCC - Réconciliation factures/OA/réceptions',
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
where not exists (select 1 from AD_EntityType where EntityType = '2PCC' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2PCC - Réconciliation factures/OA/réceptions', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2PCC' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'9A',(select AD_Reference_ID from AD_Reference where Name = 'MatchType'),
'',
'2PCC',
'Tout',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '9A'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'MatchType'), description = '', entitytype = '2PCC', name = 'Tout', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '9A'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='9A' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'fr_FR', 'Y', '','Tout'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9A' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Tout' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9A' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='9A' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'nl_NL', 'Y', '','Tout'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9A' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Tout' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9A' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'2R',(select AD_Reference_ID from AD_Reference where Name = 'MatchType'),
'',
'2PCC',
'Réceptions',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '2R'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'MatchType'), description = '', entitytype = '2PCC', name = 'Réceptions', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '2R'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2R' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'fr_FR', 'Y', '','Réceptions'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2R' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Réceptions' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2R' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2R' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'nl_NL', 'Y', '','Réceptions'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2R' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Réceptions' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2R' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'1O',(select AD_Reference_ID from AD_Reference where Name = 'MatchType'),
'',
'2PCC',
'OA',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '1O'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'MatchType'), description = '', entitytype = '2PCC', name = 'OA', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '1O'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'fr_FR', 'Y', '','OA'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'OA' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'nl_NL', 'Y', '','OA'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'OA' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'3F',(select AD_Reference_ID from AD_Reference where Name = 'MatchType'),
'',
'2PCC',
'Factures',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '3F'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'MatchType'), description = '', entitytype = '2PCC', name = 'Factures', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '3F'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'fr_FR', 'Y', '','Factures'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Factures' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'nl_NL', 'Y', '','Factures'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Factures' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'MatchType','',
'2PCC',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'MatchType' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2PCC', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'MatchType' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='MatchType'), 'fr_FR', 'Y', '','','MatchType'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='MatchType') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'MatchType' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='MatchType') and ad_language = 'fr_FR';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='MatchType'), 'nl_NL', 'Y', '','','MatchType'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='MatchType') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'MatchType' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='MatchType') and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'9A',(select AD_Reference_ID from AD_Reference where Name = 'MatchType'),
'',
'2PCC',
'Tout',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '9A'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'MatchType'), description = '', entitytype = '2PCC', name = 'Tout', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '9A'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='9A' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'fr_FR', 'Y', '','Tout'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9A' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Tout' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9A' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='9A' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'nl_NL', 'Y', '','Tout'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9A' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Tout' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9A' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'2R',(select AD_Reference_ID from AD_Reference where Name = 'MatchType'),
'',
'2PCC',
'Réceptions',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '2R'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'MatchType'), description = '', entitytype = '2PCC', name = 'Réceptions', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '2R'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2R' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'fr_FR', 'Y', '','Réceptions'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2R' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Réceptions' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2R' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2R' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'nl_NL', 'Y', '','Réceptions'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2R' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Réceptions' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2R' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'1O',(select AD_Reference_ID from AD_Reference where Name = 'MatchType'),
'',
'2PCC',
'OA',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '1O'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'MatchType'), description = '', entitytype = '2PCC', name = 'OA', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '1O'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'fr_FR', 'Y', '','OA'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'OA' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'nl_NL', 'Y', '','OA'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'OA' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'3F',(select AD_Reference_ID from AD_Reference where Name = 'MatchType'),
'',
'2PCC',
'Factures',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '3F'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'MatchType'), description = '', entitytype = '2PCC', name = 'Factures', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '3F'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'fr_FR', 'Y', '','Factures'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Factures' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')), 'nl_NL', 'Y', '','Factures'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Factures' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3F' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'MatchType')) and ad_language = 'nl_NL';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Exclure OA/Recpet/Fact','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'',
'',
'2PCC',
'',
'',
'ZP_MATCHING_01',
'Exclure OA/Recpetions/Factures',
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
where not exists (select 1 from AD_Process where Value = 'Exclure OA/Recpet/Fact' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = '', description = '', entitytype = '2PCC', help = '', jasperreport = '', procedurename = 'ZP_MATCHING_01', name = 'Exclure OA/Recpetions/Factures', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Exclure OA/Recpet/Fact' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Exclure OA/Recpet/Fact'), 'fr_FR', 'Y', 'Exclure OA/Recpetions/Factures','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Exclure OA/Recpet/Fact') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Exclure OA/Recpetions/Factures',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Exclure OA/Recpet/Fact') and ad_language = 'fr_FR';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Exclure OA/Recpet/Fact'), 'nl_NL', 'Y', 'Exclure OA/Recpetions/Factures','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Exclure OA/Recpet/Fact') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Exclure OA/Recpetions/Factures',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Exclure OA/Recpet/Fact') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'MatchType','',
'2PCC',
'',
'Type',
'',
'',
'',
'',
'Type',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'MatchType' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2PCC', help = '', name = 'Type', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Type', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'MatchType' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='MatchType'), 'fr_FR', 'Y', '','Type','','','Type','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='MatchType') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Type',Help = '',PO_PrintName = '',PrintName = 'Type',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='MatchType') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='MatchType'), 'nl_NL', 'Y', '','Type','','','Type','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='MatchType') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Type',Help = '',PO_PrintName = '',PrintName = 'Type',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='MatchType') and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Date',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Exclure OA/Recpet/Fact'),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Date butoir',
'',
'',
'',
'2PCC',
7,
'',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'Date'  and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Exclure OA/Recpet/Fact'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Date butoir', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = '2PCC', fieldlength = 7, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Date'  and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Date' and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact')), 'fr_FR', 'Y', '','','Date butoir'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Date' and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Date butoir' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Date' and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Date' and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact')), 'nl_NL', 'Y', '','','Date butoir'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Date' and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Date butoir' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Date' and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'MatchType',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Exclure OA/Recpet/Fact'),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'MatchType'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Type',
'9A',
'',
'',
'2PCC',
0,
'',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'MatchType'  and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Exclure OA/Recpet/Fact'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'MatchType'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Type', defaultvalue = '9A', defaultvalue2 = '', description = '', entitytype = '2PCC', fieldlength = 0, help = '', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'MatchType'  and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='MatchType' and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact')), 'fr_FR', 'Y', '','','Type'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='MatchType' and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Type' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='MatchType' and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='MatchType' and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact')), 'nl_NL', 'Y', '','','Type'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='MatchType' and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Type' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='MatchType' and ad_process_id in (select ad_process_id from ad_process where value = 'Exclure OA/Recpet/Fact')) and ad_language = 'nl_NL';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Exclure OA/Recpet/Fact','Exclure OA/Recpetions/Factures',
'P',
'',
'2PCC',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = 'Exclure OA/Recpet/Fact'),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Exclure OA/Recpet/Fact' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Exclure OA/Recpetions/Factures', action = 'P', description = '', entitytype = '2PCC', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Exclure OA/Recpet/Fact'), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Exclure OA/Recpet/Fact' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Exclure OA/Recpet/Fact'), 'fr_FR', 'Y', '','Exclusion OA/Réceptions/Factures'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Exclure OA/Recpet/Fact') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Exclusion OA/Réceptions/Factures' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Exclure OA/Recpet/Fact') and ad_language = 'fr_FR';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Exclure OA/Recpet/Fact'), 'nl_NL', 'Y', '','Exclusion OA/Réceptions/Factures'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Exclure OA/Recpet/Fact') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Exclusion OA/Réceptions/Factures' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Exclure OA/Recpet/Fact') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2PCC - Réconciliation factures/OA/réceptions', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2PCC' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Exclure OA/Recpet/Fact') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Exclure OA/Recpet/Fact')); 

