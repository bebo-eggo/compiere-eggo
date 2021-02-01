insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E923','70923 (E923) - CODA-Ajout nouveaux champs dans I_Coda',
'',
'',
'Y',
'',
'',
'',
'Y',
'361',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'E923' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '70923 (E923) - CODA-Ajout nouveaux champs dans I_Coda', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E923' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'1',(select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'),
'',
'E923',
'Bancontact / Mister Cash',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '1'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'), description = '', entitytype = 'E923', name = 'Bancontact / Mister Cash', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '1'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'fr_FR', 'Y', '','Bancontact / Mister Cash'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Bancontact / Mister Cash' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'nl_NL', 'Y', '','Bancontact / Mister Cash'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Bancontact / Mister Cash' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'2',(select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'),
'',
'E923',
'Maestro',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'), description = '', entitytype = 'E923', name = 'Maestro', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'fr_FR', 'Y', '','Maestro'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Maestro' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'nl_NL', 'Y', '','Maestro'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Maestro' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'3',(select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'),
'',
'E923',
'Privé',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '3'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'), description = '', entitytype = 'E923', name = 'Privé', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '3'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'fr_FR', 'Y', '','Privé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Privé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'nl_NL', 'Y', '','Privé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Privé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'4',(select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'),
'',
'E923',
'TINA',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '4'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'), description = '', entitytype = 'E923', name = 'TINA', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '4'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'fr_FR', 'Y', '','TINA'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TINA' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'nl_NL', 'Y', '','TINA'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TINA' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'9',(select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'),
'',
'E923',
'Autres',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '9'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'), description = '', entitytype = 'E923', name = 'Autres', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '9'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='9' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'fr_FR', 'Y', '','Autres'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Autres' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='9' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'nl_NL', 'Y', '','Autres'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Autres' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'XX_SchemaCarte','',
'E923',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'XX_SchemaCarte' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E923', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'XX_SchemaCarte' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='XX_SchemaCarte'), 'fr_FR', 'Y', '','','XX_SchemaCarte'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='XX_SchemaCarte') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'XX_SchemaCarte' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='XX_SchemaCarte') and ad_language = 'fr_FR';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='XX_SchemaCarte'), 'nl_NL', 'Y', '','','XX_SchemaCarte'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='XX_SchemaCarte') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'XX_SchemaCarte' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='XX_SchemaCarte') and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'1',(select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'),
'',
'E923',
'Bancontact / Mister Cash',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '1'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'), description = '', entitytype = 'E923', name = 'Bancontact / Mister Cash', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '1'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'fr_FR', 'Y', '','Bancontact / Mister Cash'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Bancontact / Mister Cash' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'nl_NL', 'Y', '','Bancontact / Mister Cash'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Bancontact / Mister Cash' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='1' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'2',(select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'),
'',
'E923',
'Maestro',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'), description = '', entitytype = 'E923', name = 'Maestro', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '2'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'fr_FR', 'Y', '','Maestro'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Maestro' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'nl_NL', 'Y', '','Maestro'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Maestro' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='2' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'3',(select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'),
'',
'E923',
'Privé',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '3'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'), description = '', entitytype = 'E923', name = 'Privé', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '3'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'fr_FR', 'Y', '','Privé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Privé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'nl_NL', 'Y', '','Privé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Privé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='3' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'4',(select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'),
'',
'E923',
'TINA',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '4'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'), description = '', entitytype = 'E923', name = 'TINA', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '4'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'fr_FR', 'Y', '','TINA'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TINA' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'nl_NL', 'Y', '','TINA'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'TINA' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='4' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'9',(select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'),
'',
'E923',
'Autres',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '9'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'), description = '', entitytype = 'E923', name = 'Autres', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '9'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='9' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'fr_FR', 'Y', '','Autres'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Autres' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='9' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')), 'nl_NL', 'Y', '','Autres'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Autres' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='9' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'XX_SchemaCarte')) and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_SchemaCarte','',
'E923',
'',
'Schema Carte',
'',
'',
'',
'',
'Schema Carte',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_SchemaCarte' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E923', help = '', name = 'Schema Carte', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Schema Carte', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_SchemaCarte' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_SchemaCarte'), 'fr_FR', 'Y', '','Schéma de Carte','','','Schéma de Carte','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_SchemaCarte') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Schéma de Carte',Help = '',PO_PrintName = '',PrintName = 'Schéma de Carte',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_SchemaCarte') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_SchemaCarte'), 'nl_NL', 'Y', '','Schéma de Carte','','','Schéma de Carte','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_SchemaCarte') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Schéma de Carte',Help = '',PO_PrintName = '',PrintName = 'Schéma de Carte',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_SchemaCarte') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_Terminal','',
'E923',
'',
'Terminal',
'',
'',
'',
'',
'Terminal',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_Terminal' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E923', help = '', name = 'Terminal', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Terminal', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_Terminal' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_Terminal'), 'fr_FR', 'Y', '','No de Terminal','','','No de Terminal','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Terminal') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'No de Terminal',Help = '',PO_PrintName = '',PrintName = 'No de Terminal',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Terminal') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_Terminal'), 'nl_NL', 'Y', '','No de Terminal','','','No de Terminal','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Terminal') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'No de Terminal',Help = '',PO_PrintName = '',PrintName = 'No de Terminal',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Terminal') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_DateTrx','',
'E923',
'',
'Date Trx',
'',
'',
'',
'',
'Date Trx',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_DateTrx' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E923', help = '', name = 'Date Trx', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Date Trx', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_DateTrx' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_DateTrx'), 'fr_FR', 'Y', '','Date de transaction','','','Date de transaction','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_DateTrx') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Date de transaction',Help = '',PO_PrintName = '',PrintName = 'Date de transaction',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_DateTrx') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_DateTrx'), 'nl_NL', 'Y', '','Date de transaction','','','Date de transaction','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_DateTrx') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Date de transaction',Help = '',PO_PrintName = '',PrintName = 'Date de transaction',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_DateTrx') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_BrutAmt','',
'E923',
'',
'Brut Amt',
'',
'',
'',
'',
'Brut Amt',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_BrutAmt' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E923', help = '', name = 'Brut Amt', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Brut Amt', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_BrutAmt' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_BrutAmt'), 'fr_FR', 'Y', '','Montant Brut','','','Montant Brut','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_BrutAmt') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Montant Brut',Help = '',PO_PrintName = '',PrintName = 'Montant Brut',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_BrutAmt') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_BrutAmt'), 'nl_NL', 'Y', '','Montant Brut','','','Montant Brut','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_BrutAmt') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Montant Brut',Help = '',PO_PrintName = '',PrintName = 'Montant Brut',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_BrutAmt') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_CmsAmt','',
'E923',
'',
'Amount Commission',
'',
'',
'',
'',
'Amount Commission',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_CmsAmt' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E923', help = '', name = 'Amount Commission', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Amount Commission', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_CmsAmt' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_CmsAmt'), 'fr_FR', 'Y', '','Montant Commission','','','Montant Commission','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_CmsAmt') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Montant Commission',Help = '',PO_PrintName = '',PrintName = 'Montant Commission',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_CmsAmt') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_CmsAmt'), 'nl_NL', 'Y', '','Montant Commission','','','Montant Commission','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_CmsAmt') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Montant Commission',Help = '',PO_PrintName = '',PrintName = 'Montant Commission',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_CmsAmt') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_Projet','',
'E923',
'',
'Project Code',
'',
'',
'',
'',
'Project Code',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_Projet' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E923', help = '', name = 'Project Code', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Project Code', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_Projet' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_Projet'), 'fr_FR', 'Y', '','Code Projet','','','Code Projet','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Projet') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Code Projet',Help = '',PO_PrintName = '',PrintName = 'Code Projet',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Projet') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_Projet'), 'nl_NL', 'Y', '','Code Projet','','','Code Projet','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Projet') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Code Projet',Help = '',PO_PrintName = '',PrintName = 'Code Projet',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_Projet') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_CmsAmt',(select AD_Element_ID from AD_Element where ColumnName = 'XX_CmsAmt'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Coda'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E923',
22,
'',
'Amount Commission',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_CmsAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_CmsAmt'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Coda'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E923', fieldlength = 22, help = '', name = 'Amount Commission', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_CmsAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'fr_FR', 'Y', 'Montant Commission'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant Commission' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'nl_NL', 'Y', 'Montant Commission'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant Commission' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_Projet',(select AD_Element_ID from AD_Element where ColumnName = 'XX_Projet'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Coda'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E923',
20,
'',
'Project Code',
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
'Y',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'XX_Projet'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_Projet'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Coda'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E923', fieldlength = 20, help = '', name = 'Project Code', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'Y', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_Projet'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'fr_FR', 'Y', 'Code Projet'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code Projet' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'nl_NL', 'Y', 'Code Projet'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code Projet' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Order_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Coda'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Order',
'E923',
22,
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Coda'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Order', entitytype = 'E923', fieldlength = 22, help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', name = 'Order', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'fr_FR', 'Y', 'Ordre Vente'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ordre Vente' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'nl_NL', 'Y', 'Ordre Vente'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Ordre Vente' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_SchemaCarte',(select AD_Element_ID from AD_Element where ColumnName = 'XX_SchemaCarte'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'),
(select AD_Table_ID from AD_Table where TableName = 'I_Coda'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E923',
1,
'',
'Schema Carte',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_SchemaCarte'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_SchemaCarte'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'XX_SchemaCarte'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Coda'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E923', fieldlength = 1, help = '', name = 'Schema Carte', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_SchemaCarte'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'fr_FR', 'Y', 'Schéma de Carte'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Schéma de Carte' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'nl_NL', 'Y', 'Schéma de Carte'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Schéma de Carte' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_Terminal',(select AD_Element_ID from AD_Element where ColumnName = 'XX_Terminal'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Coda'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E923',
10,
'',
'Terminal',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_Terminal'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_Terminal'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Coda'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E923', fieldlength = 10, help = '', name = 'Terminal', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_Terminal'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'fr_FR', 'Y', 'No de Terminal'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'No de Terminal' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'nl_NL', 'Y', 'No de Terminal'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'No de Terminal' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_BrutAmt',(select AD_Element_ID from AD_Element where ColumnName = 'XX_BrutAmt'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Coda'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E923',
22,
'',
'Brut Amt',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_BrutAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_BrutAmt'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Coda'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E923', fieldlength = 22, help = '', name = 'Brut Amt', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_BrutAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'fr_FR', 'Y', 'Montant Brut'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant Brut' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'nl_NL', 'Y', 'Montant Brut'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant Brut' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_DateTrx',(select AD_Element_ID from AD_Element where ColumnName = 'XX_DateTrx'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Coda'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'E923',
22,
'',
'Date Trx',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_DateTrx'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_DateTrx'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Coda'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'E923', fieldlength = 22, help = '', name = 'Date Trx', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_DateTrx'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'fr_FR', 'Y', 'Date de transaction'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date de transaction' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')), 'nl_NL', 'Y', 'Date de transaction'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Date de transaction' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_language = 'nl_NL';

insert into AD_InfoColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,Name,AD_InfoWindow_ID, seqNo, description, help, isactive, isCentrallyMaintained, isDisplayed, isQueryCriteria, AD_Reference_ID, SelectClause, AD_Element_ID,  entitytype, isKey, isIdentifier, isRange) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_InfoColumn'),'communication structurée',(select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Info'),
150,
'',
'',
'Y',
'Y',
'Y',
'Y',
(select AD_Reference_ID from AD_Reference where Name = 'String'),
'C_Invoice.Z_Com',
(select AD_Element_ID from AD_Element where ColumnName = 'Z_Com'),
'E923',
'N',
'N',
'N'
 from dual  
where not exists (select 1 from AD_InfoColumn where Name = 'communication structurée'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Info' ));

update AD_InfoColumn set Updated = sysdate, UpdatedBy = 0, AD_InfoWindow_ID = (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Info'), seqNo = 150, description = '', help = '', isactive = 'Y', isCentrallyMaintained = 'Y', isDisplayed = 'Y', isQueryCriteria = 'Y', AD_Reference_ID = (select AD_Reference_ID from AD_Reference where Name = 'String'), SelectClause = 'C_Invoice.Z_Com', AD_Element_ID = (select AD_Element_ID from AD_Element where ColumnName = 'Z_Com'), entitytype = 'E923', isKey = 'N', isIdentifier = 'N', isRange = 'N' 
where Name = 'communication structurée'  and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Info' );

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='communication structurée' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Info' )), 'fr_FR', 'Y', '','','Com. Struct.'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='communication structurée' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Info' )) and ad_language = 'fr_FR');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Com. Struct.' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='communication structurée' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Info' )) and ad_language = 'fr_FR';

