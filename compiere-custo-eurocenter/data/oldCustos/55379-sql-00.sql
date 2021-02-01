insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E379','55379 - Clients douteux ONLY',
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
where not exists (select 1 from AD_EntityType where EntityType = 'E379' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '55379 - Clients douteux ONLY', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E379' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'O',(select AD_Reference_ID from AD_Reference where Name = 'DoubtfulIncluded_L'),
'',
'E379',
'Only',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'O'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DoubtfulIncluded_L'), description = '', entitytype = 'E379', name = 'Only', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'O'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')), 'fr_FR', 'Y', '','Uniquement'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Uniquement' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')), 'nl_NL', 'Y', '','Uniquement'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Uniquement' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'Y',(select AD_Reference_ID from AD_Reference where Name = 'DoubtfulIncluded_L'),
'',
'E379',
'Yes',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'Y'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DoubtfulIncluded_L'), description = '', entitytype = 'E379', name = 'Yes', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'Y'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')), 'fr_FR', 'Y', '','Oui'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Oui' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')), 'nl_NL', 'Y', '','Oui'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Oui' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'N',(select AD_Reference_ID from AD_Reference where Name = 'DoubtfulIncluded_L'),
'',
'E379',
'No',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'N'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DoubtfulIncluded_L'), description = '', entitytype = 'E379', name = 'No', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'N'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')), 'fr_FR', 'Y', '','Non'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Non' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')), 'nl_NL', 'Y', '','Non'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Non' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'nl_NL';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'DoubtfulIncluded_L','',
'E379',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'DoubtfulIncluded_L' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E379', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'DoubtfulIncluded_L' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='DoubtfulIncluded_L'), 'fr_FR', 'Y', '','','DoubtfulIncluded_L'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='DoubtfulIncluded_L') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'DoubtfulIncluded_L' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='DoubtfulIncluded_L') and ad_language = 'fr_FR';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='DoubtfulIncluded_L'), 'nl_NL', 'Y', '','','DoubtfulIncluded_L'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='DoubtfulIncluded_L') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'DoubtfulIncluded_L' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='DoubtfulIncluded_L') and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'O',(select AD_Reference_ID from AD_Reference where Name = 'DoubtfulIncluded_L'),
'',
'E379',
'Only',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'O'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DoubtfulIncluded_L'), description = '', entitytype = 'E379', name = 'Only', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'O'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')), 'fr_FR', 'Y', '','Uniquement'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Uniquement' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')), 'nl_NL', 'Y', '','Uniquement'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Uniquement' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='O' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'Y',(select AD_Reference_ID from AD_Reference where Name = 'DoubtfulIncluded_L'),
'',
'E379',
'Yes',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'Y'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DoubtfulIncluded_L'), description = '', entitytype = 'E379', name = 'Yes', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'Y'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')), 'fr_FR', 'Y', '','Oui'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Oui' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')), 'nl_NL', 'Y', '','Oui'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Oui' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='Y' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'N',(select AD_Reference_ID from AD_Reference where Name = 'DoubtfulIncluded_L'),
'',
'E379',
'No',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'N'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DoubtfulIncluded_L'), description = '', entitytype = 'E379', name = 'No', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'N'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')), 'fr_FR', 'Y', '','Non'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Non' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')), 'nl_NL', 'Y', '','Non'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Non' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='N' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DoubtfulIncluded_L')) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '55379 - Clients douteux ONLY', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E379' ;
