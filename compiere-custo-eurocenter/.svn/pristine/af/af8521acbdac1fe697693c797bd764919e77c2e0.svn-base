insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG38','EG38 - New Broles du 1/08',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EG38' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG38 - New Broles du 1/08', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG38' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'TYPEDOC_MOVE_TRANSFERT',(select AD_Reference_ID from AD_Reference where Name = 'EGGO-CTX'),
'',
'EG38',
'Mouvement de stock inter-magasins',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'TYPEDOC_MOVE_TRANSFERT'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'EGGO-CTX'), description = '', entitytype = 'EG38', name = 'Mouvement de stock inter-magasins', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'TYPEDOC_MOVE_TRANSFERT'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='TYPEDOC_MOVE_TRANSFERT' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')), 'nl_NL', 'Y', '','Mouvement de stock'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='TYPEDOC_MOVE_TRANSFERT' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Mouvement de stock' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='TYPEDOC_MOVE_TRANSFERT' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='TYPEDOC_MOVE_TRANSFERT' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')), 'fr_FR', 'Y', '','Mouvement de stock'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='TYPEDOC_MOVE_TRANSFERT' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Mouvement de stock' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='TYPEDOC_MOVE_TRANSFERT' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'CL',(select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'),
'',
'EG38',
'Close',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'CL'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'), description = '', entitytype = 'EG38', name = 'Close', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'CL'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CL' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'nl_NL', 'Y', '','Close'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CL' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Close' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CL' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CL' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'fr_FR', 'Y', '','Cloturé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CL' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Cloturé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CL' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'RE',(select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'),
'',
'EG38',
'Reversed',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'RE'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'), description = '', entitytype = 'EG38', name = 'Reversed', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'RE'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='RE' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'nl_NL', 'Y', '','Reversed'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='RE' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Reversed' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='RE' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='RE' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'fr_FR', 'Y', '','Extourné'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='RE' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Extourné' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='RE' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'CO',(select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'),
'',
'EG38',
'Completed',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'CO'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'), description = '', entitytype = 'EG38', name = 'Completed', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'CO'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'nl_NL', 'Y', '','Completed'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Completed' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'fr_FR', 'Y', '','Achevé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Achevé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'DR',(select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'),
'',
'EG38',
'Drafted',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'DR'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'), description = '', entitytype = 'EG38', name = 'Drafted', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'DR'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='DR' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'nl_NL', 'Y', '','Drafted'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DR' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Drafted' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DR' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='DR' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'fr_FR', 'Y', '','Brouillon'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DR' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Brouillon' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DR' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'VO',(select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'),
'',
'EG38',
'Voided',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'VO'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'), description = '', entitytype = 'EG38', name = 'Voided', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'VO'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='VO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'nl_NL', 'Y', '','Void'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='VO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Void' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='VO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='VO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'fr_FR', 'Y', '','Annulé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='VO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Annulé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='VO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'IP',(select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'),
'',
'EG38',
'In Progress',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'IP'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'), description = '', entitytype = 'EG38', name = 'In Progress', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'IP'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='IP' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'nl_NL', 'Y', '','In Progress'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='IP' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'In Progress' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='IP' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='IP' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'fr_FR', 'Y', '','En Cours'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='IP' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'En Cours' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='IP' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'Fournisseur AR','',
'EG38',
'',
'T',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'Fournisseur AR' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG38', help = '', validationtype = 'T', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'Fournisseur AR' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='Fournisseur AR'), 'nl_NL', 'Y', '','','Fournisseur AR'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Fournisseur AR') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur AR' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Fournisseur AR') and ad_language = 'nl_NL';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='Fournisseur AR'), 'fr_FR', 'Y', '','','Fournisseur AR'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Fournisseur AR') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur AR' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Fournisseur AR') and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'M_Locator M_Warehouse','',
'EG38',
'',
'T',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'M_Locator M_Warehouse' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG38', help = '', validationtype = 'T', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'M_Locator M_Warehouse' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='M_Locator M_Warehouse'), 'nl_NL', 'Y', '','','M_Locator M_Warehouse'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_Locator M_Warehouse') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'M_Locator M_Warehouse' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_Locator M_Warehouse') and ad_language = 'nl_NL';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='M_Locator M_Warehouse'), 'fr_FR', 'Y', '','','M_Locator M_Warehouse'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_Locator M_Warehouse') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'M_Locator M_Warehouse' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_Locator M_Warehouse') and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'M_Locator ALL','',
'EG38',
'',
'T',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'M_Locator ALL' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG38', help = '', validationtype = 'T', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'M_Locator ALL' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='M_Locator ALL'), 'nl_NL', 'Y', '','','M_Locator ALL'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_Locator ALL') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'M_Locator ALL' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_Locator ALL') and ad_language = 'nl_NL';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='M_Locator ALL'), 'fr_FR', 'Y', '','','M_Locator ALL'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_Locator ALL') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'M_Locator ALL' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='M_Locator ALL') and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'DocStatus OV','',
'EG38',
'',
'L',
'LL',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'DocStatus OV' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG38', help = '', validationtype = 'L', vformat = 'LL', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'DocStatus OV' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='DocStatus OV'), 'nl_NL', 'Y', '','','DocStatus OV'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='DocStatus OV') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'DocStatus OV' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='DocStatus OV') and ad_language = 'nl_NL';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='DocStatus OV'), 'fr_FR', 'Y', '','','DocStatus OV'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='DocStatus OV') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'DocStatus OV' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='DocStatus OV') and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'NoAR','',
'EG38',
'',
'T',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'NoAR' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG38', help = '', validationtype = 'T', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'NoAR' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='NoAR'), 'nl_NL', 'Y', '','','NoAR'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='NoAR') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'NoAR' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='NoAR') and ad_language = 'nl_NL';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='NoAR'), 'fr_FR', 'Y', '','','NoAR'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='NoAR') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'NoAR' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='NoAR') and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'TYPEDOC_MOVE_TRANSFERT',(select AD_Reference_ID from AD_Reference where Name = 'EGGO-CTX'),
'',
'EG38',
'Mouvement de stock inter-magasins',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'TYPEDOC_MOVE_TRANSFERT'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'EGGO-CTX'), description = '', entitytype = 'EG38', name = 'Mouvement de stock inter-magasins', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'TYPEDOC_MOVE_TRANSFERT'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='TYPEDOC_MOVE_TRANSFERT' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')), 'nl_NL', 'Y', '','Mouvement de stock'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='TYPEDOC_MOVE_TRANSFERT' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Mouvement de stock' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='TYPEDOC_MOVE_TRANSFERT' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='TYPEDOC_MOVE_TRANSFERT' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')), 'fr_FR', 'Y', '','Mouvement de stock'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='TYPEDOC_MOVE_TRANSFERT' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Mouvement de stock' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='TYPEDOC_MOVE_TRANSFERT' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'EGGO-CTX')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'CL',(select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'),
'',
'EG38',
'Close',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'CL'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'), description = '', entitytype = 'EG38', name = 'Close', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'CL'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CL' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'nl_NL', 'Y', '','Close'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CL' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Close' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CL' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CL' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'fr_FR', 'Y', '','Cloturé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CL' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Cloturé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CL' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'RE',(select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'),
'',
'EG38',
'Reversed',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'RE'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'), description = '', entitytype = 'EG38', name = 'Reversed', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'RE'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='RE' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'nl_NL', 'Y', '','Reversed'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='RE' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Reversed' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='RE' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='RE' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'fr_FR', 'Y', '','Extourné'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='RE' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Extourné' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='RE' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'CO',(select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'),
'',
'EG38',
'Completed',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'CO'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'), description = '', entitytype = 'EG38', name = 'Completed', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'CO'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'nl_NL', 'Y', '','Completed'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Completed' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='CO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'fr_FR', 'Y', '','Achevé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Achevé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='CO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'DR',(select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'),
'',
'EG38',
'Drafted',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'DR'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'), description = '', entitytype = 'EG38', name = 'Drafted', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'DR'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='DR' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'nl_NL', 'Y', '','Drafted'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DR' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Drafted' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DR' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='DR' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'fr_FR', 'Y', '','Brouillon'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DR' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Brouillon' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='DR' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'VO',(select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'),
'',
'EG38',
'Voided',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'VO'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'), description = '', entitytype = 'EG38', name = 'Voided', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'VO'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='VO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'nl_NL', 'Y', '','Void'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='VO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Void' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='VO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='VO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'fr_FR', 'Y', '','Annulé'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='VO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Annulé' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='VO' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'IP',(select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'),
'',
'EG38',
'In Progress',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'IP'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'DocStatus OV'), description = '', entitytype = 'EG38', name = 'In Progress', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'IP'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='IP' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'nl_NL', 'Y', '','In Progress'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='IP' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'In Progress' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='IP' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'nl_NL';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='IP' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')), 'fr_FR', 'Y', '','En Cours'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='IP' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'En Cours' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='IP' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'DocStatus OV')) and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Maj AR','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.MajAR',
'',
'EG38',
'',
'',
'',
'Maj AR',
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
where not exists (select 1 from AD_Process where Value = 'Maj AR' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.MajAR', description = '', entitytype = 'EG38', help = '', jasperreport = '', procedurename = '', name = 'Maj AR', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Maj AR' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Maj AR'), 'nl_NL', 'Y', '','','Maj AR'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Maj AR') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Maj AR' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Maj AR') and ad_language = 'nl_NL';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Maj AR'), 'fr_FR', 'Y', '','','Maj AR'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Maj AR') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Maj AR' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Maj AR') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'MajAR','',
'EG38',
'',
'Màj AR',
'',
'',
'',
'',
'Màj AR',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'MajAR' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG38', help = '', name = 'Màj AR', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Màj AR', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'MajAR' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='MajAR'), 'nl_NL', 'Y', '','','Màj AR','','','','','Màj AR'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='MajAR') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Màj AR',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Màj AR' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='MajAR') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='MajAR'), 'fr_FR', 'Y', '','','Màj AR','','','','','Màj AR'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='MajAR') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Màj AR',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Màj AR' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='MajAR') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsAlwaysOpenDialog','',
'EG38',
'',
'Always open search box',
'',
'',
'',
'',
'Always open search box',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsAlwaysOpenDialog' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG38', help = '', name = 'Always open search box', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Always open search box', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsAlwaysOpenDialog' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsAlwaysOpenDialog'), 'nl_NL', 'Y', '','','Always open search box','','','','','Always open search box'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsAlwaysOpenDialog') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Always open search box',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Always open search box' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsAlwaysOpenDialog') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsAlwaysOpenDialog'), 'fr_FR', 'Y', '','','Always open search box','','','','','Always open search box'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsAlwaysOpenDialog') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Always open search box',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Always open search box' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsAlwaysOpenDialog') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'ZDocStatus','',
'EG38',
'',
'ZDocStatus',
'',
'',
'',
'',
'ZDocStatus',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'ZDocStatus' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG38', help = '', name = 'ZDocStatus', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'ZDocStatus', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'ZDocStatus' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZDocStatus'), 'nl_NL', 'Y', '','','ZDocStatus','','','','','ZDocStatus'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZDocStatus') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ZDocStatus',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ZDocStatus' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZDocStatus') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='ZDocStatus'), 'fr_FR', 'Y', '','','ZDocStatus','','','','','ZDocStatus'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZDocStatus') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ZDocStatus',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'ZDocStatus' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='ZDocStatus') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'M_WarehouseTo_ID','',
'EG38',
'',
'Magasin / dépôt vers',
'',
'',
'',
'',
'Magasin / dépôt vers',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'M_WarehouseTo_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG38', help = '', name = 'Magasin / dépôt vers', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Magasin / dépôt vers', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'M_WarehouseTo_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='M_WarehouseTo_ID'), 'nl_NL', 'Y', '','','Magasin / dépôt vers','','','','','Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='M_WarehouseTo_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin / dépôt vers',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Magasin / dépôt vers' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='M_WarehouseTo_ID') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='M_WarehouseTo_ID'), 'fr_FR', 'Y', '','','Magasin / dépôt vers','','','','','Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='M_WarehouseTo_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin / dépôt vers',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Magasin / dépôt vers' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='M_WarehouseTo_ID') and ad_language = 'fr_FR';

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'Fournisseur AR','C_BPartner.C_BPartner_ID in (Select C_BPartner_ID from C_Order where C_Order_ID = @Ref_Order_ID@)',
'',
'EG38',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'Fournisseur AR' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'C_BPartner.C_BPartner_ID in (Select C_BPartner_ID from C_Order where C_Order_ID = @Ref_Order_ID@)', description = '', entitytype = 'EG38', type = 'S', isactive = 'Y' 
where Name = 'Fournisseur AR' ;

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'OALiés à SO With AR','C_Order_ID in (Select co.Ref_Order_ID from ZRV_ORDERSOPOREF co where co.C_Order_ID = @C_Order_ID@   AND  ( (NVL(length (TRIM(co.AR)),0)>0 OR TRIM(co.AR) is not null) ))',
'',
'EG38',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'OALiés à SO With AR' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'C_Order_ID in (Select co.Ref_Order_ID from ZRV_ORDERSOPOREF co where co.C_Order_ID = @C_Order_ID@   AND  ( (NVL(length (TRIM(co.AR)),0)>0 OR TRIM(co.AR) is not null) ))', description = '', entitytype = 'EG38', type = 'S', isactive = 'Y' 
where Name = 'OALiés à SO With AR' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_WarehouseTo_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_WarehouseTo_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'M_Warehouse of Client'),
(select AD_Table_ID from AD_Table where TableName = 'M_MovementLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EG38',
22,
'',
'Magasin / dépôt vers',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_WarehouseTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_WarehouseTo_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'M_Warehouse of Client'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_MovementLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EG38', fieldlength = 22, help = '', name = 'Magasin / dépôt vers', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_WarehouseTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')), 'nl_NL', 'Y', 'Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Magasin / dépôt vers' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')), 'fr_FR', 'Y', 'Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Magasin / dépôt vers' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DocStatus',(select AD_Element_ID from AD_Element where ColumnName = 'DocStatus'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = '_Document Status'),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'The current status of the document',
'EG38',
2,
'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',
'Document Status',
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
where not exists (select 1 from AD_Column where ColumnName = 'DocStatus'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DocStatus'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = '_Document Status'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'The current status of the document', entitytype = 'EG38', fieldlength = 2, help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', name = 'Document Status', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DocStatus'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'nl_NL', 'Y', 'Document Status'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Document Status' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'fr_FR', 'Y', 'Statut OA'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Statut OA' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Invoice_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Invoice_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_INVOICESOPOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Invoice Identifier',
'EG38',
22,
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Invoice_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Invoice_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_INVOICESOPOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Invoice Identifier', entitytype = 'EG38', fieldlength = 22, help = 'The Invoice Document.', name = 'Invoice', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Invoice_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF')), 'nl_NL', 'Y', 'Invoice'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Invoice' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF')), 'fr_FR', 'Y', 'Facture'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Facture' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Invoice_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Invoice_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_INVOICESOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Invoice Identifier',
'EG38',
22,
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Invoice_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Invoice_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_INVOICESOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Invoice Identifier', entitytype = 'EG38', fieldlength = 22, help = 'The Invoice Document.', name = 'Invoice', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Invoice_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF')), 'nl_NL', 'Y', 'Invoice'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Invoice' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF')), 'fr_FR', 'Y', 'Invoice'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Invoice' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'MajAR',(select AD_Element_ID from AD_Element where ColumnName = 'MajAR'),
(select AD_Process_ID from AD_Process where Value = 'Maj AR'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EG38',
1,
'',
'Màj AR',
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
where not exists (select 1 from AD_Column where ColumnName = 'MajAR'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'MajAR'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Maj AR'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EG38', fieldlength = 1, help = '', name = 'Màj AR', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'MajAR'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'nl_NL', 'Y', 'Màj AR'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Màj AR' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'fr_FR', 'Y', 'Màj AR'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Màj AR' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsAlwaysOpenDialog',(select AD_Element_ID from AD_Element where ColumnName = 'IsAlwaysOpenDialog'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_Field'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EG38',
1,
'',
'Always open search box',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsAlwaysOpenDialog'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsAlwaysOpenDialog'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Field'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EG38', fieldlength = 1, help = '', name = 'Always open search box', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsAlwaysOpenDialog'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field')), 'nl_NL', 'Y', 'Always open search box'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Always open search box' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field')), 'fr_FR', 'Y', 'Always open search box'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Always open search box' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Warehouse_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Warehouse_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_MovementLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'@SQL=Select M_Warehouse_ID from AD_OrgInfo where AD_Org_ID = @AD_Org_ID@',
'Storage Warehouse and Service Point',
'EG38',
22,
'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',
'Warehouse',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_Warehouse_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Warehouse_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_MovementLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '@SQL=Select M_Warehouse_ID from AD_OrgInfo where AD_Org_ID = @AD_Org_ID@', description = 'Storage Warehouse and Service Point', entitytype = 'EG38', fieldlength = 22, help = 'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.', name = 'Warehouse', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Warehouse_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')), 'nl_NL', 'Y', 'Warehouse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Warehouse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')), 'fr_FR', 'Y', 'Warehouse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Warehouse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'1001778','Marges',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_OrderMargin')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_OrderMargin')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_OrderMargin')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderMargin'),
(select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis'),
'',
'',
'EG38',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')),
'',
50,
1,
'',
'Y',
'N',
'N',
'Y',
'N',
'N',
'N',
'@#AD_Client_ID@=1000000',
'N',
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'Y',
(select AD_Tab_ID from AD_Tab where Value = '')
 from dual  
where not exists (select 1 from AD_Tab where Value = '1001778'  and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Marges', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_OrderMargin')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_OrderMargin')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_OrderMargin')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderMargin'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis'), commitwarning = '', description = '', entitytype = 'EG38', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')), orderbyclause = '', seqno = 50, tablevel = 1, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'Y', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '@#AD_Client_ID@=1000000', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'N', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = '1001778'  and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')), 'nl_NL', 'Y', '','','','Marges'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')) and ad_language = 'nl_NL');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Marges' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')) and ad_language = 'nl_NL';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')), 'fr_FR', 'Y', '','','','Marges'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Marges' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Field_107' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Window, Tab &'||' Field_102')),
'Always open search box',
'',
1,
'',
'EG38',
'',
'',
310,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Field_107' and ad_window_id in (select ad_window_id from ad_window where value = 'Window, Tab &'||' Field_102')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Field_107' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Window, Tab &'||' Field_102')), name = 'Always open search box', description = '', displaylength = 1, displaylogic = '', entitytype = 'EG38', help = '', obscuretype = '', seqno = 310, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Field_107' and ad_window_id in (select ad_window_id from ad_window where value = 'Window, Tab &'||' Field_102'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Field_107' and ad_window_id in (select ad_window_id from ad_window where value = 'Window, Tab &'||' Field_102'))), 'nl_NL', 'Y', '','','Always open search box'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Field_107' and ad_window_id in (select ad_window_id from ad_window where value = 'Window, Tab &'||' Field_102'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Always open search box' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Field_107' and ad_window_id in (select ad_window_id from ad_window where value = 'Window, Tab &'||' Field_102'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Field_107' and ad_window_id in (select ad_window_id from ad_window where value = 'Window, Tab &'||' Field_102'))), 'fr_FR', 'Y', '','','Always open search box'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Field_107' and ad_window_id in (select ad_window_id from ad_window where value = 'Window, Tab &'||' Field_102'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Always open search box' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsAlwaysOpenDialog' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Field')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Field_107' and ad_window_id in (select ad_window_id from ad_window where value = 'Window, Tab &'||' Field_102'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Order_186' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Màj AR',
'',
0,
'@AD_Client_ID@=1000000 &'||' @C_DocTypeTarget_ID@!1001051',
'EG38',
'',
'',
560,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Order_186' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Màj AR', description = '', displaylength = 0, displaylogic = '@AD_Client_ID@=1000000 &'||' @C_DocTypeTarget_ID@!1001051', entitytype = 'EG38', help = '', obscuretype = '', seqno = 560, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_NL', 'Y', '','','Màj AR'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Màj AR' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', '','','Màj AR'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Màj AR' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MajAR' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Document Status',
'The current status of the document',
0,
'',
'EG38',
'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Document Status', description = 'The current status of the document', displaylength = 0, displaylogic = '', entitytype = 'EG38', help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_NL', 'Y', 'The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Document Status'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The current status of the document',Help = 'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',Name = 'Document Status' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', '','','Statut OA'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Statut OA' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DocStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'INVOICECLIREF' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Invoice',
'Invoice Identifier',
0,
'',
'EG38',
'The Invoice Document.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICECLIREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'INVOICECLIREF' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Invoice', description = 'Invoice Identifier', displaylength = 0, displaylogic = '', entitytype = 'EG38', help = 'The Invoice Document.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICECLIREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICECLIREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_NL', 'Y', 'Invoice Identifier','The Invoice Document.','Invoice'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICECLIREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Invoice Identifier',Help = 'The Invoice Document.',Name = 'Invoice' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICECLIREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICECLIREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'Invoice Identifier','The Invoice Document.','Facture'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICECLIREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Invoice Identifier',Help = 'The Invoice Document.',Name = 'Facture' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICECLIREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'INVOICEFOURREF' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'N°Fact. Frnr',
'Invoice Identifier',
0,
'',
'EG38',
'The Invoice Document.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICEFOURREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'INVOICEFOURREF' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'N°Fact. Frnr', description = 'Invoice Identifier', displaylength = 0, displaylogic = '', entitytype = 'EG38', help = 'The Invoice Document.', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICEFOURREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICEFOURREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_NL', 'Y', 'Invoice Identifier','The Invoice Document.','Invoice'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICEFOURREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Invoice Identifier',Help = 'The Invoice Document.',Name = 'Invoice' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICEFOURREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICEFOURREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', '','','N°Fact. Frnr'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICEFOURREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'N°Fact. Frnr' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Invoice_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_INVOICESOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'INVOICEFOURREF' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_170')),
'Magasin / dépôt vers',
'',
22,
'',
'EG38',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_170')), name = 'Magasin / dépôt vers', description = '', displaylength = 22, displaylogic = '', entitytype = 'EG38', help = '', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))), 'nl_NL', 'Y', '','','Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin / dépôt vers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))), 'fr_FR', 'Y', '','','Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin / dépôt vers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move Line_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_170')),
'Warehouse',
'Storage Warehouse and Service Point',
22,
'',
'EG38',
'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move Line_260' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_170')), name = 'Warehouse', description = 'Storage Warehouse and Service Point', displaylength = 22, displaylogic = '', entitytype = 'EG38', help = 'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))), 'nl_NL', 'Y', 'Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Warehouse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Storage Warehouse and Service Point',Help = 'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',Name = 'Warehouse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))), 'fr_FR', 'Y', 'Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Magasin / dépôt'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Storage Warehouse and Service Point',Help = 'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',Name = 'Magasin / dépôt' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Warehouse_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move Line_260' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')),
'Active',
'The record is active in the system',
1,
'',
'EG38',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = 'EG38', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'nl_NL', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'fr_FR', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Actif'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Actif' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'LineTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')),
'Line Total',
'Total line amount incl. Tax',
22,
'',
'EG38',
'Total line amount',
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'LineTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')), name = 'Line Total', description = 'Total line amount incl. Tax', displaylength = 22, displaylogic = '', entitytype = 'EG38', help = 'Total line amount', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'LineTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'LineTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'nl_NL', 'Y', 'Total line amount incl. Tax','Total line amount','Line Total'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'LineTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Total line amount incl. Tax',Help = 'Total line amount',Name = 'Line Total' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'LineTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'LineTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'fr_FR', 'Y', 'Total line amount incl. Tax','Total line amount','Total ligne'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'LineTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Total line amount incl. Tax',Help = 'Total line amount',Name = 'Total ligne' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'LineTotalAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CommercialMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')),
'Marge Commerciale',
'',
22,
'',
'EG38',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CommercialMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')), name = 'Marge Commerciale', description = '', displaylength = 22, displaylogic = '', entitytype = 'EG38', help = '', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CommercialMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CommercialMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'nl_NL', 'Y', '','','Marge Commerciale'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CommercialMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Marge Commerciale' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CommercialMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CommercialMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'fr_FR', 'Y', '','','Marge Commerciale'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CommercialMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Marge Commerciale' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CommercialMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'RealMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')),
'Marge Réelle',
'',
22,
'',
'EG38',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'RealMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')), name = 'Marge Réelle', description = '', displaylength = 22, displaylogic = '', entitytype = 'EG38', help = '', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'RealMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RealMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'nl_NL', 'Y', '','','Marge Réelle'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RealMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Marge Réelle' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RealMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RealMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'fr_FR', 'Y', '','','Marge Réelle'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RealMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Marge Réelle' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RealMargin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')),
'Movement Date',
'Date a product was moved in or out of inventory',
10,
'',
'EG38',
'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')), name = 'Movement Date', description = 'Date a product was moved in or out of inventory', displaylength = 10, displaylogic = '', entitytype = 'EG38', help = 'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'nl_NL', 'Y', 'Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.','Movement Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date a product was moved in or out of inventory',Help = 'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',Name = 'Movement Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'fr_FR', 'Y', 'Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.','Date mouvement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date a product was moved in or out of inventory',Help = 'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',Name = 'Date mouvement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MovementDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')),
'Order',
'Order',
22,
'',
'EG38',
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')), name = 'Order', description = 'Order', displaylength = 22, displaylogic = '', entitytype = 'EG38', help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'nl_NL', 'Y', 'Order','The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.','Order'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Order',Help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',Name = 'Order' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'fr_FR', 'Y', 'Order','The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.','OV'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Order',Help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',Name = 'OV' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'EG38',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = 'EG38', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'nl_NL', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CommercialMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')),
'Pct Marge Commerciale',
'',
22,
'',
'EG38',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CommercialMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')), name = 'Pct Marge Commerciale', description = '', displaylength = 22, displaylogic = '', entitytype = 'EG38', help = '', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CommercialMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CommercialMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'nl_NL', 'Y', '','','Pct Marge Commerciale'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CommercialMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Pct Marge Commerciale' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CommercialMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CommercialMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'fr_FR', 'Y', '','','Pct Marge Commerciale'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CommercialMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Pct Marge Commerciale' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CommercialMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'RealMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')),
'Pct Marge Réelle',
'',
22,
'',
'EG38',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'RealMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')), name = 'Pct Marge Réelle', description = '', displaylength = 22, displaylogic = '', entitytype = 'EG38', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'RealMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RealMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'nl_NL', 'Y', '','','Pct Marge Réelle'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RealMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Pct Marge Réelle' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RealMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RealMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'fr_FR', 'Y', '','','Pct Marge Réelle'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RealMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Pct Marge Réelle' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'RealMarginPct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_OrderStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')),
'Status Avancement',
'',
2,
'',
'EG38',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_OrderStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')), name = 'Status Avancement', description = '', displaylength = 2, displaylogic = '', entitytype = 'EG38', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_OrderStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'nl_NL', 'Y', '','','Status Avancement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Status Avancement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'fr_FR', 'Y', '','','Status Avancement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Status Avancement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'EG38',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001778' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Orders Devis')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = 'EG38', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'nl_NL', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))), 'fr_FR', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderMargin')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001778' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Orders Devis'))) and ad_language = 'fr_FR';