insert into AD_InfoColumn_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_InfoColumn_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_InfoColumn_ID from AD_InfoColumn where Name='communication structurée' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Info' )), 'nl_NL', 'Y', '','','Com. Struct.'
 from dual  
where not exists (select 1 from AD_InfoColumn_Trl where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='communication structurée' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Info' )) and ad_language = 'nl_NL');

update AD_InfoColumn_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Com. Struct.' where AD_InfoColumn_ID in (select AD_InfoColumn_ID from AD_InfoColumn where Name='communication structurée' and AD_InfoWindow_ID in (select AD_InfoWindow_ID from AD_InfoWindow where Name = 'Invoice Info' )) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Communication structured analysis'),
(select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')),
'Schema Carte',
'',
14,
'',
'E923',
'',
'',
691,
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
691
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Communication structured analysis'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')), name = 'Schema Carte', description = '', displaylength = 14, displaylogic = '', entitytype = 'E923', help = '', obscuretype = '', seqno = 691, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 691 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'fr_FR', 'Y', '','','Schéma de Carte'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Schéma de Carte' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'nl_NL', 'Y', '','','Schéma de Carte'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Schéma de Carte' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_SchemaCarte' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Communication structured analysis'),
(select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')),
'Date Trx',
'',
14,
'',
'E923',
'',
'',
693,
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
693
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Communication structured analysis'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')), name = 'Date Trx', description = '', displaylength = 14, displaylogic = '', entitytype = 'E923', help = '', obscuretype = '', seqno = 693, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 693 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'fr_FR', 'Y', '','','Date de transaction'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Date de transaction' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'nl_NL', 'Y', '','','Date de transaction'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Date de transaction' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Communication'),
(select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')),
'Brut Amt',
'',
14,
'',
'E923',
'',
'',
636,
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
636
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Communication'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')), name = 'Brut Amt', description = '', displaylength = 14, displaylogic = '', entitytype = 'E923', help = '', obscuretype = '', seqno = 636, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 636 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'fr_FR', 'Y', '','','Montant Brut'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Montant Brut' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'nl_NL', 'Y', '','','Montant Brut'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Montant Brut' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BrutAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Correspondance'),
(select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')),
'Order',
'Order',
14,
'',
'E923',
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
'',
539,
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
539
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Correspondance'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')), name = 'Order', description = 'Order', displaylength = 14, displaylogic = '', entitytype = 'E923', help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', obscuretype = '', seqno = 539, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 539 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'fr_FR', 'Y', 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.','Order','Order'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',Description = 'Order',Name = 'Order' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'nl_NL', 'Y', 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.','Order','Order'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',Description = 'Order',Name = 'Order' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Communication structured analysis'),
(select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')),
'Terminal',
'',
14,
'',
'E923',
'',
'',
692,
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
692
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Communication structured analysis'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')), name = 'Terminal', description = '', displaylength = 14, displaylogic = '', entitytype = 'E923', help = '', obscuretype = '', seqno = 692, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 692 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'fr_FR', 'Y', '','','No de Terminal'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'No de Terminal' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'nl_NL', 'Y', '','','No de Terminal'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'No de Terminal' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Terminal' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Correspondance'),
(select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')),
'Project Code',
'',
14,
'',
'E923',
'',
'',
535,
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
535
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Correspondance'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')), name = 'Project Code', description = '', displaylength = 14, displaylogic = '', entitytype = 'E923', help = '', obscuretype = '', seqno = 535, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 535 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'fr_FR', 'Y', '','','Code Projet'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Code Projet' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'nl_NL', 'Y', '','','Code Projet'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Code Projet' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_Projet' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Communication'),
(select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')),
'Amount Commission',
'',
14,
'',
'E923',
'',
'',
637,
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
637
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Communication'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import CODA' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import CODA')), name = 'Amount Commission', description = '', displaylength = 14, displaylogic = '', entitytype = 'E923', help = '', obscuretype = '', seqno = 637, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 637 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'fr_FR', 'Y', '','','Montant Commission'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Montant Commission' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))), 'nl_NL', 'Y', '','','Montant Commission'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Montant Commission' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_CmsAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Coda')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import CODA' and ad_window_id in (select ad_window_id from ad_window where value = 'Import CODA'))) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_BankAccount_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Import_Coda_BankStatement'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Compte bancaire',
'',
'',
'',
'E923',
10,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_BankAccount_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Coda_BankStatement'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import_Coda_BankStatement'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Compte bancaire', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'E923', fieldlength = 10, help = '', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_BankAccount_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Coda_BankStatement');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Coda_BankStatement')), 'fr_FR', 'Y', '','','Compte bancaire'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Coda_BankStatement')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Compte bancaire' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Coda_BankStatement')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Coda_BankStatement')), 'nl_NL', 'Y', '','','Compte bancaire'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Coda_BankStatement')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Compte bancaire' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Coda_BankStatement')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_BankAccount_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'ICODALinesAssignement'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Compte bancaire',
'',
'',
'',
'E923',
10,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_BankAccount_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ICODALinesAssignement'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ICODALinesAssignement'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Compte bancaire', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'E923', fieldlength = 10, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_BankAccount_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ICODALinesAssignement');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ICODALinesAssignement')), 'fr_FR', 'Y', '','','Compte bancaire'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ICODALinesAssignement')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Compte bancaire' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ICODALinesAssignement')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ICODALinesAssignement')), 'nl_NL', 'Y', '','','Compte bancaire'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ICODALinesAssignement')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Compte bancaire' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ICODALinesAssignement')) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_BankAccount_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'ZImportationCODA'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Compte bancaire',
'',
'',
'',
'E923',
10,
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_BankAccount_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZImportationCODA'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'ZImportationCODA'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Compte bancaire', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'E923', fieldlength = 10, help = '', seqno = 45, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_BankAccount_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'ZImportationCODA');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZImportationCODA')), 'fr_FR', 'Y', '','','Compte bancaire'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZImportationCODA')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Compte bancaire' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZImportationCODA')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZImportationCODA')), 'nl_NL', 'Y', '','','Compte bancaire'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZImportationCODA')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Compte bancaire' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BankAccount_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'ZImportationCODA')) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '70923 (E923) - CODA-Ajout nouveaux champs dans I_Coda', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E923' ;

