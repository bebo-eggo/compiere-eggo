insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC45','EC45 - Correction Account Info',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EC45' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC45 - Correction Account Info', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC45' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'AUD_TooManyRow','EC45',
'This query returns too many rows.  Refine it.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'AUD_TooManyRow' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'EC45', msgtext = 'This query returns too many rows.  Refine it.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'AUD_TooManyRow' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUD_TooManyRow'), 'fr_FR', 'Y', 'Cette recherche retourne trop d''enregistrements.  Ajouter des critères supplémentaires.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUD_TooManyRow') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Cette recherche retourne trop d''enregistrements.  Ajouter des critères supplémentaires.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUD_TooManyRow') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUD_TooManyRow'), 'nl_NL', 'Y', 'This query returns too many rows.  Refine it.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUD_TooManyRow') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'This query returns too many rows.  Refine it.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUD_TooManyRow') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC45 - Correction Account Info', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC45' ;

