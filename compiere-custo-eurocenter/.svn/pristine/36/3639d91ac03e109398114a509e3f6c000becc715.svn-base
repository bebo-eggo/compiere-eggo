insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2ETV','2ETV - 79675 Lignes vides dans les ODV de type Eggo et dans ',
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
where not exists (select 1 from AD_EntityType where EntityType = '2ETV' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2ETV - 79675 Lignes vides dans les ODV de type Eggo et dans ', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2ETV' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'Z_ORDERLINE_SAVE','2ETV',
'Merci de renseigner un article ou une charge.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'Z_ORDERLINE_SAVE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2ETV', msgtext = 'Merci de renseigner un article ou une charge.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'Z_ORDERLINE_SAVE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='Z_ORDERLINE_SAVE'), 'fr_FR', 'Y', 'Merci de renseigner un article ou une charge.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Z_ORDERLINE_SAVE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Merci de renseigner un article ou une charge.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Z_ORDERLINE_SAVE') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='Z_ORDERLINE_SAVE'), 'nl_NL', 'Y', 'Merci de renseigner un article ou une charge.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Z_ORDERLINE_SAVE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Merci de renseigner un article ou une charge.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Z_ORDERLINE_SAVE') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2ETV - 79675 Lignes vides dans les ODV de type Eggo et dans ', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2ETV' ;

