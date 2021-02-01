insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E001','E001 - POS action',
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
where not exists (select 1 from AD_EntityType where EntityType = 'E001' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'E001 - POS action', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E001' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'04',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� emporter d�s transfert de l''autre magasin',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� emporter d�s transfert de l''autre magasin', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� emporter d�s transfert de l''autre magasin'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� emporter d�s transfert de l''autre magasin' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'05',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� livrer d�s transfert de l''autre magasin',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '05'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� livrer d�s transfert de l''autre magasin', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '05'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� livrer d�s transfert de l''autre magasin'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� livrer d�s transfert de l''autre magasin' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'06',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� commander et � emporter',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '06'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� commander et � emporter', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '06'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� commander et � emporter'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� commander et � emporter' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'01',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� emporter',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� emporter', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� emporter'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� emporter' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'02',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� livrer',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� livrer', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� livrer'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� livrer' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'03',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� livrer par l''autre magasin',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� livrer par l''autre magasin', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� livrer par l''autre magasin'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� livrer par l''autre magasin' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'07',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� commander et � livrer',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '07'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� commander et � livrer', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '07'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� commander et � livrer'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� commander et � livrer' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'08',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� commander et � livrer par l''autre magasin',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '08'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� commander et � livrer par l''autre magasin', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '08'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� commander et � livrer par l''autre magasin'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� commander et � livrer par l''autre magasin' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'POSAction','',
'E001',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'POSAction' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'E001', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'POSAction' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='POSAction'), 'fr_FR', 'Y', '','','POSAction'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='POSAction') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'POSAction' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='POSAction') and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'04',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� emporter d�s transfert de l''autre magasin',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� emporter d�s transfert de l''autre magasin', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '04'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� emporter d�s transfert de l''autre magasin'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� emporter d�s transfert de l''autre magasin' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='04' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'05',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� livrer d�s transfert de l''autre magasin',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '05'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� livrer d�s transfert de l''autre magasin', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '05'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� livrer d�s transfert de l''autre magasin'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� livrer d�s transfert de l''autre magasin' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='05' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'06',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� commander et � emporter',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '06'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� commander et � emporter', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '06'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� commander et � emporter'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� commander et � emporter' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='06' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'01',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� emporter',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� emporter', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� emporter'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� emporter' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'02',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� livrer',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� livrer', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� livrer'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� livrer' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'03',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� livrer par l''autre magasin',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� livrer par l''autre magasin', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� livrer par l''autre magasin'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� livrer par l''autre magasin' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'07',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� commander et � livrer',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '07'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� commander et � livrer', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '07'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� commander et � livrer'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� commander et � livrer' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='07' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'08',(select AD_Reference_ID from AD_Reference where Name = 'POSAction'),
'',
'E001',
'� commander et � livrer par l''autre magasin',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '08'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'POSAction'), description = '', entitytype = 'E001', name = '� commander et � livrer par l''autre magasin', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '08'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')), 'fr_FR', 'Y', '','� commander et � livrer par l''autre magasin'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = '� commander et � livrer par l''autre magasin' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='08' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'POSAction')) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'E001 - POS action', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E001' ;