insert into AD_Ref_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Column_Key_ID, ad_table_id, Column_Display_ID, entitytype, orderbyclause, whereclause, isactive, isvaluedisplayed, isDisplayIdentifiers) 
select 0,0,sysdate, sysdate,0,0,(select ad_reference_id from ad_reference where name = 'AR by PO'),(select AD_Column_ID from AD_Column where columnName = 'Z_PO_ACKNOLEDGMENT_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_ARPO')),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ARPO'),
(select AD_Column_ID from AD_Column where columnName = 'ARNO' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZRV_ARPO')),
'EG38',
'',
'ZRV_ARPO.Ref_Order_ID = @Ref_Order_ID@',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Ref_Table where  ad_reference_id in (select ad_reference_id from ad_reference where name = 'AR by PO'));

insert into AD_Ref_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Column_Key_ID, ad_table_id, Column_Display_ID, entitytype, orderbyclause, whereclause, isactive, isvaluedisplayed, isDisplayIdentifiers) 
select 0,0,sysdate, sysdate,0,0,(select ad_reference_id from ad_reference where name = 'M_Locator M_Warehouse'),(select AD_Column_ID from AD_Column where columnName = 'M_Locator_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'M_Locator')),
(select AD_Table_ID from AD_Table where TableName = 'M_Locator'),
(select AD_Column_ID from AD_Column where columnName = 'Value' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'M_Locator')),
'EG38',
'',
'M_Locator.M_Warehouse_ID = @M_Warehouse_ID@',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Ref_Table where  ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Locator M_Warehouse'));

