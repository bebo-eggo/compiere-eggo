insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2ETP','2ETP',
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
where not exists (select 1 from AD_EntityType where EntityType = '2ETP' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2ETP', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2ETP' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'Z_BAD_LOCATOR','2ETP',
'Il existe des lignes avec un emplacement 93. Merci de les corriger',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'Z_BAD_LOCATOR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2ETP', msgtext = 'Il existe des lignes avec un emplacement 93. Merci de les corriger', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'Z_BAD_LOCATOR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='Z_BAD_LOCATOR'), 'fr_FR', 'Y', 'Il existe des lignes avec un emplacement 93. Merci de les corriger',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Z_BAD_LOCATOR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Il existe des lignes avec un emplacement 93. Merci de les corriger',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Z_BAD_LOCATOR') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='Z_BAD_LOCATOR'), 'nl_NL', 'Y', 'Il existe des lignes avec un emplacement 93. Merci de les corriger',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Z_BAD_LOCATOR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Il existe des lignes avec un emplacement 93. Merci de les corriger',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Z_BAD_LOCATOR') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'Z_ROLE_EXPED_93','2ETP',
'1000736,1001877,1002084,1000737,1000836,1001437',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'Z_ROLE_EXPED_93' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2ETP', msgtext = '1000736,1001877,1002084,1000737,1000836,1001437', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'Z_ROLE_EXPED_93' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='Z_ROLE_EXPED_93'), 'fr_FR', 'Y', '1000736,1001877,1002084,1000737,1000836,1001437',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Z_ROLE_EXPED_93') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '1000736,1001877,1002084,1000737,1000836,1001437',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Z_ROLE_EXPED_93') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='Z_ROLE_EXPED_93'), 'nl_NL', 'Y', '1000736,1001877,1002084,1000737,1000836,1001437',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Z_ROLE_EXPED_93') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '1000736,1001877,1002084,1000737,1000836,1001437',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Z_ROLE_EXPED_93') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2ETP', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2ETP' ;

