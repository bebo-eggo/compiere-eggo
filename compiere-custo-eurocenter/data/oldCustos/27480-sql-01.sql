insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC08','EC08-Import Min-Max',
'',
'',
'Y',
'',
'',
'',
'N',
'3.6.1',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'EC08' );

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'TypeMagasinList','',
'EC08',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'TypeMagasinList' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC08-Import Min-Max', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.6.1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC08' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'P',(select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'),
'',
'EC08',
'Small',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'P'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'), description = '', entitytype = 'EC08', name = 'Small', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'P'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='P' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')), 'nl_BE', 'Y', '','Small'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='P' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Small' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='P' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='P' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')), 'fr_FR', 'Y', '','Petit'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='P' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Petit' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='P' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'G',(select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'),
'',
'EC08',
'Big',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'G'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'), description = '', entitytype = 'EC08', name = 'Big', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'G'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='G' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')), 'nl_BE', 'Y', '','Big'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='G' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Big' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='G' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='G' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')), 'fr_FR', 'Y', '','Grand'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='G' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Grand' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='G' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'M',(select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'),
'',
'EC08',
'middle',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'M'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'), description = '', entitytype = 'EC08', name = 'middle', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'M'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')), 'nl_BE', 'Y', '','middle'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'middle' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')), 'fr_FR', 'Y', '','Moyen'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Moyen' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'fr_FR';

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC08', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'TypeMagasinList' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='TypeMagasinList'), 'nl_BE', 'Y', '','','TypeMagasinList'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='TypeMagasinList') and ad_language = 'nl_BE');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'TypeMagasinList' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='TypeMagasinList') and ad_language = 'nl_BE';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='TypeMagasinList'), 'fr_FR', 'Y', '','','TypeMagasinList'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='TypeMagasinList') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'TypeMagasinList' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='TypeMagasinList') and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'P',(select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'),
'',
'EC08',
'Small',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'P'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'), description = '', entitytype = 'EC08', name = 'Small', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'P'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='P' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')), 'nl_BE', 'Y', '','Small'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='P' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Small' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='P' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='P' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')), 'fr_FR', 'Y', '','Petit'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='P' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Petit' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='P' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'G',(select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'),
'',
'EC08',
'Big',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'G'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'), description = '', entitytype = 'EC08', name = 'Big', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'G'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='G' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')), 'nl_BE', 'Y', '','Big'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='G' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Big' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='G' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='G' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')), 'fr_FR', 'Y', '','Grand'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='G' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Grand' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='G' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'M',(select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'),
'',
'EC08',
'middle',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'M'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'), description = '', entitytype = 'EC08', name = 'middle', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'M'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')), 'nl_BE', 'Y', '','middle'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'middle' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')), 'fr_FR', 'Y', '','Moyen'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Moyen' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='M' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'TypeMagasinList')) and ad_language = 'fr_FR';

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'Import Replenish','Import Replenish',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'Import Replenish',
'EC08',
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
where not exists (select 1 from AD_Window where Value = 'Import Replenish' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Import Replenish', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = 'Import Replenish', entitytype = 'EC08', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'Import Replenish' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Import Replenish'), 'nl_BE', 'Y', 'Import Replenish','','Import Replenish'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Import Replenish') and ad_language = 'nl_BE');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Import Replenish',Help = '',Name = 'Import Replenish' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Import Replenish') and ad_language = 'nl_BE';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Import Replenish'), 'fr_FR', 'Y', 'Import réapprovisionnement','','Import réapprovisionnement'
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Import Replenish') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Import réapprovisionnement',Help = '',Name = 'Import réapprovisionnement' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Import Replenish') and ad_language = 'fr_FR';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, ischangelog, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'I_Replenish','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'EC08',
'',
'N',
0,
'I_Replenish',
'L',
'Y',
'N',
'Y',
'N',
'N',
'N',
(select AD_Window_ID from AD_Window where Value = 'Import Replenish'),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'I_Replenish' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'EC08', help = '', importtable = 'N', loadseq = 0, name = 'I_Replenish', replicationtype = 'L', isactive = 'Y', ischangelog = 'N', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Import Replenish'), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'I_Replenish' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='I_Replenish'), 'nl_BE', 'Y', 'I_Replenish'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_Replenish') and ad_language = 'nl_BE');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'I_Replenish' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_Replenish') and ad_language = 'nl_BE';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='I_Replenish'), 'fr_FR', 'Y', 'I_Replenish'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_Replenish') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'I_Replenish' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='I_Replenish') and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'Import_Replenish','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'org.compiere.process.ImportReplenish',
'',
'EC08',
'',
'',
'',
'Import Replenish',
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
where not exists (select 1 from AD_Process where Value = 'Import_Replenish' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'org.compiere.process.ImportReplenish', description = '', entitytype = 'EC08', help = '', jasperreport = '', procedurename = '', name = 'Import Replenish', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'Import_Replenish' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Import_Replenish'), 'nl_BE', 'Y', '','','Import Replenish'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_Replenish') and ad_language = 'nl_BE');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import Replenish' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_Replenish') and ad_language = 'nl_BE';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='Import_Replenish'), 'fr_FR', 'Y', '','','Import réapprovisionnement'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_Replenish') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Import réapprovisionnement' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='Import_Replenish') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Exists','',
'EC08',
'',
'Exists',
'',
'',
'',
'',
'Exists',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Exists' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC08', help = '', name = 'Exists', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Exists', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Exists' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Exists'), 'nl_BE', 'Y', '','','Exists','','','','','Exists'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Exists') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Exists',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Exists' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Exists') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Exists'), 'fr_FR', 'Y', '','','Existe','','','','','Existe'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Exists') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Existe',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Existe' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Exists') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'TypeMagasin','Type de magasin',
'EC08',
'',
'Type de magasin',
'',
'',
'',
'',
'Type de magasin',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'TypeMagasin' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Type de magasin', entitytype = 'EC08', help = '', name = 'Type de magasin', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Type de magasin', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'TypeMagasin' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TypeMagasin'), 'nl_BE', 'Y', 'Type de magasin','','Type de magasin','','','','','Type de magasin'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TypeMagasin') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type de magasin',Help = '',Name = 'Type de magasin',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Type de magasin' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TypeMagasin') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='TypeMagasin'), 'fr_FR', 'Y', 'Type de magasin','','Type de magasin','','','','','Type de magasin'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TypeMagasin') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type de magasin',Help = '',Name = 'Type de magasin',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Type de magasin' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='TypeMagasin') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Value_M_Product_Category','',
'EC08',
'',
'Code Famille',
'',
'',
'',
'',
'Code Famille',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Value_M_Product_Category' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC08', help = '', name = 'Code Famille', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Code Famille', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Value_M_Product_Category' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_M_Product_Category'), 'nl_BE', 'Y', '','','Code Famille','','','','','Code Famille'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_M_Product_Category') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code Famille',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Code Famille' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_M_Product_Category') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_M_Product_Category'), 'fr_FR', 'Y', '','','Code Famille','','','','','Code Famille'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_M_Product_Category') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code Famille',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Code Famille' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_M_Product_Category') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Value_M_Product','',
'EC08',
'',
'Code article',
'',
'',
'',
'',
'Code article',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Value_M_Product' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC08', help = '', name = 'Code article', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Code article', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Value_M_Product' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_M_Product'), 'nl_BE', 'Y', '','','Code article','','','','','Code article'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_M_Product') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code article',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Code article' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_M_Product') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_M_Product'), 'fr_FR', 'Y', '','','Code article','','','','','Code article'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_M_Product') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code article',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Code article' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_M_Product') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Value_TypeMagasin','',
'EC08',
'',
'Value TypeMagasin',
'',
'',
'',
'',
'Value TypeMagasin',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Value_TypeMagasin' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC08', help = '', name = 'Value TypeMagasin', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Value TypeMagasin', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Value_TypeMagasin' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_TypeMagasin'), 'nl_BE', 'Y', '','','Value TypeMagasin','','','','','Value TypeMagasin'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_TypeMagasin') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value TypeMagasin',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Value TypeMagasin' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_TypeMagasin') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_TypeMagasin'), 'fr_FR', 'Y', '','','Valeur de Type de magasin','','','','','Valeur de Type de magasin'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_TypeMagasin') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valeur de Type de magasin',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Valeur de Type de magasin' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_TypeMagasin') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Value_Org','',
'EC08',
'',
'Code magasin',
'',
'',
'',
'',
'Code magasin',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Value_Org' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC08', help = '', name = 'Code magasin', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Code magasin', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Value_Org' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_Org'), 'nl_BE', 'Y', '','','Code magasin','','','','','Code magasin'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Org') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code magasin',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Code magasin' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Org') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Value_Org'), 'fr_FR', 'Y', '','','Code magasin','','','','','Code magasin'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Org') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code magasin',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Code magasin' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Value_Org') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'I_Replenish_ID','',
'EC08',
'',
'I_Replenish_ID',
'',
'',
'',
'',
'I_Replenish_ID',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'I_Replenish_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC08', help = '', name = 'I_Replenish_ID', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'I_Replenish_ID', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'I_Replenish_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='I_Replenish_ID'), 'nl_BE', 'Y', '','','I_Replenish_ID','','','','','I_Replenish_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_Replenish_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'I_Replenish_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'I_Replenish_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_Replenish_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='I_Replenish_ID'), 'fr_FR', 'Y', '','','I_Replenish_ID','','','','','I_Replenish_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_Replenish_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'I_Replenish_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'I_Replenish_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='I_Replenish_ID') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value_TypeMagasin',(select AD_Element_ID from AD_Element where ColumnName = 'Value_TypeMagasin'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC08',
1,
'',
'Value TypeMagasin',
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
where not exists (select 1 from AD_Column where ColumnName = 'Value_TypeMagasin'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value_TypeMagasin'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC08', fieldlength = 1, help = '', name = 'Value TypeMagasin', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value_TypeMagasin'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Value TypeMagasin'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Value TypeMagasin' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Valeur de Type de magasin'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Valeur de Type de magasin' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value_Org',(select AD_Element_ID from AD_Element where ColumnName = 'Value_Org'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC08',
50,
'',
'Code magasin',
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
where not exists (select 1 from AD_Column where ColumnName = 'Value_Org'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value_Org'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC08', fieldlength = 50, help = '', name = 'Code magasin', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value_Org'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Code magasin'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code magasin' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Code magasin'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code magasin' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'M_Product (stocked)'),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Product, Service, Item',
'EC08',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'M_Product (stocked)'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Product, Service, Item', entitytype = 'EC08', fieldlength = 10, help = 'Identifies an item which is either purchased or sold in this organization.', name = 'Product', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Level_Min',(select AD_Element_ID from AD_Element where ColumnName = 'Level_Min'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Number'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Minimum Inventory level for this product',
'EC08',
22,
'Indicates the minimum quantity of this product to be stocked in inventory.',
'Minimum Level',
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
where not exists (select 1 from AD_Column where ColumnName = 'Level_Min'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Level_Min'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Number'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Minimum Inventory level for this product', entitytype = 'EC08', fieldlength = 22, help = 'Indicates the minimum quantity of this product to be stocked in inventory.', name = 'Minimum Level', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Level_Min'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Minimum Level'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Minimum Level' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Niveau Minimum'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Niveau Minimum' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Level_Max',(select AD_Element_ID from AD_Element where ColumnName = 'Level_Max'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Number'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Maximum Inventory level for this product',
'EC08',
22,
'Indicates the maximum quantity of this product to be stocked in inventory.',
'Maximum Level',
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
where not exists (select 1 from AD_Column where ColumnName = 'Level_Max'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Level_Max'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Number'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Maximum Inventory level for this product', entitytype = 'EC08', fieldlength = 22, help = 'Indicates the maximum quantity of this product to be stocked in inventory.', name = 'Maximum Level', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Level_Max'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Maximum Level'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Maximum Level' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Niveau Maximum'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Niveau Maximum' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'I_Replenish_ID',(select AD_Element_ID from AD_Element where ColumnName = 'I_Replenish_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC08',
10,
'',
'I_Replenish_ID',
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
where not exists (select 1 from AD_Column where ColumnName = 'I_Replenish_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'I_Replenish_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'ID'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC08', fieldlength = 10, help = '', name = 'I_Replenish_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'Y', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'I_Replenish_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'I_Replenish_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'I_Replenish_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'I_Replenish_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'I_Replenish_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'EC08',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = 'EC08', fieldlength = 22, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Société'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Société' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'EC08',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = 'EC08', fieldlength = 22, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Organisation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organisation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'EC08',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = 'EC08', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Créé'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Créé' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'EC08',
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
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = 'EC08', fieldlength = 22, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Créée par'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Créée par' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'The record is active in the system',
'EC08',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'The record is active in the system', entitytype = 'EC08', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Actif'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Actif' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'EC08',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = 'EC08', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Modifié'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modifié' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'EC08',
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
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = 'EC08', fieldlength = 22, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Modifié par'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Modifié par' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'TypeMagasin',(select AD_Element_ID from AD_Element where ColumnName = 'TypeMagasin'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Type de magasin',
'EC08',
1,
'',
'Type de magasin',
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
where not exists (select 1 from AD_Column where ColumnName = 'TypeMagasin'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'TypeMagasin'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Type de magasin', entitytype = 'EC08', fieldlength = 1, help = '', name = 'Type de magasin', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'TypeMagasin'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Type de magasin'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type de magasin' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Type de magasin'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type de magasin' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_AD_org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_AD_org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_Org'),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Magasin créateur',
'EC08',
10,
'',
'Magasin créateur',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_AD_org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_AD_org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_Org'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Magasin créateur', entitytype = 'EC08', fieldlength = 10, help = '', name = 'Magasin créateur', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_AD_org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Magasin créateur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Magasin créateur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Magasin créateur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Magasin créateur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_Category_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_Category_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Category of a Product',
'EC08',
10,
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
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_Category_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_Category_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Category of a Product', entitytype = 'EC08', fieldlength = 10, help = 'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.', name = 'Product Category', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_Category_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Product Category'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product Category' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Catégorie article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Catégorie article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value_M_Product_Category',(select AD_Element_ID from AD_Element where ColumnName = 'Value_M_Product_Category'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC08',
50,
'',
'Code Famille',
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
where not exists (select 1 from AD_Column where ColumnName = 'Value_M_Product_Category'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value_M_Product_Category'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC08', fieldlength = 50, help = '', name = 'Code Famille', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value_M_Product_Category'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Code Famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code Famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Code Famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code Famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Value_M_Product',(select AD_Element_ID from AD_Element where ColumnName = 'Value_M_Product'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC08',
50,
'',
'Code article',
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
where not exists (select 1 from AD_Column where ColumnName = 'Value_M_Product'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Value_M_Product'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC08', fieldlength = 50, help = '', name = 'Code article', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Value_M_Product'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Code article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Code article'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Code article' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'I_IsImported',(select AD_Element_ID from AD_Element where ColumnName = 'I_IsImported'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = '_IsImported'),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'Has this import been processed?',
'EC08',
1,
'The Imported check box indicates if this import has been processed.',
'Imported',
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
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'I_IsImported'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'I_IsImported'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = '_IsImported'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = 'Has this import been processed?', entitytype = 'EC08', fieldlength = 1, help = 'The Imported check box indicates if this import has been processed.', name = 'Imported', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'I_IsImported'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Importé'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Importé' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Importé'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Importé' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'I_ErrorMsg',(select AD_Element_ID from AD_Element where ColumnName = 'I_ErrorMsg'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Messages generated from import process',
'EC08',
255,
'The Import Error Message displays any error messages generated during the import process.',
'Import Error Message',
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
where not exists (select 1 from AD_Column where ColumnName = 'I_ErrorMsg'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'I_ErrorMsg'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Messages generated from import process', entitytype = 'EC08', fieldlength = 255, help = 'The Import Error Message displays any error messages generated during the import process.', name = 'Import Error Message', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'I_ErrorMsg'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Import Error Message'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Import Error Message' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Message d''erreur lié à l''import'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Message d''erreur lié à l''import' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Processed',(select AD_Element_ID from AD_Element where ColumnName = 'Processed'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'The document has been processed',
'EC08',
1,
'The Processed checkbox indicates that a document has been processed.',
'Processed',
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
where not exists (select 1 from AD_Column where ColumnName = 'Processed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Processed'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = 'The document has been processed', entitytype = 'EC08', fieldlength = 1, help = 'The Processed checkbox indicates that a document has been processed.', name = 'Processed', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Processed'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Processed'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Processed' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Traité'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Traité' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Processing',(select AD_Element_ID from AD_Element where ColumnName = 'Processing'),
(select AD_Process_ID from AD_Process where Value = 'Import_Replenish'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC08',
22,
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
where not exists (select 1 from AD_Column where ColumnName = 'Processing'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Processing'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import_Replenish'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC08', fieldlength = 22, help = '', name = 'Process Now', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Processing'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'nl_BE', 'Y', 'Process Now'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Process Now' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')), 'fr_FR', 'Y', 'Traiter maintenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Traiter maintenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'TypeMagasin',(select AD_Element_ID from AD_Element where ColumnName = 'TypeMagasin'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'),
(select AD_Table_ID from AD_Table where TableName = 'AD_Org'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Type de magasin',
'EC08',
1,
'',
'Type de magasin',
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
where not exists (select 1 from AD_Column where ColumnName = 'TypeMagasin'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'TypeMagasin'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'TypeMagasinList'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_Org'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Type de magasin', entitytype = 'EC08', fieldlength = 1, help = '', name = 'Type de magasin', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'TypeMagasin'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')), 'nl_BE', 'Y', 'Type de magasin'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type de magasin' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')), 'fr_FR', 'Y', 'Type de magasin'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Type de magasin' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Import Replenish','Import Replenish',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Replenish')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Replenish')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Replenish')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_Replenish'),
(select AD_Window_ID from AD_Window where Value = 'Import Replenish'),
'',
'',
'EC08',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
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
where not exists (select 1 from AD_Tab where Value = 'Import Replenish'  and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Import Replenish', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Replenish')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Replenish')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'I_Replenish')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_Replenish'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Import Replenish'), commitwarning = '', description = '', entitytype = 'EC08', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Import Replenish'  and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')), 'nl_BE', 'Y', '','','','Import Replenish'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Import Replenish' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')), 'fr_FR', 'Y', '','Import réapprovisionnement','','Import réapprovisionnement'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = 'Import réapprovisionnement',Help = '',Name = 'Import réapprovisionnement' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Active',
'The record is active in the system',
1,
'',
'EC08',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'',
170,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = 'EC08', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', 'L''enregistrement est actif dans le système','Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.','Actif'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'L''enregistrement est actif dans le système',Help = 'Il a deux méthodes pour rendre inactif un enregistrement dans le système: la première est de désactiver l''enregistrement, l''autre est de désactiver l''enregistrement. La désactivation rend l''enregistrement non valide au niveau des sélections mais bien au niveau des éditions. Il y a deux raisons pour désactiver plutôt que supprimer un enregistrement: la première est pour des raisons d''audit. La seconde est que les données sont liées. Par exemple, vous ne pouvez pas supprimer un tiers si il existe des factures pour ce dernier. En désactivant le tiers, vous ne pouvez plus enregistrer de facture pour celui-ci.',Name = 'Actif' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Code article',
'',
22,
'',
'EC08',
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
90
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Code article', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC08', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 90 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', '','','Code article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', '','','Code article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Code Famille',
'',
22,
'',
'EC08',
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
70
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Code Famille', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC08', help = '', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 70 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', '','','Code Famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code Famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', '','','Code Famille'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code Famille' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_M_Product_Category' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Code magasin',
'',
22,
'',
'EC08',
'',
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
50
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Code magasin', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC08', help = '', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 50 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', '','','Code magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', '','','Code magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_Org' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Import Error Message',
'Messages generated from import process',
255,
'',
'EC08',
'The Import Error Message displays any error messages generated during the import process.',
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
160
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Import Error Message', description = 'Messages generated from import process', displaylength = 255, displaylogic = '', entitytype = 'EC08', help = 'The Import Error Message displays any error messages generated during the import process.', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 160 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', 'Messages generated from import process','The Import Error Message displays any error messages generated during the import process.','Import Error Message'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Messages generated from import process',Help = 'The Import Error Message displays any error messages generated during the import process.',Name = 'Import Error Message' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', 'Message généré lors de l''import des données','Affiche les messages d''erreurs générés lors de l''import des données','Message d''erreur lié à l''import'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Message généré lors de l''import des données',Help = 'Affiche les messages d''erreurs générés lors de l''import des données',Name = 'Message d''erreur lié à l''import' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_ErrorMsg' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Imported',
'Has this import been processed?',
1,
'',
'EC08',
'The Imported check box indicates if this import has been processed.',
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
140
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Imported', description = 'Has this import been processed?', displaylength = 1, displaylogic = '', entitytype = 'EC08', help = 'The Imported check box indicates if this import has been processed.', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 140 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', 'Importé','','Importé'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Importé',Help = '',Name = 'Importé' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', 'Import réalisé ?','Indique si l''import a été traité.','Importé'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Import réalisé ?',Help = 'Indique si l''import a été traité.',Name = 'Importé' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_IsImported' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'I_Replenish_ID',
'',
10,
'',
'EC08',
'',
'',
180,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'I_Replenish_ID', description = '', displaylength = 10, displaylogic = '', entitytype = 'EC08', help = '', obscuretype = '', seqno = 180, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', '','','I_Replenish_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'I_Replenish_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', '','','I_Replenish_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'I_Replenish_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'I_Replenish_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Magasin créateur',
'Magasin créateur',
10,
'',
'EC08',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
60
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Magasin créateur', description = 'Magasin créateur', displaylength = 10, displaylogic = '', entitytype = 'EC08', help = '', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 60 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', 'Magasin créateur','','Magasin créateur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Magasin créateur',Help = '',Name = 'Magasin créateur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', 'Magasin créateur','','Magasin créateur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Magasin créateur',Help = '',Name = 'Magasin créateur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_AD_org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Maximum Level',
'Maximum Inventory level for this product',
22,
'',
'EC08',
'Indicates the maximum quantity of this product to be stocked in inventory.',
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
120
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Maximum Level', description = 'Maximum Inventory level for this product', displaylength = 22, displaylogic = '', entitytype = 'EC08', help = 'Indicates the maximum quantity of this product to be stocked in inventory.', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 120 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', 'Maximum Inventory level for this product','Indicates the maximum quantity of this product to be stocked in inventory.','Maximum Level'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Maximum Inventory level for this product',Help = 'Indicates the maximum quantity of this product to be stocked in inventory.',Name = 'Maximum Level' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', 'Niveau de stock maximum','Indique la quantité maximum stockable pour cette article.','Niveau Maximum'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Niveau de stock maximum',Help = 'Indique la quantité maximum stockable pour cette article.',Name = 'Niveau Maximum' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Level_Max' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Minimum Level',
'Minimum Inventory level for this product',
22,
'',
'EC08',
'Indicates the minimum quantity of this product to be stocked in inventory.',
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
110
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Minimum Level', description = 'Minimum Inventory level for this product', displaylength = 22, displaylogic = '', entitytype = 'EC08', help = 'Indicates the minimum quantity of this product to be stocked in inventory.', obscuretype = '', seqno = 110, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 110 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', 'Minimum Inventory level for this product','Indicates the minimum quantity of this product to be stocked in inventory.','Minimum Level'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Minimum Inventory level for this product',Help = 'Indicates the minimum quantity of this product to be stocked in inventory.',Name = 'Minimum Level' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', 'Stock Minimum ','Indique le niveau de stock minimum pour cet article.','Niveau Minimum'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Stock Minimum ',Help = 'Indique le niveau de stock minimum pour cet article.',Name = 'Niveau Minimum' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Level_Min' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'EC08',
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
20
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = 'EC08', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 20 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', 'Etablissement au sein d''une société','une unité est une partie d''une société, (établissement, succursale, bureau, etc...).','Organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Etablissement au sein d''une société',Help = 'une unité est une partie d''une société, (établissement, succursale, bureau, etc...).',Name = 'Organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Process Now',
'',
22,
'',
'EC08',
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
130
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Process Now', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC08', help = '', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 130 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', '','','Process Now'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Process Now' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', '','','Importer'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Importer' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processing' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Processed',
'The document has been processed',
1,
'',
'EC08',
'The Processed checkbox indicates that a document has been processed.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
150
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Processed', description = 'The document has been processed', displaylength = 1, displaylogic = '', entitytype = 'EC08', help = 'The Processed checkbox indicates that a document has been processed.', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 150 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', 'The document has been processed','The Processed checkbox indicates that a document has been processed.','Processed'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The document has been processed',Help = 'The Processed checkbox indicates that a document has been processed.',Name = 'Processed' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', 'Ce document a été traité','Indique que ce document a été traité.','Traité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Ce document a été traité',Help = 'Indique que ce document a été traité.',Name = 'Traité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Processed' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Product',
'Product, Service, Item',
10,
'',
'EC08',
'Identifies an item which is either purchased or sold in this organization.',
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
100
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Product', description = 'Product, Service, Item', displaylength = 10, displaylogic = '', entitytype = 'EC08', help = 'Identifies an item which is either purchased or sold in this organization.', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 100 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', 'Product, Service, Item','Identifies an item which is either purchased or sold in this organization.','Product'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Product, Service, Item',Help = 'Identifies an item which is either purchased or sold in this organization.',Name = 'Product' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', 'Produit service etc?','Identifie un article vendu ou acheté par cette organisation.','Article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Produit service etc?',Help = 'Identifie un article vendu ou acheté par cette organisation.',Name = 'Article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Product Category',
'Category of a Product',
22,
'',
'EC08',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
80
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Product Category', description = 'Category of a Product', displaylength = 22, displaylogic = '', entitytype = 'EC08', help = 'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 80 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', 'Category of a Product','Identifies the category which this product belongs to.  Product categories are used for pricing and selection.','Product Category'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Category of a Product',Help = 'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.',Name = 'Product Category' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', 'Catégorie à laquelle appartient l''article.','Catégorie à laquelle appartient l''article. La catégorie article est utilisée pour définir les prix et les coûts.','Catégorie article'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Catégorie à laquelle appartient l''article.',Help = 'Catégorie à laquelle appartient l''article. La catégorie article est utilisée pour définir les prix et les coûts.',Name = 'Catégorie article' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'EC08',
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
10
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = 'EC08', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 10 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', 'Nom de l''entreprise titulaire de la base de données (DB)','','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Nom de l''entreprise titulaire de la base de données (DB)',Help = '',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Type de magasin',
'Type de magasin',
1,
'',
'EC08',
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
40
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Type de magasin', description = 'Type de magasin', displaylength = 1, displaylogic = '', entitytype = 'EC08', help = '', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 40 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', 'Type de magasin','','Type de magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type de magasin',Help = '',Name = 'Type de magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', 'Type de magasin','','Type de magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type de magasin',Help = '',Name = 'Type de magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')),
'Value TypeMagasin',
'',
1,
'',
'EC08',
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
30
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Import Replenish' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import Replenish')), name = 'Value TypeMagasin', description = '', displaylength = 1, displaylogic = '', entitytype = 'EC08', help = '', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 30 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'nl_BE', 'Y', '','','Value TypeMagasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Value TypeMagasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))), 'fr_FR', 'Y', '','','Valeur de Type de magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Valeur de Type de magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Value_TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Replenish')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Import Replenish' and ad_window_id in (select ad_window_id from ad_window where value = 'Import Replenish'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Organization_143' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'Type de magasin',
'Type de magasin',
1,
'',
'EC08',
'',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Organization_143' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'Type de magasin', description = 'Type de magasin', displaylength = 1, displaylogic = '', entitytype = 'EC08', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_BE', 'Y', 'Type de magasin','','Type de magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type de magasin',Help = '',Name = 'Type de magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', 'Type de magasin','','Type de magasin'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type de magasin',Help = '',Name = 'Type de magasin' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'TypeMagasin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_Org')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Organization_143' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'ReplenishType',(select AD_Element_ID from AD_Element where ColumnName = 'ReplenishType'),
(select AD_Process_ID from AD_Process where Value = 'Import_Replenish'),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'M_Replenish Type'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Replenishment Type',
'',
'',
'Method for re-ordering a product',
'EC08',
0,
'The Replenishment Type indicates if this product will be manually re-ordered, ordered when the quantity is below the minimum quantity or ordered when it is below the maximum quantity. If you select a custom replenishment type, you need to create a class implementing org.compiere.util.ReplenishInterface and set that on warehouse level.',
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
where not exists (select 1 from AD_Process_Para where ColumnName = 'ReplenishType'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Replenish'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ReplenishType'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import_Replenish'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'M_Replenish Type'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Replenishment Type', defaultvalue = '', defaultvalue2 = '', description = 'Method for re-ordering a product', entitytype = 'EC08', fieldlength = 0, help = 'The Replenishment Type indicates if this product will be manually re-ordered, ordered when the quantity is below the minimum quantity or ordered when it is below the maximum quantity. If you select a custom replenishment type, you need to create a class implementing org.compiere.util.ReplenishInterface and set that on warehouse level.', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'ReplenishType'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Replenish');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ReplenishType' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Replenish')), 'nl_BE', 'Y', 'Method for re-ordering a product','The Replenishment Type indicates if this product will be manually re-ordered, ordered when the quantity is below the minimum quantity or ordered when it is below the maximum quantity. If you select a custom replenishment type, you need to create a class implementing org.compiere.util.ReplenishInterface and set that on warehouse level.','Replenishment Type'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ReplenishType' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Replenish')) and ad_language = 'nl_BE');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Method for re-ordering a product',Help = 'The Replenishment Type indicates if this product will be manually re-ordered, ordered when the quantity is below the minimum quantity or ordered when it is below the maximum quantity. If you select a custom replenishment type, you need to create a class implementing org.compiere.util.ReplenishInterface and set that on warehouse level.',Name = 'Replenishment Type' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ReplenishType' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Replenish')) and ad_language = 'nl_BE';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='ReplenishType' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Replenish')), 'fr_FR', 'Y', 'Méthode de réapprovisionnement','Indique si l''article est à réapprovisionner manuellement, ou automatiquement en fonction des stocks maxi ou mini.','Type réapprovisionnement'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ReplenishType' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Replenish')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Méthode de réapprovisionnement',Help = 'Indique si l''article est à réapprovisionner manuellement, ou automatiquement en fonction des stocks maxi ou mini.',Name = 'Type réapprovisionnement' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='ReplenishType' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_Replenish')) and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Import_Replenish','Import Replenish',
'W',
'Import Replenish',
'EC08',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'Import Replenish'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Import_Replenish' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Import Replenish', action = 'W', description = 'Import Replenish', entitytype = 'EC08', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Import Replenish'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Import_Replenish' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Import_Replenish'), 'nl_BE', 'Y', 'Import Replenish','Import Replenish'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import_Replenish') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Import Replenish',Name = 'Import Replenish' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import_Replenish') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Import_Replenish'), 'fr_FR', 'Y', 'Import réapprovisionnement ','Import réapprovisionnement '
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import_Replenish') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Import réapprovisionnement ',Name = 'Import réapprovisionnement ' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Import_Replenish') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC08-Import Min-Max', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.6.1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC08' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'EC08', help = '', importtable = 'N', loadseq = 0, name = 'I_Replenish', replicationtype = 'L', isactive = 'Y', ischangelog = 'N', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Import Replenish'), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'I_Replenish' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Import_Replenish') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Import_Replenish')); 

