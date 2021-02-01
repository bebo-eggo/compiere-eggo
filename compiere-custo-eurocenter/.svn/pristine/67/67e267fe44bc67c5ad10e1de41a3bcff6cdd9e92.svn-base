insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E676','44676 - Message si Relevé Caisse existe déjà',
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
where not exists (select 1 from AD_EntityType where EntityType = 'E676' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '44676 - Message si Relevé Caisse existe déjà', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E676' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_BANKSTATEMENT_NAME_EXIST','E676',
'Relevé de Caisse existe déjà pour cette date',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_BANKSTATEMENT_NAME_EXIST' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E676', msgtext = 'Relevé de Caisse existe déjà pour cette date', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_BANKSTATEMENT_NAME_EXIST' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_BANKSTATEMENT_NAME_EXIST'), 'nl_NL', 'Y', 'Relevé de Caisse existe déjà pour cette date',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BANKSTATEMENT_NAME_EXIST') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Relevé de Caisse existe déjà pour cette date',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BANKSTATEMENT_NAME_EXIST') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_BANKSTATEMENT_NAME_EXIST'), 'fr_FR', 'Y', 'Relevé de Caisse existe déjà pour cette date',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BANKSTATEMENT_NAME_EXIST') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Relevé de Caisse existe déjà pour cette date',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BANKSTATEMENT_NAME_EXIST') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '44676 - Message si Relevé Caisse existe déjà', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E676' ;

