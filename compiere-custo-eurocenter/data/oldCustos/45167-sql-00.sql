insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E167','45167 - Accès à la fenêtre Tiers (Eggo)',
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
where not exists (select 1 from AD_EntityType where EntityType = 'E167' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '45167 - Accès à la fenêtre Tiers (Eggo)', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E167' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'ISEUROCENTER','E167',
'Y',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'ISEUROCENTER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E167', msgtext = 'Y', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'ISEUROCENTER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='ISEUROCENTER'), 'nl_NL', 'Y', 'Y',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='ISEUROCENTER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Y',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='ISEUROCENTER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='ISEUROCENTER'), 'fr_FR', 'Y', 'Y',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='ISEUROCENTER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Y',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='ISEUROCENTER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_BPARTNER_ZOOM_ROLES','E167',
'1000736,1000836',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_BPARTNER_ZOOM_ROLES' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E167', msgtext = '1000736,1000836', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_BPARTNER_ZOOM_ROLES' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_BPARTNER_ZOOM_ROLES'), 'nl_NL', 'Y', '1000736,1000836',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNER_ZOOM_ROLES') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '1000736,1000836',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNER_ZOOM_ROLES') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_BPARTNER_ZOOM_ROLES'), 'fr_FR', 'Y', '1000736,1000836',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNER_ZOOM_ROLES') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '1000736,1000836',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNER_ZOOM_ROLES') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_BPARTNER_ZOOM_WINDOW','E167',
'1000120',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_BPARTNER_ZOOM_WINDOW' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E167', msgtext = '1000120', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_BPARTNER_ZOOM_WINDOW' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_BPARTNER_ZOOM_WINDOW'), 'nl_NL', 'Y', '1000120',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNER_ZOOM_WINDOW') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '1000120',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNER_ZOOM_WINDOW') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_BPARTNER_ZOOM_WINDOW'), 'fr_FR', 'Y', '1000120',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNER_ZOOM_WINDOW') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '1000120',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BPARTNER_ZOOM_WINDOW') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '45167 - Accès à la fenêtre Tiers (Eggo)', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E167' ;