insert into AD_Ref_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Column_Key_ID, ad_table_id, Column_Display_ID, entitytype, orderbyclause, whereclause, isactive, isvaluedisplayed, isDisplayIdentifiers) 
select 0,0,sysdate, sysdate,0,0,(select ad_reference_id from ad_reference where name = 'Fournisseur AR'),(select AD_Column_ID from AD_Column where columnName = 'C_BPartner_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_BPartner')),
(select AD_Table_ID from AD_Table where TableName = 'C_BPartner'),
(select AD_Column_ID from AD_Column where columnName = 'Name' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_BPartner')),
'EG38',
'',
'C_BPartner.C_BPartner_ID in (Select C_BPartner_ID from C_Order where C_Order_ID = @Ref_Order_ID@)',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Ref_Table where  ad_reference_id in (select ad_reference_id from ad_reference where name = 'Fournisseur AR'));

insert into AD_Ref_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Column_Key_ID, ad_table_id, Column_Display_ID, entitytype, orderbyclause, whereclause, isactive, isvaluedisplayed, isDisplayIdentifiers) 
select 0,0,sysdate, sysdate,0,0,(select ad_reference_id from ad_reference where name = 'M_Locator ALL'),(select AD_Column_ID from AD_Column where columnName = 'M_Locator_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'M_Locator')),
(select AD_Table_ID from AD_Table where TableName = 'M_Locator'),
(select AD_Column_ID from AD_Column where columnName = 'Value' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'M_Locator')),
'EG38',
'',
'M_Locator.IsActive=''Y''',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Ref_Table where  ad_reference_id in (select ad_reference_id from ad_reference where name = 'M_Locator ALL'));

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Ref_Order_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Maj AR'),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'C_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'OALiés à SO With AR'),
'Referenced Order',
'',
'',
'',
'EG38',
0,
'',
10,
'',
'',
'',
'Y',
'N',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Ref_Order_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Maj AR'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'OALiés à SO With AR'), name = 'Referenced Order', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG38', fieldlength = 0, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'N', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Ref_Order_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Ref_Order_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'nl_NL', 'Y', '','','Referenced Order'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Ref_Order_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Referenced Order' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Ref_Order_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Ref_Order_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'fr_FR', 'Y', '','','Référence commande'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Ref_Order_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Référence commande' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Ref_Order_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'DateAR',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ArDate'),
(select AD_Process_ID from AD_Process where Value = 'Maj AR'),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Date AR',
'',
'',
'',
'EG38',
0,
'',
50,
'',
'',
'',
'Y',
'N',
'N',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'DateAR'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ArDate'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Maj AR'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Date AR', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG38', fieldlength = 0, help = '', seqno = 50, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'N', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'DateAR'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'nl_NL', 'Y', '','','Date AR'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Date AR' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'fr_FR', 'Y', '','','Date AR'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Date AR' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'NewNoAR',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Maj AR'),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Nouveau No AR',
'',
'',
'',
'EG38',
0,
'',
35,
'',
'',
'',
'Y',
'N',
'N',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'NewNoAR'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Maj AR'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Nouveau No AR', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG38', fieldlength = 0, help = '', seqno = 35, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'N', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'NewNoAR'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='NewNoAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'nl_NL', 'Y', '','','Nouveau No AR'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='NewNoAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nouveau No AR' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='NewNoAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='NewNoAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'fr_FR', 'Y', '','','Nouveau No AR'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='NewNoAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Nouveau No AR' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='NewNoAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Z_ArControled',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ArControled'),
(select AD_Process_ID from AD_Process where Value = 'Maj AR'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'AR Controlé',
'',
'',
'',
'EG38',
0,
'',
70,
'',
'',
'',
'Y',
'N',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Z_ArControled'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ArControled'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Maj AR'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'AR Controlé', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG38', fieldlength = 0, help = '', seqno = 70, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'N', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Z_ArControled'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_ArControled' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'nl_NL', 'Y', '','','AR Controlé'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_ArControled' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'AR Controlé' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_ArControled' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_ArControled' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'fr_FR', 'Y', '','','AR Controlé'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_ArControled' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'AR Controlé' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_ArControled' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Maj AR'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = 'Fournisseur AR'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'Fournisseur AR'),
'Fournisseur',
'',
'',
'',
'EG38',
0,
'',
20,
'',
'',
'',
'Y',
'N',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Maj AR'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Fournisseur AR'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'Fournisseur AR'), name = 'Fournisseur', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG38', fieldlength = 0, help = '', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'N', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'nl_NL', 'Y', '','','Fournisseur'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'fr_FR', 'Y', '','','Fournisseur'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Création AR'),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = 'Fournisseur AR'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'Fournisseur AR'),
'Fournisseur',
'@SQL=SELECT C_BPartner_ID from C_ORDER where C_Order_ID = @Ref_Order_ID@',
'',
'',
'EG38',
0,
'',
15,
'',
'',
'',
'Y',
'N',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Création AR'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Fournisseur AR'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'Fournisseur AR'), name = 'Fournisseur', defaultvalue = '@SQL=SELECT C_BPartner_ID from C_ORDER where C_Order_ID = @Ref_Order_ID@', defaultvalue2 = '', description = '', entitytype = 'EG38', fieldlength = 0, help = '', seqno = 15, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'N', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'C_BPartner_ID'  and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR')), 'nl_NL', 'Y', '','','Fournisseur'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR')), 'fr_FR', 'Y', '','','Fournisseur'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Fournisseur' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='C_BPartner_ID' and ad_process_id in (select ad_process_id from ad_process where value = 'Création AR')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'NoAR',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'Maj AR'),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AR by PO'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'No AR',
'',
'',
'',
'EG38',
0,
'',
30,
'',
'',
'',
'Y',
'N',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'NoAR'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Maj AR'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AR by PO'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'No AR', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG38', fieldlength = 0, help = '', seqno = 30, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'N', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'NoAR'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='NoAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'nl_NL', 'Y', '','','No AR'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='NoAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'No AR' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='NoAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='NoAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'fr_FR', 'Y', '','','No AR'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='NoAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'No AR' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='NoAR' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'ArAmt',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ArAmt'),
(select AD_Process_ID from AD_Process where Value = 'Maj AR'),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Montant AR',
'',
'',
'',
'EG38',
0,
'',
40,
'',
'',
'',
'Y',
'N',
'N',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'ArAmt'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ArAmt'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Maj AR'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Montant AR', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG38', fieldlength = 0, help = '', seqno = 40, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'N', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'ArAmt'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ArAmt' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'nl_NL', 'Y', '','','ARAMT'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ArAmt' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ARAMT' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ArAmt' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ArAmt' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'fr_FR', 'Y', '','','Montant AR'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ArAmt' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant AR' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ArAmt' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Z_ArMain',(select AD_Element_ID from AD_Element where ColumnName = 'Z_ArMain'),
(select AD_Process_ID from AD_Process where Value = 'Maj AR'),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'AR Principal',
'Y',
'',
'',
'EG38',
0,
'',
60,
'',
'',
'',
'Y',
'N',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Z_ArMain'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_ArMain'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Maj AR'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'AR Principal', defaultvalue = 'Y', defaultvalue2 = '', description = '', entitytype = 'EG38', fieldlength = 0, help = '', seqno = 60, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'N', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Z_ArMain'  and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_ArMain' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'nl_NL', 'Y', '','','Z_ArMain'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_ArMain' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_ArMain' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_ArMain' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_ArMain' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')), 'fr_FR', 'Y', '','','AR Principal de la commande'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_ArMain' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'AR Principal de la commande' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_ArMain' and ad_process_id in (select ad_process_id from ad_process where value = 'Maj AR')) and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EGGO_NOT_InTransit','EG38',
'Impossible de traiter, le transfert n''est pas en transit !',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EGGO_NOT_InTransit' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'EG38', msgtext = 'Impossible de traiter, le transfert n''est pas en transit !', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EGGO_NOT_InTransit' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EGGO_NOT_InTransit'), 'nl_NL', 'Y', 'Impossible de traiter, le transfert n''est pas en transit !',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_NOT_InTransit') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Impossible de traiter, le transfert n''est pas en transit !',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_NOT_InTransit') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EGGO_NOT_InTransit'), 'fr_FR', 'Y', 'Impossible de traiter, le transfert n''est pas en transit !',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_NOT_InTransit') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Impossible de traiter, le transfert n''est pas en transit !',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_NOT_InTransit') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EGGO_AR_MAIN_EXIST','EG38',
'Il existe déjà un AR Principal pour l''OA "$NoOA$" !',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EGGO_AR_MAIN_EXIST' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'EG38', msgtext = 'Il existe déjà un AR Principal pour l''OA "$NoOA$" !', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EGGO_AR_MAIN_EXIST' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EGGO_AR_MAIN_EXIST'), 'nl_NL', 'Y', 'Il existe déjà un AR Principal pour l''OA "$NoOA$" !',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_AR_MAIN_EXIST') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Il existe déjà un AR Principal pour l''OA "$NoOA$" !',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_AR_MAIN_EXIST') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EGGO_AR_MAIN_EXIST'), 'fr_FR', 'Y', 'Il existe déjà un AR Principal pour l''OA "$NoOA$" !',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_AR_MAIN_EXIST') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Il existe déjà un AR Principal pour l''OA "$NoOA$" !',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_AR_MAIN_EXIST') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG38 - New Broles du 1/08', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG38' ;

