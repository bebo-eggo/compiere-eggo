insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'K024','96024: GESTION TIERS : Modification Flux',
'',
'',
'Y',
'',
'',
'',
'N',
'1.0',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'K024' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '96024: GESTION TIERS : Modification Flux', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'K024' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'setFluxProjet','K024',
'http://rhi-esb-test:8080/REST/Projet/setFluxProjet',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'setFluxProjet' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'K024', msgtext = 'http://rhi-esb-test:8080/REST/Projet/setFluxProjet', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'setFluxProjet' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='setFluxProjet'), 'fr_FR', 'Y', 'http://rhi-esb-test:8080/REST/Projet/setFluxProjet',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='setFluxProjet') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'http://rhi-esb-test:8080/REST/Projet/setFluxProjet',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='setFluxProjet') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '96024: GESTION TIERS : Modification Flux', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'K024' ;

