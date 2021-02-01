insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J010','J010 - POS Labels',
'J010 - POS Labels',
'',
'Y',
'',
'',
'',
'Y',
'1',
0,
'N',
'',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'J010' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J010 - POS Labels', description = 'J010 - POS Labels', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = '', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J010' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_ACTIONSHIP','J010',
'Ship action : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_ACTIONSHIP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Ship action : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_ACTIONSHIP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_ACTIONSHIP'), 'nl_NL', 'Y', 'Ship action : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_ACTIONSHIP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ship action : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_ACTIONSHIP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_ACTIONSHIP'), 'fr_FR', 'Y', 'Action d''une livraison : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_ACTIONSHIP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Action d''une livraison : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_ACTIONSHIP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PARTNER','J010',
'Customers',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PARTNER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Customers', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PARTNER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PARTNER'), 'nl_NL', 'Y', 'Customers',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PARTNER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Customers',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PARTNER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PARTNER'), 'fr_FR', 'Y', 'Clients',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PARTNER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Clients',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PARTNER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_TOOLS','J010',
'Tools',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_TOOLS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Tools', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_TOOLS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TOOLS'), 'nl_NL', 'Y', 'Tools',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOOLS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tools',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOOLS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TOOLS'), 'fr_FR', 'Y', 'Outils',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOOLS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Outils',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOOLS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SESSION','J010',
'Session',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SESSION' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Session', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SESSION' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SESSION'), 'nl_NL', 'Y', 'Session',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SESSION') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Session',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SESSION') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SESSION'), 'fr_FR', 'Y', 'Vue',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SESSION') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Vue',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SESSION') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_DATE','J010',
'Date : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_DATE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Date : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_DATE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_DATE'), 'nl_NL', 'Y', 'Date : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DATE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Date : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DATE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_DATE'), 'fr_FR', 'Y', 'Date : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DATE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Date : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DATE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CASHFUND','J010',
'Cash fund  : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CASHFUND' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Cash fund  : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CASHFUND' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CASHFUND'), 'nl_NL', 'Y', 'Cash fund  : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CASHFUND') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Cash fund  : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CASHFUND') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CASHFUND'), 'fr_FR', 'Y', 'Fond de caisse  : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CASHFUND') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Fond de caisse  : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CASHFUND') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_LOGIN','J010',
'Login : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_LOGIN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Login : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_LOGIN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_LOGIN'), 'nl_NL', 'Y', 'Login : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_LOGIN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Login : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_LOGIN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_LOGIN'), 'fr_FR', 'Y', 'Identifiant : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_LOGIN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Identifiant : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_LOGIN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PASSWORD','J010',
'Password : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PASSWORD' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Password : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PASSWORD' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PASSWORD'), 'nl_NL', 'Y', 'Password : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PASSWORD') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Password : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PASSWORD') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PASSWORD'), 'fr_FR', 'Y', 'Mot de passe : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PASSWORD') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Mot de passe : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PASSWORD') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_TICKET','J010',
'Ticket ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_TICKET' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Ticket ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_TICKET' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TICKET'), 'nl_NL', 'Y', 'Ticket ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TICKET') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ticket ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TICKET') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TICKET'), 'fr_FR', 'Y', 'Ticket ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TICKET') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ticket ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TICKET') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_STOREREPAIR','J010',
'Store rep.  ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_STOREREPAIR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Store rep.  ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_STOREREPAIR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_STOREREPAIR'), 'nl_NL', 'Y', 'Store rep.  ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STOREREPAIR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Store rep.  ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STOREREPAIR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_STOREREPAIR'), 'fr_FR', 'Y', 'Rép. mag. ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STOREREPAIR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Rép. mag. ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STOREREPAIR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_TOTAL','J010',
'Total :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_TOTAL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Total :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_TOTAL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TOTAL'), 'nl_NL', 'Y', 'Total :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTAL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Total :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTAL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TOTAL'), 'fr_FR', 'Y', 'Total :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTAL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Total :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTAL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_RETURN','J010',
'Return ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_RETURN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Return ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_RETURN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_RETURN'), 'nl_NL', 'Y', 'Return ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RETURN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Return ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RETURN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_RETURN'), 'fr_FR', 'Y', 'Reprise ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RETURN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Reprise ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RETURN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_DISBURS','J010',
'Disburs. ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_DISBURS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Disburs. ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_DISBURS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_DISBURS'), 'nl_NL', 'Y', 'Disburs. ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DISBURS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Disburs. ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DISBURS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_DISBURS'), 'fr_FR', 'Y', 'Op. caisse ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DISBURS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Op. caisse ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DISBURS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_NEWSALE','J010',
'New sale',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_NEWSALE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'New sale', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_NEWSALE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_NEWSALE'), 'nl_NL', 'Y', 'New sale',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NEWSALE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'New sale',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NEWSALE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_NEWSALE'), 'fr_FR', 'Y', 'Nouvelle Vente',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NEWSALE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nouvelle Vente',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NEWSALE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CANCEL','J010',
'Cancel',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CANCEL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Cancel', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CANCEL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CANCEL'), 'nl_NL', 'Y', 'Cancel',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CANCEL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Cancel',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CANCEL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CANCEL'), 'fr_FR', 'Y', 'Annuler',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CANCEL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Annuler',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CANCEL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_VALIDATE','J010',
'Validate',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_VALIDATE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Validate', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_VALIDATE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_VALIDATE'), 'nl_NL', 'Y', 'Validate',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_VALIDATE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Validate',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_VALIDATE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_VALIDATE'), 'fr_FR', 'Y', 'Valider',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_VALIDATE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Valider',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_VALIDATE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_STORE','J010',
'Store',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_STORE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Store', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_STORE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_STORE'), 'nl_NL', 'Y', 'Store',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STORE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Store',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STORE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_STORE'), 'fr_FR', 'Y', 'Magasin',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STORE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Magasin',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STORE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODVALUE','J010',
'Ref.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODVALUE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Ref.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODVALUE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODVALUE'), 'nl_NL', 'Y', 'Ref.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODVALUE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ref.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODVALUE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODVALUE'), 'fr_FR', 'Y', 'Réf.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODVALUE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Réf.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODVALUE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODQTY','J010',
'Qty',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODQTY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Qty', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODQTY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODQTY'), 'nl_NL', 'Y', 'Qty',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODQTY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Qty',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODQTY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODQTY'), 'fr_FR', 'Y', 'Qté',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODQTY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Qté',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODQTY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SALEORDER','J010',
'Sales order ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SALEORDER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Sales order ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SALEORDER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SALEORDER'), 'nl_NL', 'Y', 'Sales order ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALEORDER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Sales order ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALEORDER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SALEORDER'), 'fr_FR', 'Y', 'Bon de vente ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALEORDER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Bon de vente ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALEORDER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PARTNERINFO','J010',
'Customer info',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PARTNERINFO' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Customer info', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PARTNERINFO' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PARTNERINFO'), 'nl_NL', 'Y', 'Customer info',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PARTNERINFO') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Customer info',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PARTNERINFO') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PARTNERINFO'), 'fr_FR', 'Y', 'Informations client',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PARTNERINFO') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Informations client',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PARTNERINFO') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPADDR','J010',
'Address :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPADDR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Address :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPADDR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPADDR'), 'nl_NL', 'Y', 'Address :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Address :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPADDR'), 'fr_FR', 'Y', 'Addresse :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Addresse :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPZIP','J010',
'Zip :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPZIP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Zip :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPZIP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPZIP'), 'nl_NL', 'Y', 'Zip :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPZIP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Zip :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPZIP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPZIP'), 'fr_FR', 'Y', 'CP :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPZIP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'CP :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPZIP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPMAIL','J010',
'Email :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPMAIL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Email :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPMAIL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPMAIL'), 'nl_NL', 'Y', 'Email :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPMAIL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPMAIL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPMAIL'), 'fr_FR', 'Y', 'Email :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPMAIL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPMAIL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPGROUP','J010',
'Group :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPGROUP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Group :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPGROUP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPGROUP'), 'nl_NL', 'Y', 'Group :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPGROUP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Group :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPGROUP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPGROUP'), 'fr_FR', 'Y', 'Catégorie :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPGROUP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Catégorie :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPGROUP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPCREDIT','J010',
'Credit :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPCREDIT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Credit :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPCREDIT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPCREDIT'), 'nl_NL', 'Y', 'Credit :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCREDIT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Credit :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCREDIT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPCREDIT'), 'fr_FR', 'Y', 'Solde :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCREDIT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Solde :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCREDIT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODUCTTAB','J010',
'Product',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODUCTTAB' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Product', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODUCTTAB' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCTTAB'), 'nl_NL', 'Y', 'Product',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTTAB') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Product',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTTAB') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCTTAB'), 'fr_FR', 'Y', 'Fiche produit',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTTAB') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Fiche produit',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTTAB') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_NOPRODUCT','J010',
'Product request',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_NOPRODUCT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Product request', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_NOPRODUCT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_NOPRODUCT'), 'nl_NL', 'Y', 'Product request',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOPRODUCT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Product request',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOPRODUCT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_NOPRODUCT'), 'fr_FR', 'Y', 'Article non référencé',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOPRODUCT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Article non référencé',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOPRODUCT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PAYMENTTAB','J010',
'Payment',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PAYMENTTAB' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Payment', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PAYMENTTAB' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PAYMENTTAB'), 'nl_NL', 'Y', 'Payment',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAYMENTTAB') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Payment',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAYMENTTAB') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PAYMENTTAB'), 'fr_FR', 'Y', 'Paiement',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAYMENTTAB') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Paiement',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAYMENTTAB') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_RELATEDPROD','J010',
'Related products',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_RELATEDPROD' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Related products', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_RELATEDPROD' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_RELATEDPROD'), 'nl_NL', 'Y', 'Related products',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RELATEDPROD') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Related products',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RELATEDPROD') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_RELATEDPROD'), 'fr_FR', 'Y', 'Produits liés',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RELATEDPROD') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Produits liés',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RELATEDPROD') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ACTIONSINFO','J010',
'Actions info',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ACTIONSINFO' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Actions info', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ACTIONSINFO' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACTIONSINFO'), 'nl_NL', 'Y', 'Actions info',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIONSINFO') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Actions info',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIONSINFO') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACTIONSINFO'), 'fr_FR', 'Y', 'Informations action',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIONSINFO') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Informations action',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIONSINFO') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODUCTCAT','J010',
'Category : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODUCTCAT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Category : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODUCTCAT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCTCAT'), 'nl_NL', 'Y', 'Category : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTCAT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Category : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTCAT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCTCAT'), 'fr_FR', 'Y', 'Famille : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTCAT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Famille : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTCAT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODUCTBRAND','J010',
'Brand : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODUCTBRAND' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Brand : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODUCTBRAND' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCTBRAND'), 'nl_NL', 'Y', 'Brand : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTBRAND') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Brand : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTBRAND') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCTBRAND'), 'fr_FR', 'Y', 'Marque : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTBRAND') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Marque : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTBRAND') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_QTYOH','J010',
'On hand qty : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_QTYOH' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'On hand qty : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_QTYOH' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QTYOH'), 'nl_NL', 'Y', 'On hand qty : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYOH') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'On hand qty : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYOH') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QTYOH'), 'fr_FR', 'Y', 'Qté en stock : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYOH') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Qté en stock : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYOH') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_QTYORDERED','J010',
'Ordered qty : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_QTYORDERED' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Ordered qty : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_QTYORDERED' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QTYORDERED'), 'nl_NL', 'Y', 'Ordered qty : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYORDERED') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ordered qty : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYORDERED') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QTYORDERED'), 'fr_FR', 'Y', 'Qté en commande : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYORDERED') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Qté en commande : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYORDERED') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATTRIBUTES','J010',
'Attributes',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATTRIBUTES' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Attributes', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ATTRIBUTES' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATTRIBUTES'), 'nl_NL', 'Y', 'Attributes',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATTRIBUTES') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Attributes',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATTRIBUTES') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATTRIBUTES'), 'fr_FR', 'Y', 'Spécificités',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATTRIBUTES') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Spécificités',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATTRIBUTES') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_OTHERSTOREQTY','J010',
'Other store qty',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_OTHERSTOREQTY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Other store qty', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_OTHERSTOREQTY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_OTHERSTOREQTY'), 'nl_NL', 'Y', 'Other store qty',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OTHERSTOREQTY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Other store qty',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OTHERSTOREQTY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_OTHERSTOREQTY'), 'fr_FR', 'Y', 'Stock des autre magasins',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OTHERSTOREQTY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Stock des autre magasins',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OTHERSTOREQTY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PURCHPRICE','J010',
'Purch. price : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PURCHPRICE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Purch. price : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PURCHPRICE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PURCHPRICE'), 'nl_NL', 'Y', 'Purch. price : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PURCHPRICE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Purch. price : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PURCHPRICE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PURCHPRICE'), 'fr_FR', 'Y', 'Prix d''achat : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PURCHPRICE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prix d''achat : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PURCHPRICE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODREF','J010',
'Reference : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODREF' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Reference : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODREF' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODREF'), 'nl_NL', 'Y', 'Reference : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODREF') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Reference : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODREF') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODREF'), 'fr_FR', 'Y', 'Référence : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODREF') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Référence : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODREF') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODSCAT','J010',
'sub-category : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODSCAT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'sub-category : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODSCAT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODSCAT'), 'nl_NL', 'Y', 'sub-category : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSCAT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'sub-category : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSCAT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODSCAT'), 'fr_FR', 'Y', 'Sous-famille : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSCAT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Sous-famille : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSCAT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODSUPPLIER','J010',
'Supplier : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODSUPPLIER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Supplier : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODSUPPLIER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODSUPPLIER'), 'nl_NL', 'Y', 'Supplier : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSUPPLIER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Supplier : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSUPPLIER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODSUPPLIER'), 'fr_FR', 'Y', 'Fournisseur : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSUPPLIER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Fournisseur : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSUPPLIER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PAYMODE','J010',
'Payment mode',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PAYMODE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Payment mode', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PAYMODE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PAYMODE'), 'nl_NL', 'Y', 'Payment mode',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAYMODE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Payment mode',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAYMODE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PAYMODE'), 'fr_FR', 'Y', 'Moyen de paiement',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAYMODE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Moyen de paiement',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAYMODE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PAYAMOUNT','J010',
'Amount',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PAYAMOUNT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Amount', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PAYAMOUNT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PAYAMOUNT'), 'nl_NL', 'Y', 'Amount',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAYAMOUNT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Amount',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAYAMOUNT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PAYAMOUNT'), 'fr_FR', 'Y', 'Montant',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAYAMOUNT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Montant',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAYAMOUNT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_OPENAMT','J010',
'Open amt : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_OPENAMT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Open amt : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_OPENAMT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_OPENAMT'), 'nl_NL', 'Y', 'Open amt : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OPENAMT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Open amt : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OPENAMT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_OPENAMT'), 'fr_FR', 'Y', 'Reste : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OPENAMT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Reste : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OPENAMT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_TOTALAMT','J010',
'Total amt : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_TOTALAMT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Total amt : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_TOTALAMT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TOTALAMT'), 'nl_NL', 'Y', 'Total amt : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTALAMT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Total amt : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTALAMT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TOTALAMT'), 'fr_FR', 'Y', 'A payer : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTALAMT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'A payer : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTALAMT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ACTION','J010',
'Action',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ACTION' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Action', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ACTION' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACTION'), 'nl_NL', 'Y', 'Action',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTION') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Action',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTION') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACTION'), 'fr_FR', 'Y', 'Action',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTION') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Action',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTION') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ACTIVITY','J010',
'Activity : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ACTIVITY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Activity : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ACTIVITY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACTIVITY'), 'nl_NL', 'Y', 'Activity : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIVITY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Activity : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIVITY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACTIVITY'), 'fr_FR', 'Y', 'Activité : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIVITY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Activité : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIVITY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_STORELIST','J010',
'Store : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_STORELIST' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Store : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_STORELIST' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_STORELIST'), 'nl_NL', 'Y', 'Store : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STORELIST') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Store : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STORELIST') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_STORELIST'), 'fr_FR', 'Y', 'Magasin : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STORELIST') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Magasin : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STORELIST') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODNAME','J010',
'Description',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODNAME' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Description', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODNAME' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODNAME'), 'nl_NL', 'Y', 'Description',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODNAME') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Description',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODNAME') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODNAME'), 'fr_FR', 'Y', 'Description',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODNAME') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Description',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODNAME') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODBRAND','J010',
'Brand',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODBRAND' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Brand', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODBRAND' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODBRAND'), 'nl_NL', 'Y', 'Brand',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODBRAND') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Brand',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODBRAND') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODBRAND'), 'fr_FR', 'Y', 'Gamme',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODBRAND') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Gamme',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODBRAND') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ORDERDATE','J010',
'Date',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ORDERDATE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Date', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ORDERDATE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ORDERDATE'), 'nl_NL', 'Y', 'Date',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ORDERDATE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Date',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ORDERDATE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ORDERDATE'), 'fr_FR', 'Y', 'Date',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ORDERDATE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Date',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ORDERDATE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODLIST','J010',
'Product list',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODLIST' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Product list', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODLIST' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODLIST'), 'nl_NL', 'Y', 'Product list',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODLIST') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Product list',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODLIST') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODLIST'), 'fr_FR', 'Y', 'Liste des produits',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODLIST') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Liste des produits',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODLIST') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SUBSTITUTEPROD','J010',
'Substitute products',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SUBSTITUTEPROD' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Substitute products', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SUBSTITUTEPROD' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SUBSTITUTEPROD'), 'nl_NL', 'Y', 'Substitute products',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SUBSTITUTEPROD') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Substitute products',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SUBSTITUTEPROD') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SUBSTITUTEPROD'), 'fr_FR', 'Y', 'Produits de remplacement',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SUBSTITUTEPROD') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Produits de remplacement',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SUBSTITUTEPROD') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPPHONE1','J010',
'Phone',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPPHONE1' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Phone', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPPHONE1' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPPHONE1'), 'nl_NL', 'Y', 'Phone',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPPHONE1') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Phone',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPPHONE1') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPPHONE1'), 'fr_FR', 'Y', 'Téléphone',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPPHONE1') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Téléphone',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPPHONE1') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_INVENTORY','J010',
'Inventory',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_INVENTORY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Inventory', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_INVENTORY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_INVENTORY'), 'nl_NL', 'Y', 'Inventory',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_INVENTORY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Inventory',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_INVENTORY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_INVENTORY'), 'fr_FR', 'Y', 'Stocks',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_INVENTORY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Stocks',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_INVENTORY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SALE','J010',
'Sale',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SALE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Sale', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SALE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SALE'), 'nl_NL', 'Y', 'Sale',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Sale',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SALE'), 'fr_FR', 'Y', 'Vente',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Vente',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPAIR','J010',
'Repair',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPAIR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Repair', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPAIR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIR'), 'nl_NL', 'Y', 'Repair',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Repair',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIR'), 'fr_FR', 'Y', 'Réparation',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Réparation',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODUCT','J010',
'Products',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODUCT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Products', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODUCT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCT'), 'nl_NL', 'Y', 'Products',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Products',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCT'), 'fr_FR', 'Y', 'Produits',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Produits',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_EXIT','J010',
'Exit',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_EXIT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Exit', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_EXIT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_EXIT'), 'nl_NL', 'Y', 'Exit',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_EXIT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Exit',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_EXIT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_EXIT'), 'fr_FR', 'Y', 'Quitter',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_EXIT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Quitter',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_EXIT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_INCORRECTLOGIN','J010',
'Incorrect login',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_INCORRECTLOGIN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Incorrect login', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_INCORRECTLOGIN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_INCORRECTLOGIN'), 'nl_NL', 'Y', 'Incorrect login',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_INCORRECTLOGIN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Incorrect login',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_INCORRECTLOGIN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_INCORRECTLOGIN'), 'fr_FR', 'Y', 'Identifiant incorrect',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_INCORRECTLOGIN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Identifiant incorrect',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_INCORRECTLOGIN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_OPEN','J010',
'Open',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_OPEN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Open', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_OPEN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_OPEN'), 'nl_NL', 'Y', 'Open',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OPEN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Open',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OPEN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_OPEN'), 'fr_FR', 'Y', 'Ouverture',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OPEN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ouverture',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OPEN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_QUOTE','J010',
'Quotation ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_QUOTE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Quotation ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_QUOTE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QUOTE'), 'nl_NL', 'Y', 'Quotation ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QUOTE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Quotation ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QUOTE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QUOTE'), 'fr_FR', 'Y', 'Devis ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QUOTE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Devis ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QUOTE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_NEWREPAIR','J010',
'New repair',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_NEWREPAIR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'New repair', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_NEWREPAIR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_NEWREPAIR'), 'nl_NL', 'Y', 'New repair',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NEWREPAIR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'New repair',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NEWREPAIR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_NEWREPAIR'), 'fr_FR', 'Y', 'Nouvelle réparation',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NEWREPAIR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nouvelle réparation',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NEWREPAIR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRINTDOC','J010',
'Print  doc.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRINTDOC' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Print  doc.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRINTDOC' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRINTDOC'), 'nl_NL', 'Y', 'Print  doc.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRINTDOC') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Print  doc.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRINTDOC') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRINTDOC'), 'fr_FR', 'Y', 'Imprimer le document',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRINTDOC') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Imprimer le document',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRINTDOC') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPAIRONSITE','J010',
'On site',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPAIRONSITE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'On site', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPAIRONSITE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRONSITE'), 'nl_NL', 'Y', 'On site',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRONSITE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'On site',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRONSITE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRONSITE'), 'fr_FR', 'Y', 'Domicile',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRONSITE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Domicile',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRONSITE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODPRCE','J010',
'Price $',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODPRCE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Price $', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODPRCE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODPRCE'), 'nl_NL', 'Y', 'Price $',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODPRCE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Price $',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODPRCE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODPRCE'), 'fr_FR', 'Y', 'Prix ?',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODPRCE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prix ?',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODPRCE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODDISC','J010',
'Disc %',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODDISC' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Disc %', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODDISC' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODDISC'), 'nl_NL', 'Y', 'Disc %',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODDISC') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Disc %',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODDISC') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODDISC'), 'fr_FR', 'Y', 'Rem %',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODDISC') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Rem %',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODDISC') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERREAN','J010',
'Invalid bar code',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERREAN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Invalid bar code', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ERREAN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERREAN'), 'nl_NL', 'Y', 'Invalid bar code',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERREAN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Invalid bar code',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERREAN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERREAN'), 'fr_FR', 'Y', 'Code barre incorrect',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERREAN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Code barre incorrect',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERREAN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERRNOPROD','J010',
'No product found',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERRNOPROD' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'No product found', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ERRNOPROD' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERRNOPROD'), 'nl_NL', 'Y', 'No product found',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERRNOPROD') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'No product found',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERRNOPROD') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERRNOPROD'), 'fr_FR', 'Y', 'Pas de produit trouvé',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERRNOPROD') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pas de produit trouvé',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERRNOPROD') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPNAME','J010',
'Name :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPNAME' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Name :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPNAME' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPNAME'), 'nl_NL', 'Y', 'Name :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPNAME') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Name :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPNAME') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPNAME'), 'fr_FR', 'Y', 'Nom :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPNAME') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPNAME') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPCITY','J010',
'City :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPCITY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'City :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPCITY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPCITY'), 'nl_NL', 'Y', 'City :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCITY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'City :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCITY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPCITY'), 'fr_FR', 'Y', 'Ville :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCITY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ville :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCITY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPPHONE','J010',
'Phone :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPPHONE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Phone :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPPHONE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPPHONE'), 'nl_NL', 'Y', 'Phone :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPPHONE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Phone :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPPHONE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPPHONE'), 'fr_FR', 'Y', 'Tél./GSM :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPPHONE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tél./GSM :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPPHONE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CUSTHISTORY','J010',
'Customer history',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CUSTHISTORY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Customer history', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CUSTHISTORY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTHISTORY'), 'nl_NL', 'Y', 'Customer history',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTHISTORY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Customer history',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTHISTORY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTHISTORY'), 'fr_FR', 'Y', 'Historique du client',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTHISTORY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Historique du client',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTHISTORY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ACTIONS','J010',
'Actions',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ACTIONS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Actions', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ACTIONS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACTIONS'), 'nl_NL', 'Y', 'Actions',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIONS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Actions',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIONS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACTIONS'), 'fr_FR', 'Y', 'Actions',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIONS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Actions',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIONS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODUCTTYPE','J010',
'Type : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODUCTTYPE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Type : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODUCTTYPE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCTTYPE'), 'nl_NL', 'Y', 'Type : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTTYPE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Type : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTTYPE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCTTYPE'), 'fr_FR', 'Y', 'Gamme : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTTYPE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Gamme : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTTYPE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_QTYAVAIL','J010',
'Available qty : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_QTYAVAIL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Available qty : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_QTYAVAIL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QTYAVAIL'), 'nl_NL', 'Y', 'Available qty : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYAVAIL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Available qty : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYAVAIL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QTYAVAIL'), 'fr_FR', 'Y', 'Qté disponible : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYAVAIL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Qté disponible : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYAVAIL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_QTYRESERVED','J010',
'Reserved qty : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_QTYRESERVED' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Reserved qty : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_QTYRESERVED' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QTYRESERVED'), 'nl_NL', 'Y', 'Reserved qty : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYRESERVED') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Reserved qty : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYRESERVED') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QTYRESERVED'), 'fr_FR', 'Y', 'Qté reservée : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYRESERVED') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Qté reservée : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYRESERVED') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_QTYMOVE','J010',
'Moved qty : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_QTYMOVE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Moved qty : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_QTYMOVE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QTYMOVE'), 'nl_NL', 'Y', 'Moved qty : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYMOVE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Moved qty : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYMOVE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QTYMOVE'), 'fr_FR', 'Y', 'Qté en transfert : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYMOVE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Qté en transfert : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYMOVE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRICE','J010',
'Price : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRICE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Price : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRICE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRICE'), 'nl_NL', 'Y', 'Price : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRICE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Price : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRICE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRICE'), 'fr_FR', 'Y', 'Prix : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRICE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prix : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRICE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODMARGIN','J010',
'Margin : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODMARGIN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Margin : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODMARGIN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODMARGIN'), 'nl_NL', 'Y', 'Margin : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODMARGIN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Margin : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODMARGIN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODMARGIN'), 'fr_FR', 'Y', 'Marge : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODMARGIN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Marge : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODMARGIN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODDESC','J010',
'Description : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODDESC' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Description : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODDESC' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODDESC'), 'nl_NL', 'Y', 'Description : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODDESC') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Description : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODDESC') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODDESC'), 'fr_FR', 'Y', 'Description : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODDESC') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Description : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODDESC') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODSSCAT','J010',
'sub-s-category : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODSSCAT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'sub-s-category : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODSSCAT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODSSCAT'), 'nl_NL', 'Y', 'sub-s-category : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSSCAT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'sub-s-category : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSSCAT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODSSCAT'), 'fr_FR', 'Y', 'Sous-s-famille : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSSCAT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Sous-s-famille : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSSCAT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PAIDAMT','J010',
'Paid amt : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PAIDAMT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Paid amt : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PAIDAMT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PAIDAMT'), 'nl_NL', 'Y', 'Paid amt : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAIDAMT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Paid amt : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAIDAMT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PAIDAMT'), 'fr_FR', 'Y', 'Reçu : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAIDAMT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Reçu : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAIDAMT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ACTIONVAL','J010',
'Code',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ACTIONVAL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Code', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ACTIONVAL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACTIONVAL'), 'nl_NL', 'Y', 'Code',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIONVAL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Code',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIONVAL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACTIONVAL'), 'fr_FR', 'Y', 'Code',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIONVAL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Code',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACTIONVAL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CMMT','J010',
'Comment : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CMMT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Comment : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CMMT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CMMT'), 'nl_NL', 'Y', 'Comment : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CMMT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Comment : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CMMT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CMMT'), 'fr_FR', 'Y', 'Commentaire : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CMMT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Commentaire : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CMMT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODPRICE','J010',
'Price',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODPRICE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Price', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODPRICE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODPRICE'), 'nl_NL', 'Y', 'Price',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODPRICE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Price',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODPRICE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODPRICE'), 'fr_FR', 'Y', 'Prix',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODPRICE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prix',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODPRICE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ORDER','J010',
'Order',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ORDER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Order', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ORDER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ORDER'), 'nl_NL', 'Y', 'Order',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ORDER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Order',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ORDER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ORDER'), 'fr_FR', 'Y', 'Commande',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ORDER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Commande',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ORDER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODSEARCH','J010',
'Product search',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODSEARCH' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Product search', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODSEARCH' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODSEARCH'), 'nl_NL', 'Y', 'Product search',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSEARCH') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Product search',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSEARCH') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODSEARCH'), 'fr_FR', 'Y', 'Rechercher un produit',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSEARCH') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Rechercher un produit',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSEARCH') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODLABEL','J010',
'Description : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODLABEL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Description : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODLABEL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODLABEL'), 'nl_NL', 'Y', 'Description : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODLABEL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Description : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODLABEL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODLABEL'), 'fr_FR', 'Y', 'Libellé : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODLABEL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Libellé : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODLABEL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODSSSCAT','J010',
'sub-s-s-category : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODSSSCAT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'sub-s-s-category : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODSSSCAT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODSSSCAT'), 'nl_NL', 'Y', 'sub-s-s-category : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSSSCAT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'sub-s-s-category : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSSSCAT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODSSSCAT'), 'fr_FR', 'Y', 'Sous-s-s-s-famille : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSSSCAT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Sous-s-s-s-famille : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODSSSCAT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_DISBURSINFO','J010',
'Disburs.info',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_DISBURSINFO' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Disburs.info', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_DISBURSINFO' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_DISBURSINFO'), 'nl_NL', 'Y', 'Disburs.info',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DISBURSINFO') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Disburs.info',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DISBURSINFO') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_DISBURSINFO'), 'fr_FR', 'Y', 'Infos. Op. caisse',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DISBURSINFO') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Infos. Op. caisse',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DISBURSINFO') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_CREATEARTICLE','J010',
'Could not create the product : incorrect price',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_CREATEARTICLE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Could not create the product : incorrect price', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_CREATEARTICLE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CREATEARTICLE'), 'nl_NL', 'Y', 'Could not create the product : incorrect price',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CREATEARTICLE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Could not create the product : incorrect price',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CREATEARTICLE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CREATEARTICLE'), 'fr_FR', 'Y', 'Impossible de créer l''article : prix incorrect',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CREATEARTICLE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Impossible de créer l''article : prix incorrect',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CREATEARTICLE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_CREATEARTICLE2','J010',
'Could not create the product : fields incomplete',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_CREATEARTICLE2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Could not create the product : fields incomplete', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_CREATEARTICLE2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CREATEARTICLE2'), 'nl_NL', 'Y', 'Could not create the product : fields incomplete',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CREATEARTICLE2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Could not create the product : fields incomplete',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CREATEARTICLE2') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CREATEARTICLE2'), 'fr_FR', 'Y', 'Impossible de créer l''article : champs incomplets',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CREATEARTICLE2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Impossible de créer l''article : champs incomplets',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CREATEARTICLE2') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_QUOTE','J010',
' for a quote',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_QUOTE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = ' for a quote', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_QUOTE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_QUOTE'), 'nl_NL', 'Y', ' for a quote',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_QUOTE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = ' for a quote',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_QUOTE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_QUOTE'), 'fr_FR', 'Y', ' pour un devis',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_QUOTE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = ' pour un devis',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_QUOTE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_TAXID','J010',
'VAT number invalid',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_TAXID' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'VAT number invalid', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_TAXID' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_TAXID'), 'nl_NL', 'Y', 'VAT number invalid',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_TAXID') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'VAT number invalid',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_TAXID') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_TAXID'), 'fr_FR', 'Y', 'Numéro de TVA invalide',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_TAXID') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Numéro de TVA invalide',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_TAXID') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPRINTHOUR','J010',
'Hour',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPRINTHOUR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Hour', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPRINTHOUR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPRINTHOUR'), 'nl_NL', 'Y', 'Hour',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTHOUR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Hour',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTHOUR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPRINTHOUR'), 'fr_FR', 'Y', 'Heure',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTHOUR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Heure',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTHOUR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPRINTAMT','J010',
'Total amount',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPRINTAMT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Total amount', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPRINTAMT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPRINTAMT'), 'nl_NL', 'Y', 'Total amount',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTAMT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Total amount',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTAMT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPRINTAMT'), 'fr_FR', 'Y', 'Montant total',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTAMT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Montant total',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTAMT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SALESREPORTSALESMAN','J010',
'Salesman',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SALESREPORTSALESMAN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Salesman', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SALESREPORTSALESMAN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SALESREPORTSALESMAN'), 'nl_NL', 'Y', 'Salesman',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTSALESMAN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Salesman',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTSALESMAN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SALESREPORTSALESMAN'), 'fr_FR', 'Y', 'Vendeur',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTSALESMAN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Vendeur',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTSALESMAN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SALESREPORTMARGIN','J010',
'Margin',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SALESREPORTMARGIN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Margin', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SALESREPORTMARGIN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SALESREPORTMARGIN'), 'nl_NL', 'Y', 'Margin',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTMARGIN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Margin',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTMARGIN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SALESREPORTMARGIN'), 'fr_FR', 'Y', 'Marge',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTMARGIN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Marge',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTMARGIN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SALESREPORTPERCENT','J010',
'%',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SALESREPORTPERCENT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = '%', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SALESREPORTPERCENT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SALESREPORTPERCENT'), 'nl_NL', 'Y', '%',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTPERCENT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '%',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTPERCENT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SALESREPORTPERCENT'), 'fr_FR', 'Y', '%',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTPERCENT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '%',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTPERCENT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SAVSTATUSSTATUS','J010',
'Status',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SAVSTATUSSTATUS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Status', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SAVSTATUSSTATUS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSSTATUS'), 'nl_NL', 'Y', 'Status',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSSTATUS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Status',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSSTATUS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSSTATUS'), 'fr_FR', 'Y', 'Statut',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSSTATUS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Statut',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSSTATUS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPRINT','J010',
'Reprint document',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPRINT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Reprint document', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPRINT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPRINT'), 'nl_NL', 'Y', 'Reprint document',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Reprint document',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPRINT'), 'fr_FR', 'Y', 'Réimprimer document',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Réimprimer document',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SAVEQUOTE','J010',
'Save quote',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SAVEQUOTE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Save quote', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SAVEQUOTE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SAVEQUOTE'), 'nl_NL', 'Y', 'Save quote',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVEQUOTE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Save quote',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVEQUOTE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SAVEQUOTE'), 'fr_FR', 'Y', 'Enregistrer le devis',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVEQUOTE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Enregistrer le devis',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVEQUOTE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_KEEPQUOTE','J010',
'Keep quote',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_KEEPQUOTE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Keep quote', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_KEEPQUOTE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_KEEPQUOTE'), 'nl_NL', 'Y', 'Keep quote',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_KEEPQUOTE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Keep quote',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_KEEPQUOTE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_KEEPQUOTE'), 'fr_FR', 'Y', 'Continuer le devis',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_KEEPQUOTE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Continuer le devis',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_KEEPQUOTE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_TRANSFORMSO','J010',
'Convert to sales order',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_TRANSFORMSO' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Convert to sales order', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_TRANSFORMSO' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TRANSFORMSO'), 'nl_NL', 'Y', 'Convert to sales order',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TRANSFORMSO') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Convert to sales order',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TRANSFORMSO') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TRANSFORMSO'), 'fr_FR', 'Y', 'Transformer en BDV',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TRANSFORMSO') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Transformer en BDV',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TRANSFORMSO') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_LOGIN_VENDOR','J010',
'Any vendor selected',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_LOGIN_VENDOR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Any vendor selected', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ERR_LOGIN_VENDOR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_LOGIN_VENDOR'), 'nl_NL', 'Y', 'Any vendor selected',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_LOGIN_VENDOR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Any vendor selected',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_LOGIN_VENDOR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_LOGIN_VENDOR'), 'fr_FR', 'Y', 'Aucun vendeur sélectionné',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_LOGIN_VENDOR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Aucun vendeur sélectionné',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_LOGIN_VENDOR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_LOGIN_PASSWORD','J010',
'Login/password invalid',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_LOGIN_PASSWORD' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Login/password invalid', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ERR_LOGIN_PASSWORD' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_LOGIN_PASSWORD'), 'nl_NL', 'Y', 'Login/password invalid',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_LOGIN_PASSWORD') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Login/password invalid',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_LOGIN_PASSWORD') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_LOGIN_PASSWORD'), 'fr_FR', 'Y', 'Login/Mot de passe incorrect',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_LOGIN_PASSWORD') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Login/Mot de passe incorrect',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_LOGIN_PASSWORD') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SENDMAIL','J010',
'Sending email in progress ...',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SENDMAIL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Sending email in progress ...', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SENDMAIL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SENDMAIL'), 'nl_NL', 'Y', 'Sending email in progress ...',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SENDMAIL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Sending email in progress ...',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SENDMAIL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SENDMAIL'), 'fr_FR', 'Y', 'Envoi de l''email en cours ...',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SENDMAIL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Envoi de l''email en cours ...',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SENDMAIL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR4001','J010',
'No card inserted',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR4001' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'No card inserted', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR4001' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4001'), 'nl_NL', 'Y', 'No card inserted',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4001') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'No card inserted',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4001') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4001'), 'fr_FR', 'Y', 'Pas d''insertion de carte',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4001') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pas d''insertion de carte',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4001') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR4005','J010',
'Balance too low',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR4005' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Balance too low', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR4005' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4005'), 'nl_NL', 'Y', 'Balance too low',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4005') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Balance too low',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4005') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4005'), 'fr_FR', 'Y', 'Solde insuffisant',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4005') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Solde insuffisant',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4005') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR4009','J010',
'Terminal not ready (busy)',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR4009' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Terminal not ready (busy)', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR4009' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4009'), 'nl_NL', 'Y', 'Terminal not ready (busy)',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4009') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Terminal not ready (busy)',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4009') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4009'), 'fr_FR', 'Y', 'Terminal pas prèt (occupé)',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4009') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Terminal pas prèt (occupé)',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4009') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR5001','J010',
'Technical problem',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR5001' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Technical problem', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR5001' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5001'), 'nl_NL', 'Y', 'Technical problem',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5001') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Technical problem',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5001') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5001'), 'fr_FR', 'Y', 'Problème technique',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5001') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Problème technique',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5001') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR5002','J010',
'Transaction refused by the host',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR5002' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Transaction refused by the host', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR5002' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5002'), 'nl_NL', 'Y', 'Transaction refused by the host',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5002') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Transaction refused by the host',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5002') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5002'), 'fr_FR', 'Y', 'Transaction refusée par l''hôte',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5002') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Transaction refusée par l''hôte',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5002') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR5004','J010',
'Technical problem on host',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR5004' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Technical problem on host', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR5004' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5004'), 'nl_NL', 'Y', 'Technical problem on host',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5004') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Technical problem on host',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5004') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5004'), 'fr_FR', 'Y', 'Problème technique chez l''hôte',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5004') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Problème technique chez l''hôte',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5004') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR5009','J010',
'Transaction refused by the terminal',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR5009' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Transaction refused by the terminal', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR5009' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5009'), 'nl_NL', 'Y', 'Transaction refused by the terminal',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5009') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Transaction refused by the terminal',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5009') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5009'), 'fr_FR', 'Y', 'Transaction refusée par le terminal',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5009') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Transaction refusée par le terminal',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5009') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR5014','J010',
'Transaction refused by the card',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR5014' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Transaction refused by the card', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR5014' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5014'), 'nl_NL', 'Y', 'Transaction refused by the card',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5014') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Transaction refused by the card',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5014') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5014'), 'fr_FR', 'Y', 'Transaction refusée par la carte',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5014') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Transaction refusée par la carte',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5014') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_BEGINTRX','J010',
'Transaction in progress ...',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_BEGINTRX' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Transaction in progress ...', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ATOS_BEGINTRX' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_BEGINTRX'), 'nl_NL', 'Y', 'Transaction in progress ...',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_BEGINTRX') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Transaction in progress ...',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_BEGINTRX') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_BEGINTRX'), 'fr_FR', 'Y', 'Transaction en cours ...',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_BEGINTRX') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Transaction en cours ...',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_BEGINTRX') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_VENDORPRICE','J010',
'Purchase price : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_VENDORPRICE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Purchase price : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ATOS_VENDORPRICE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_VENDORPRICE'), 'nl_NL', 'Y', 'Purchase price : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_VENDORPRICE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Purchase price : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_VENDORPRICE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_VENDORPRICE'), 'fr_FR', 'Y', 'Prix d''achat : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_VENDORPRICE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prix d''achat : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_VENDORPRICE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPAIRINFO','J010',
'Repair informations',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPAIRINFO' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Repair informations', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPAIRINFO' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRINFO'), 'nl_NL', 'Y', 'Repair informations',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRINFO') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Repair informations',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRINFO') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRINFO'), 'fr_FR', 'Y', 'Informations réparation',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRINFO') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Informations réparation',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRINFO') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPADDR2','J010',
'Address 2 : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPADDR2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Address 2 : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPADDR2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPADDR2'), 'nl_NL', 'Y', 'Address 2 : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDR2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Address 2 : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDR2') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPADDR2'), 'fr_FR', 'Y', 'Addresse (suite) : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDR2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Addresse (suite) : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDR2') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPCOUNTRY','J010',
'Country : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPCOUNTRY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Country : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPCOUNTRY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPCOUNTRY'), 'nl_NL', 'Y', 'Country : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCOUNTRY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Country : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCOUNTRY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPCOUNTRY'), 'fr_FR', 'Y', 'Pays : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCOUNTRY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pays : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCOUNTRY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CLOSETOTALCOMPUTED','J010',
'Total calculated : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CLOSETOTALCOMPUTED' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Total calculated : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CLOSETOTALCOMPUTED' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCOMPUTED'), 'nl_NL', 'Y', 'Total calculated : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCOMPUTED') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Total calculated : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCOMPUTED') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCOMPUTED'), 'fr_FR', 'Y', 'Total calculé : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCOMPUTED') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Total calculé : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCOMPUTED') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CLOSEINDRAWER','J010',
'To keep in drawer : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CLOSEINDRAWER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'To keep in drawer : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CLOSEINDRAWER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSEINDRAWER'), 'nl_NL', 'Y', 'To keep in drawer : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEINDRAWER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'To keep in drawer : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEINDRAWER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSEINDRAWER'), 'fr_FR', 'Y', 'À garder en caisse : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEINDRAWER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'À garder en caisse : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEINDRAWER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CLOSELATER','J010',
'Later',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CLOSELATER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Later', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CLOSELATER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSELATER'), 'nl_NL', 'Y', 'Later',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSELATER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Later',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSELATER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSELATER'), 'fr_FR', 'Y', 'Plus tard',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSELATER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Plus tard',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSELATER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CUSTOMERNAME','J010',
'Last name *: ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CUSTOMERNAME' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Last name *: ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CUSTOMERNAME' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMERNAME'), 'nl_NL', 'Y', 'Last name *: ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMERNAME') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Last name *: ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMERNAME') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMERNAME'), 'fr_FR', 'Y', 'Nom *: ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMERNAME') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom *: ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMERNAME') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CUSTOMPERCARD','J010',
'Customer card',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CUSTOMPERCARD' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Customer card', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CUSTOMPERCARD' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERCARD'), 'nl_NL', 'Y', 'Customer card',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERCARD') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Customer card',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERCARD') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERCARD'), 'fr_FR', 'Y', 'Fiche client',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERCARD') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Fiche client',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERCARD') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ADDRESSBILL','J010',
'Billing address',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ADDRESSBILL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Billing address', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ADDRESSBILL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ADDRESSBILL'), 'nl_NL', 'Y', 'Billing address',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ADDRESSBILL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Billing address',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ADDRESSBILL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ADDRESSBILL'), 'fr_FR', 'Y', 'Adresse de facturation',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ADDRESSBILL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Adresse de facturation',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ADDRESSBILL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPAIRER','J010',
'Repairer : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPAIRER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Repairer : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPAIRER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRER'), 'nl_NL', 'Y', 'Repairer : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Repairer : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRER'), 'fr_FR', 'Y', 'Réparateur : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Réparateur : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPAIREREMAIL','J010',
'Customer email : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPAIREREMAIL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Customer email : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPAIREREMAIL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIREREMAIL'), 'nl_NL', 'Y', 'Customer email : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIREREMAIL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Customer email : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIREREMAIL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIREREMAIL'), 'fr_FR', 'Y', 'Email du client : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIREREMAIL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email du client : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIREREMAIL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPAIRGC','J010',
'G/C',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPAIRGC' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'G/C', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPAIRGC' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRGC'), 'nl_NL', 'Y', 'G/C',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRGC') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'G/C',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRGC') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRGC'), 'fr_FR', 'Y', 'G/C',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRGC') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'G/C',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRGC') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CMMTREP','J010',
'Comment',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CMMTREP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Comment', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CMMTREP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CMMTREP'), 'nl_NL', 'Y', 'Comment',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CMMTREP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Comment',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CMMTREP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CMMTREP'), 'fr_FR', 'Y', 'Commentaire',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CMMTREP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Commentaire',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CMMTREP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_ORDEREMPTY','J010',
'Order empty',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_ORDEREMPTY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Order empty', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_ORDEREMPTY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_ORDEREMPTY'), 'nl_NL', 'Y', 'Order empty',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_ORDEREMPTY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Order empty',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_ORDEREMPTY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_ORDEREMPTY'), 'fr_FR', 'Y', 'Commande vide',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_ORDEREMPTY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Commande vide',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_ORDEREMPTY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_OK_CUSTOMERCREATED','J010',
' Customer successfully create',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_OK_CUSTOMERCREATED' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = ' Customer successfully create', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_OK_CUSTOMERCREATED' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_OK_CUSTOMERCREATED'), 'nl_NL', 'Y', ' Customer successfully create',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OK_CUSTOMERCREATED') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = ' Customer successfully create',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OK_CUSTOMERCREATED') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_OK_CUSTOMERCREATED'), 'fr_FR', 'Y', ' Client ajouté avec succès',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OK_CUSTOMERCREATED') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = ' Client ajouté avec succès',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OK_CUSTOMERCREATED') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_WARRANTY','J010',
'Warranty',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_WARRANTY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Warranty', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_WARRANTY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_WARRANTY'), 'nl_NL', 'Y', 'Warranty',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_WARRANTY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Warranty',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_WARRANTY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_WARRANTY'), 'fr_FR', 'Y', 'Garantie',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_WARRANTY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Garantie',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_WARRANTY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPAIRDOA','J010',
'DOA',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPAIRDOA' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'DOA', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPAIRDOA' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRDOA'), 'nl_NL', 'Y', 'DOA',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRDOA') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'DOA',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRDOA') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRDOA'), 'fr_FR', 'Y', 'DOA',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRDOA') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'DOA',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRDOA') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPAIRSTOCK','J010',
'Stock',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPAIRSTOCK' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Stock', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPAIRSTOCK' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRSTOCK'), 'nl_NL', 'Y', 'Stock',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRSTOCK') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Stock',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRSTOCK') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRSTOCK'), 'fr_FR', 'Y', 'Stock',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRSTOCK') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Stock',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRSTOCK') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_STATTO','J010',
'To : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_STATTO' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'To : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_STATTO' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_STATTO'), 'nl_NL', 'Y', 'To : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STATTO') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'To : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STATTO') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_STATTO'), 'fr_FR', 'Y', 'À : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STATTO') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'À : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STATTO') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_STATPERVENDOR','J010',
'Statistics of sales by vendor',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_STATPERVENDOR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Statistics of sales by vendor', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_STATPERVENDOR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_STATPERVENDOR'), 'nl_NL', 'Y', 'Statistics of sales by vendor',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STATPERVENDOR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Statistics of sales by vendor',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STATPERVENDOR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_STATPERVENDOR'), 'fr_FR', 'Y', 'Statistique des ventes par vendeur',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STATPERVENDOR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Statistique des ventes par vendeur',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STATPERVENDOR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SEARCHCUSTOMER','J010',
'Search customer',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SEARCHCUSTOMER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Search customer', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SEARCHCUSTOMER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SEARCHCUSTOMER'), 'nl_NL', 'Y', 'Search customer',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SEARCHCUSTOMER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Search customer',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SEARCHCUSTOMER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SEARCHCUSTOMER'), 'fr_FR', 'Y', 'Rechercher un client',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SEARCHCUSTOMER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Rechercher un client',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SEARCHCUSTOMER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_SO','J010',
'Error during the order : ',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_SO' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Error during the order : ', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_SO' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_SO'), 'nl_NL', 'Y', 'Error during the order : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_SO') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Error during the order : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_SO') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_SO'), 'fr_FR', 'Y', 'Erreur lors de la commande : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_SO') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Erreur lors de la commande : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_SO') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_CLIENTMANDATORYQUOTE','J010',
'Customer is mandatory for quote',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_CLIENTMANDATORYQUOTE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Customer is mandatory for quote', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_CLIENTMANDATORYQUOTE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYQUOTE'), 'nl_NL', 'Y', 'Customer is mandatory for quote',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYQUOTE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Customer is mandatory for quote',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYQUOTE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYQUOTE'), 'fr_FR', 'Y', 'Client obligatoire pour un devis',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYQUOTE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Client obligatoire pour un devis',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYQUOTE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_CMTMISSED','J010',
'Comment is missed',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_CMTMISSED' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Comment is missed', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_CMTMISSED' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CMTMISSED'), 'nl_NL', 'Y', 'Comment is missed',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CMTMISSED') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Comment is missed',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CMTMISSED') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CMTMISSED'), 'fr_FR', 'Y', 'Commentaire manquant',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CMTMISSED') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Commentaire manquant',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CMTMISSED') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_INFOACTIONMISSING','J010',
'Missing information for action ',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_INFOACTIONMISSING' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Missing information for action ', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_INFOACTIONMISSING' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_INFOACTIONMISSING'), 'nl_NL', 'Y', 'Missing information for action ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_INFOACTIONMISSING') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Missing information for action ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_INFOACTIONMISSING') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_INFOACTIONMISSING'), 'fr_FR', 'Y', 'Informations manquantes pour l''action ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_INFOACTIONMISSING') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Informations manquantes pour l''action ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_INFOACTIONMISSING') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_DESCBREAKDOWN','J010',
'Description of failure : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_DESCBREAKDOWN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Description of failure : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_DESCBREAKDOWN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_DESCBREAKDOWN'), 'nl_NL', 'Y', 'Description of failure : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DESCBREAKDOWN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Description of failure : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DESCBREAKDOWN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_DESCBREAKDOWN'), 'fr_FR', 'Y', 'Description de la panne : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DESCBREAKDOWN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Description de la panne : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DESCBREAKDOWN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_NOTNOSERIE','J010',
'No serial number',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_NOTNOSERIE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'No serial number', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_NOTNOSERIE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_NOTNOSERIE'), 'nl_NL', 'Y', 'No serial number',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOTNOSERIE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'No serial number',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOTNOSERIE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_NOTNOSERIE'), 'fr_FR', 'Y', 'Pas de numéro de série',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOTNOSERIE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pas de numéro de série',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOTNOSERIE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ACCESSORY','J010',
'Accessories : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ACCESSORY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Accessories : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ACCESSORY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACCESSORY'), 'nl_NL', 'Y', 'Accessories : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACCESSORY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Accessories : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACCESSORY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ACCESSORY'), 'fr_FR', 'Y', 'Accessoires : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACCESSORY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Accessoires : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ACCESSORY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODUCTSTATE','J010',
'State of product : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODUCTSTATE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'State of product : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODUCTSTATE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCTSTATE'), 'nl_NL', 'Y', 'State of product : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTSTATE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'State of product : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTSTATE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCTSTATE'), 'fr_FR', 'Y', 'État de l''article : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTSTATE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'État de l''article : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTSTATE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_NOTACCESSORY','J010',
'No accessories',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_NOTACCESSORY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'No accessories', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_NOTACCESSORY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_NOTACCESSORY'), 'nl_NL', 'Y', 'No accessories',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOTACCESSORY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'No accessories',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOTACCESSORY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_NOTACCESSORY'), 'fr_FR', 'Y', 'Pas d''accessoires',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOTACCESSORY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pas d''accessoires',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOTACCESSORY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PURCHASEDATE','J010',
'Purchase date : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PURCHASEDATE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Purchase date : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PURCHASEDATE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PURCHASEDATE'), 'nl_NL', 'Y', 'Purchase date : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PURCHASEDATE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Purchase date : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PURCHASEDATE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PURCHASEDATE'), 'fr_FR', 'Y', 'Date d''achat : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PURCHASEDATE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Date d''achat : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PURCHASEDATE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_REPAIRQTY','J010',
'Incorrect total qty or incorrect number of lines',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_REPAIRQTY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Incorrect total qty or incorrect number of lines', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_REPAIRQTY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_REPAIRQTY'), 'nl_NL', 'Y', 'Incorrect total qty or incorrect number of lines',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_REPAIRQTY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Incorrect total qty or incorrect number of lines',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_REPAIRQTY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_REPAIRQTY'), 'fr_FR', 'Y', 'Qté totale incorrecet ou nombre de lignes incorrect',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_REPAIRQTY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Qté totale incorrecet ou nombre de lignes incorrect',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_REPAIRQTY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_CENTRALCONNECTION','J010',
'Connection problem with central database (try later)',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_CENTRALCONNECTION' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Connection problem with central database (try later)', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_CENTRALCONNECTION' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CENTRALCONNECTION'), 'nl_NL', 'Y', 'Connection problem with central database (try later)',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CENTRALCONNECTION') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Connection problem with central database (try later)',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CENTRALCONNECTION') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CENTRALCONNECTION'), 'fr_FR', 'Y', 'Problème de connection avec la base de donnée centrale (essayer plus tard)',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CENTRALCONNECTION') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Problème de connection avec la base de donnée centrale (essayer plus tard)',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CENTRALCONNECTION') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHORT_SAVE','J010',
'Save',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHORT_SAVE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Save', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHORT_SAVE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_SAVE'), 'nl_NL', 'Y', 'Save',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SAVE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Save',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SAVE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_SAVE'), 'fr_FR', 'Y', 'Enregistrer',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SAVE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Enregistrer',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SAVE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHORT_BUTTON','J010',
'Button : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHORT_BUTTON' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Button : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHORT_BUTTON' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_BUTTON'), 'nl_NL', 'Y', 'Button : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_BUTTON') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Button : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_BUTTON') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_BUTTON'), 'fr_FR', 'Y', 'Bouton : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_BUTTON') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Bouton : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_BUTTON') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHORT_SAVEBP','J010',
'Save customer',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHORT_SAVEBP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Save customer', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHORT_SAVEBP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_SAVEBP'), 'nl_NL', 'Y', 'Save customer',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SAVEBP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Save customer',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SAVEBP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_SAVEBP'), 'fr_FR', 'Y', 'Sauvegarder client',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SAVEBP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Sauvegarder client',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SAVEBP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHORT_GENERAL','J010',
'General',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHORT_GENERAL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'General', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHORT_GENERAL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_GENERAL'), 'nl_NL', 'Y', 'General',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_GENERAL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'General',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_GENERAL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_GENERAL'), 'fr_FR', 'Y', 'Général',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_GENERAL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Général',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_GENERAL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHORT_SEARCHADVPRODUCT','J010',
'Search advance',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHORT_SEARCHADVPRODUCT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Search advance', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHORT_SEARCHADVPRODUCT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_SEARCHADVPRODUCT'), 'nl_NL', 'Y', 'Search advance',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SEARCHADVPRODUCT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Search advance',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SEARCHADVPRODUCT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_SEARCHADVPRODUCT'), 'fr_FR', 'Y', 'Recherche avancée',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SEARCHADVPRODUCT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Recherche avancée',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SEARCHADVPRODUCT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHORT_ZOOMPRODUCT','J010',
'Zoom product',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHORT_ZOOMPRODUCT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Zoom product', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHORT_ZOOMPRODUCT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_ZOOMPRODUCT'), 'nl_NL', 'Y', 'Zoom product',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_ZOOMPRODUCT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Zoom product',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_ZOOMPRODUCT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_ZOOMPRODUCT'), 'fr_FR', 'Y', 'Zoom fiche produit',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_ZOOMPRODUCT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Zoom fiche produit',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_ZOOMPRODUCT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPAIRDOCUMENT','J010',
'Repair document : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPAIRDOCUMENT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Repair document : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPAIRDOCUMENT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRDOCUMENT'), 'nl_NL', 'Y', 'Repair document : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRDOCUMENT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Repair document : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRDOCUMENT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRDOCUMENT'), 'fr_FR', 'Y', 'Dossier de réparation : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRDOCUMENT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Dossier de réparation : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRDOCUMENT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHORT_TITLE','J010',
'POS shortcuts configuration',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHORT_TITLE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'POS shortcuts configuration', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHORT_TITLE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_TITLE'), 'nl_NL', 'Y', 'POS shortcuts configuration',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_TITLE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'POS shortcuts configuration',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_TITLE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_TITLE'), 'fr_FR', 'Y', 'Configuration des raccourcis du POS',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_TITLE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Configuration des raccourcis du POS',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_TITLE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHORT_MENU','J010',
'Menu : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHORT_MENU' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Menu : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHORT_MENU' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_MENU'), 'nl_NL', 'Y', 'Menu : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_MENU') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Menu : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_MENU') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_MENU'), 'fr_FR', 'Y', 'Menu : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_MENU') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Menu : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_MENU') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHORT_SEARCHPRODUCT','J010',
'Search product',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHORT_SEARCHPRODUCT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Search product', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHORT_SEARCHPRODUCT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_SEARCHPRODUCT'), 'nl_NL', 'Y', 'Search product',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SEARCHPRODUCT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Search product',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SEARCHPRODUCT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_SEARCHPRODUCT'), 'fr_FR', 'Y', 'Rechercher produit',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SEARCHPRODUCT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Rechercher produit',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_SEARCHPRODUCT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_QTYCONS','J010',
'Consignment qty : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_QTYCONS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Consignment qty : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_QTYCONS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QTYCONS'), 'nl_NL', 'Y', 'Consignment qty : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYCONS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Consignment qty : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYCONS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_QTYCONS'), 'fr_FR', 'Y', 'Qté en consignation : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYCONS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Qté en consignation : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_QTYCONS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHIPMENTREPAIR','J010',
'Shipping repairs',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHIPMENTREPAIR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Shipping repairs', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHIPMENTREPAIR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHIPMENTREPAIR'), 'nl_NL', 'Y', 'Shipping repairs',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHIPMENTREPAIR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Shipping repairs',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHIPMENTREPAIR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHIPMENTREPAIR'), 'fr_FR', 'Y', 'Expédition des réparations',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHIPMENTREPAIR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Expédition des réparations',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHIPMENTREPAIR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHIPDATE','J010',
'Shipment date : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHIPDATE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Shipment date : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHIPDATE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHIPDATE'), 'nl_NL', 'Y', 'Shipment date : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHIPDATE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Shipment date : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHIPDATE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHIPDATE'), 'fr_FR', 'Y', 'Date de l''expédition : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHIPDATE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Date de l''expédition : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHIPDATE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHIPMENT','J010',
'Ship',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHIPMENT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Ship', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHIPMENT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHIPMENT'), 'nl_NL', 'Y', 'Ship',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHIPMENT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ship',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHIPMENT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHIPMENT'), 'fr_FR', 'Y', 'Expédier',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHIPMENT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Expédier',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHIPMENT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_TOTALSHIPMENT','J010',
' ship repair(s)',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_TOTALSHIPMENT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = ' ship repair(s)', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_TOTALSHIPMENT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TOTALSHIPMENT'), 'nl_NL', 'Y', ' ship repair(s)',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTALSHIPMENT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = ' ship repair(s)',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTALSHIPMENT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TOTALSHIPMENT'), 'fr_FR', 'Y', ' réparation(s) à expédier',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTALSHIPMENT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = ' réparation(s) à expédier',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTALSHIPMENT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHORT_ERR','J010',
'Same shortcut or shorcuts invalid',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHORT_ERR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Same shortcut or shorcuts invalid', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHORT_ERR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_ERR'), 'nl_NL', 'Y', 'Same shortcut or shorcuts invalid',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_ERR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Same shortcut or shorcuts invalid',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_ERR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_ERR'), 'fr_FR', 'Y', 'Raccourcis identiques ou raccourcis incorrectes',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_ERR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Raccourcis identiques ou raccourcis incorrectes',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_ERR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHORT_TAB','J010',
'Tab : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHORT_TAB' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Tab : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHORT_TAB' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_TAB'), 'nl_NL', 'Y', 'Tab : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_TAB') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tab : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_TAB') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_TAB'), 'fr_FR', 'Y', 'Onglet : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_TAB') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Onglet : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_TAB') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHORT_CREATEBP','J010',
'Create customer',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHORT_CREATEBP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Create customer', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHORT_CREATEBP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_CREATEBP'), 'nl_NL', 'Y', 'Create customer',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_CREATEBP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Create customer',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_CREATEBP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_CREATEBP'), 'fr_FR', 'Y', 'Créer un nouveau client',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_CREATEBP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Créer un nouveau client',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_CREATEBP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRINT','J010',
'Print',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRINT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Print', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRINT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRINT'), 'nl_NL', 'Y', 'Print',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRINT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Print',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRINT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRINT'), 'fr_FR', 'Y', 'Imprimer',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRINT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Imprimer',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRINT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SHORT_ZOOMCUSTO','J010',
'Zoom customer',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SHORT_ZOOMCUSTO' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Zoom customer', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SHORT_ZOOMCUSTO' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_ZOOMCUSTO'), 'nl_NL', 'Y', 'Zoom customer',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_ZOOMCUSTO') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Zoom customer',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_ZOOMCUSTO') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SHORT_ZOOMCUSTO'), 'fr_FR', 'Y', 'Zoom fiche client',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_ZOOMCUSTO') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Zoom fiche client',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SHORT_ZOOMCUSTO') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_DATEACTION','J010',
'Date : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_DATEACTION' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Date : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_DATEACTION' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_DATEACTION'), 'nl_NL', 'Y', 'Date : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DATEACTION') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Date : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DATEACTION') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_DATEACTION'), 'fr_FR', 'Y', 'Date livraison souhaitée : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DATEACTION') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Date livraison souhaitée : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_DATEACTION') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPADDRBOX','J010',
'Box : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPADDRBOX' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Box : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPADDRBOX' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPADDRBOX'), 'nl_NL', 'Y', 'Box : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDRBOX') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Box : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDRBOX') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPADDRBOX'), 'fr_FR', 'Y', 'Boite : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDRBOX') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Boite : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDRBOX') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_JBOSS','J010',
'JBoss server: ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_JBOSS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'JBoss server: ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_JBOSS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_JBOSS'), 'nl_NL', 'Y', 'JBoss server: ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_JBOSS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'JBoss server: ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_JBOSS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_JBOSS'), 'fr_FR', 'Y', 'Hôte serveur JBoss : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_JBOSS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Hôte serveur JBoss : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_JBOSS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_JBOSS_PORT','J010',
'JBoss Port server : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_JBOSS_PORT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'JBoss Port server : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_JBOSS_PORT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_JBOSS_PORT'), 'nl_NL', 'Y', 'JBoss Port server : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_JBOSS_PORT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'JBoss Port server : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_JBOSS_PORT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_JBOSS_PORT'), 'fr_FR', 'Y', 'Port serveur JBoss : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_JBOSS_PORT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Port serveur JBoss : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_JBOSS_PORT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_TENANT','J010',
'Tenant : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_TENANT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Tenant : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_TENANT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_TENANT'), 'nl_NL', 'Y', 'Tenant : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_TENANT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tenant : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_TENANT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_TENANT'), 'fr_FR', 'Y', 'Société : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_TENANT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Société : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_TENANT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_ORG','J010',
'Organization : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_ORG' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Organization : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_ORG' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_ORG'), 'nl_NL', 'Y', 'Organization : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_ORG') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Organization : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_ORG') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_ORG'), 'fr_FR', 'Y', 'Organisation : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_ORG') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Organisation : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_ORG') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_BPGROUP','J010',
'Partner Group :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_BPGROUP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Partner Group :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_BPGROUP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP'), 'nl_NL', 'Y', 'Partner Group :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Partner Group :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP'), 'fr_FR', 'Y', 'Groupe de tiers :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Groupe de tiers :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_REPAIRERGROUP','J010',
'Repairer Group :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_REPAIRERGROUP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Repairer Group :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_REPAIRERGROUP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_REPAIRERGROUP'), 'nl_NL', 'Y', 'Repairer Group :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_REPAIRERGROUP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Repairer Group :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_REPAIRERGROUP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_REPAIRERGROUP'), 'fr_FR', 'Y', 'Groupe réparateur :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_REPAIRERGROUP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Groupe réparateur :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_REPAIRERGROUP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_BPGEN','J010',
'Generic customer :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_BPGEN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Generic customer :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_BPGEN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_BPGEN'), 'nl_NL', 'Y', 'Generic customer :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGEN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Generic customer :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGEN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_BPGEN'), 'fr_FR', 'Y', 'Client générique :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGEN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Client générique :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGEN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_SUPPGEN','J010',
'Generic supplier :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_SUPPGEN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Generic supplier :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_SUPPGEN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_SUPPGEN'), 'nl_NL', 'Y', 'Generic supplier :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_SUPPGEN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Generic supplier :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_SUPPGEN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_SUPPGEN'), 'fr_FR', 'Y', 'Fournisseur générique :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_SUPPGEN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Fournisseur générique :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_SUPPGEN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_PL','J010',
'Price list:',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_PL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Price list:', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_PL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_PL'), 'nl_NL', 'Y', 'Price list:',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_PL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Price list:',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_PL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_PL'), 'fr_FR', 'Y', 'Liste de prix:',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_PL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Liste de prix:',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_PL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_PAY','J010',
'Default payment :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_PAY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Default payment :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_PAY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_PAY'), 'nl_NL', 'Y', 'Default payment :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_PAY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Default payment :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_PAY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_PAY'), 'fr_FR', 'Y', 'Paiement lors d''un décaissement :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_PAY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Paiement lors d''un décaissement :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_PAY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_MAILTEMPLATE','J010',
'Email template :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_MAILTEMPLATE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Email template :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_MAILTEMPLATE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_MAILTEMPLATE'), 'nl_NL', 'Y', 'Email template :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_MAILTEMPLATE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email template :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_MAILTEMPLATE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_MAILTEMPLATE'), 'fr_FR', 'Y', 'Template email SAV :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_MAILTEMPLATE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Template email SAV :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_MAILTEMPLATE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_LANG','J010',
'Language :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_LANG' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Language :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_LANG' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_LANG'), 'nl_NL', 'Y', 'Language :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_LANG') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Language :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_LANG') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_LANG'), 'fr_FR', 'Y', 'Langue :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_LANG') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Langue :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_LANG') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_CURR','J010',
'Currency :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_CURR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Currency :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_CURR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_CURR'), 'nl_NL', 'Y', 'Currency :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CURR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Currency :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CURR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_CURR'), 'fr_FR', 'Y', 'Devise :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CURR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Devise :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CURR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_CASHER','J010',
'Cash desk :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_CASHER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Cash desk :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_CASHER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_CASHER'), 'nl_NL', 'Y', 'Cash desk :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CASHER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Cash desk :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CASHER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_CASHER'), 'fr_FR', 'Y', 'Caisse :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CASHER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Caisse :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CASHER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_POSNUM','J010',
'POS #:',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_POSNUM' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'POS #:', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_POSNUM' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_POSNUM'), 'nl_NL', 'Y', 'POS #:',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_POSNUM') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'POS #:',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_POSNUM') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_POSNUM'), 'fr_FR', 'Y', 'Numéro du POS :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_POSNUM') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Numéro du POS :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_POSNUM') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_JASPERMISS','J010',
'Jasper file missed: ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_JASPERMISS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Jasper file missed: ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_JASPERMISS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_JASPERMISS'), 'nl_NL', 'Y', 'Jasper file missed: ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_JASPERMISS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Jasper file missed: ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_JASPERMISS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_JASPERMISS'), 'fr_FR', 'Y', 'Fichier Jasper manquant: ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_JASPERMISS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Fichier Jasper manquant: ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_JASPERMISS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_USED','J010',
'POS # is in use',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_USED' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'POS # is in use', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_USED' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_USED'), 'nl_NL', 'Y', 'POS # is in use',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_USED') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'POS # is in use',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_USED') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_USED'), 'fr_FR', 'Y', 'Le numéro de ce POS est utilisé par un autre POS',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_USED') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Le numéro de ce POS est utilisé par un autre POS',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_USED') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_CORRUPT','J010',
'The configuration file is corrupted : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_CORRUPT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'The configuration file is corrupted : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_CORRUPT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_CORRUPT'), 'nl_NL', 'Y', 'The configuration file is corrupted : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CORRUPT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'The configuration file is corrupted : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CORRUPT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_CORRUPT'), 'fr_FR', 'Y', 'Le fichier de configuration est corrompu : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CORRUPT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Le fichier de configuration est corrompu : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CORRUPT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_SHORTCUTCORRUPT','J010',
'The shortcut conf file is corrupted : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_SHORTCUTCORRUPT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'The shortcut conf file is corrupted : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_SHORTCUTCORRUPT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_SHORTCUTCORRUPT'), 'nl_NL', 'Y', 'The shortcut conf file is corrupted : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_SHORTCUTCORRUPT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'The shortcut conf file is corrupted : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_SHORTCUTCORRUPT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_SHORTCUTCORRUPT'), 'fr_FR', 'Y', 'Le fichier de raccourcis est corrompu: ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_SHORTCUTCORRUPT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Le fichier de raccourcis est corrompu: ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_SHORTCUTCORRUPT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPADDRNUMBER','J010',
'Number : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPADDRNUMBER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Number : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPADDRNUMBER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPADDRNUMBER'), 'nl_NL', 'Y', 'Number : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDRNUMBER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Number : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDRNUMBER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPADDRNUMBER'), 'fr_FR', 'Y', 'N° : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDRNUMBER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'N° : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDRNUMBER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_CONF','J010',
'POS Configuration',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_CONF' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'POS Configuration', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_CONF' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_CONF'), 'nl_NL', 'Y', 'POS Configuration',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CONF') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'POS Configuration',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CONF') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_CONF'), 'fr_FR', 'Y', 'Configuration du POS',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CONF') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Configuration du POS',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_CONF') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CUSTOMERFIRSTNAME','J010',
'First name *: ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CUSTOMERFIRSTNAME' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'First name *: ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CUSTOMERFIRSTNAME' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMERFIRSTNAME'), 'nl_NL', 'Y', 'First name *: ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMERFIRSTNAME') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'First name *: ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMERFIRSTNAME') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMERFIRSTNAME'), 'fr_FR', 'Y', 'Prénom *: ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMERFIRSTNAME') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prénom *: ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMERFIRSTNAME') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_CLIENTMANDATORYREPAIR','J010',
'Customer is mandatory for repair',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_CLIENTMANDATORYREPAIR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Customer is mandatory for repair', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_CLIENTMANDATORYREPAIR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYREPAIR'), 'nl_NL', 'Y', 'Customer is mandatory for repair',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYREPAIR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Customer is mandatory for repair',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYREPAIR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYREPAIR'), 'fr_FR', 'Y', 'Client obligatoire pour une réparation',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYREPAIR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Client obligatoire pour une réparation',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYREPAIR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_REPAIRNOTSELECTED','J010',
'The type of repair is not selected for product ',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_REPAIRNOTSELECTED' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'The type of repair is not selected for product ', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_REPAIRNOTSELECTED' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_REPAIRNOTSELECTED'), 'nl_NL', 'Y', 'The type of repair is not selected for product ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_REPAIRNOTSELECTED') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'The type of repair is not selected for product ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_REPAIRNOTSELECTED') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_REPAIRNOTSELECTED'), 'fr_FR', 'Y', 'Le type de réparation n''est pas sélectionné pour le produit ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_REPAIRNOTSELECTED') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Le type de réparation n''est pas sélectionné pour le produit ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_REPAIRNOTSELECTED') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPAIRSTORE','J010',
'Store rep. ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPAIRSTORE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Store rep. ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPAIRSTORE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRSTORE'), 'nl_NL', 'Y', 'Store rep. ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRSTORE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Store rep. ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRSTORE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRSTORE'), 'fr_FR', 'Y', 'Rép. mag. ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRSTORE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Rép. mag. ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRSTORE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPAIRHOME','J010',
'Home rep. ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPAIRHOME' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Home rep. ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPAIRHOME' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRHOME'), 'nl_NL', 'Y', 'Home rep. ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRHOME') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Home rep. ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRHOME') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRHOME'), 'fr_FR', 'Y', 'Rép. dom. ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRHOME') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Rép. dom. ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRHOME') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_RETURNINFO','J010',
'Return informations',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_RETURNINFO' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Return informations', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_RETURNINFO' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_RETURNINFO'), 'nl_NL', 'Y', 'Return informations',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RETURNINFO') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Return informations',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RETURNINFO') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_RETURNINFO'), 'fr_FR', 'Y', 'Info reprise',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RETURNINFO') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Info reprise',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RETURNINFO') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_EMAIL','J010',
'Email invalid',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_EMAIL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Email invalid', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_EMAIL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_EMAIL'), 'nl_NL', 'Y', 'Email invalid',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_EMAIL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email invalid',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_EMAIL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_EMAIL'), 'fr_FR', 'Y', 'Email invalide',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_EMAIL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email invalide',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_EMAIL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_ADDRESS','J010',
'Address is compulsory',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_ADDRESS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Address is compulsory', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_ADDRESS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_ADDRESS'), 'nl_NL', 'Y', 'Address is compulsory',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_ADDRESS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Address is compulsory',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_ADDRESS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_ADDRESS'), 'fr_FR', 'Y', 'L''adresse est obligatoire',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_ADDRESS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'L''adresse est obligatoire',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_ADDRESS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_FIELDSCOMPULSORY','J010',
'Fields marked with (*) are mandatory',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_FIELDSCOMPULSORY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Fields marked with (*) are mandatory', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_FIELDSCOMPULSORY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_FIELDSCOMPULSORY'), 'nl_NL', 'Y', 'Fields marked with (*) are mandatory',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_FIELDSCOMPULSORY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Fields marked with (*) are mandatory',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_FIELDSCOMPULSORY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_FIELDSCOMPULSORY'), 'fr_FR', 'Y', 'Les champs précédés de (*) sont obligatoires',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_FIELDSCOMPULSORY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Les champs précédés de (*) sont obligatoires',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_FIELDSCOMPULSORY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_SAVE','J010',
'GRAVE : canot save the ',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_SAVE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'GRAVE : canot save the ', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_SAVE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_SAVE'), 'nl_NL', 'Y', 'GRAVE : canot save the ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_SAVE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'GRAVE : canot save the ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_SAVE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_SAVE'), 'fr_FR', 'Y', 'Erreur lors de l''enregistrement de la ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_SAVE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Erreur lors de l''enregistrement de la ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_SAVE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPNAMETAB','J010',
'Name',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPNAMETAB' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Name', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPNAMETAB' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPNAMETAB'), 'nl_NL', 'Y', 'Name',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPNAMETAB') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Name',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPNAMETAB') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPNAMETAB'), 'fr_FR', 'Y', 'Nom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPNAMETAB') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPNAMETAB') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPPHONETAB','J010',
'Phone',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPPHONETAB' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Phone', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPPHONETAB' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPPHONETAB'), 'nl_NL', 'Y', 'Phone',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPPHONETAB') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Phone',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPPHONETAB') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPPHONETAB'), 'fr_FR', 'Y', 'Téléphone',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPPHONETAB') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Téléphone',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPPHONETAB') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPZIPTAB','J010',
'Zip',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPZIPTAB' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Zip', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPZIPTAB' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPZIPTAB'), 'nl_NL', 'Y', 'Zip',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPZIPTAB') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Zip',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPZIPTAB') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPZIPTAB'), 'fr_FR', 'Y', 'CP',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPZIPTAB') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'CP',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPZIPTAB') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPCITYTAB','J010',
'City',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPCITYTAB' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'City', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPCITYTAB' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPCITYTAB'), 'nl_NL', 'Y', 'City',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCITYTAB') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'City',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCITYTAB') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPCITYTAB'), 'fr_FR', 'Y', 'Ville',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCITYTAB') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ville',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPCITYTAB') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPRINTDOC','J010',
'Document No',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPRINTDOC' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Document No', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPRINTDOC' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPRINTDOC'), 'nl_NL', 'Y', 'Document No',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTDOC') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Document No',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTDOC') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPRINTDOC'), 'fr_FR', 'Y', 'N° de Document',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTDOC') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'N° de Document',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTDOC') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPRINTBP','J010',
'Customer name',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPRINTBP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Customer name', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPRINTBP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPRINTBP'), 'nl_NL', 'Y', 'Customer name',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTBP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Customer name',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTBP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPRINTBP'), 'fr_FR', 'Y', 'Nom du client',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTBP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom du client',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPRINTBP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SALESREPORTSALES','J010',
'Sales',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SALESREPORTSALES' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Sales', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SALESREPORTSALES' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SALESREPORTSALES'), 'nl_NL', 'Y', 'Sales',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTSALES') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Sales',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTSALES') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SALESREPORTSALES'), 'fr_FR', 'Y', 'Ventes',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTSALES') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ventes',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SALESREPORTSALES') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CASH','J010',
'Cash',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CASH' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Cash', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CASH' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CASH'), 'nl_NL', 'Y', 'Cash',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CASH') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Cash',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CASH') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CASH'), 'fr_FR', 'Y', 'Espèces',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CASH') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Espèces',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CASH') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CLOSETOTALCARD','J010',
'Total card : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CLOSETOTALCARD' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Total card : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CLOSETOTALCARD' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCARD'), 'nl_NL', 'Y', 'Total card : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCARD') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Total card : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCARD') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCARD'), 'fr_FR', 'Y', 'Total cartes : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCARD') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Total cartes : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCARD') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CLOSEAMTTOTAL','J010',
'Total amount : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CLOSEAMTTOTAL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Total amount : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CLOSEAMTTOTAL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTTOTAL'), 'nl_NL', 'Y', 'Total amount : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTTOTAL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Total amount : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTTOTAL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTTOTAL'), 'fr_FR', 'Y', 'Montant total : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTTOTAL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Montant total : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTTOTAL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CLOSE','J010',
'Close',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CLOSE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Close', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CLOSE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSE'), 'nl_NL', 'Y', 'Close',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Close',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSE'), 'fr_FR', 'Y', 'Fermer',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Fermer',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_TAXID','J010',
'VAT No : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_TAXID' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'VAT No : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_TAXID' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TAXID'), 'nl_NL', 'Y', 'VAT No : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TAXID') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'VAT No : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TAXID') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TAXID'), 'fr_FR', 'Y', 'Numéro TVA : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TAXID') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Numéro TVA : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TAXID') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CUSTOMPEROPTIN','J010',
'Opt-in',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CUSTOMPEROPTIN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Opt-in', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CUSTOMPEROPTIN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMPEROPTIN'), 'nl_NL', 'Y', 'Opt-in',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPEROPTIN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Opt-in',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPEROPTIN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMPEROPTIN'), 'fr_FR', 'Y', 'Opt-in',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPEROPTIN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Opt-in',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPEROPTIN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CUSTOMPERCARDINFO','J010',
'General Information',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CUSTOMPERCARDINFO' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'General Information', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CUSTOMPERCARDINFO' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERCARDINFO'), 'nl_NL', 'Y', 'General Information',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERCARDINFO') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'General Information',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERCARDINFO') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERCARDINFO'), 'fr_FR', 'Y', 'Informations générales',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERCARDINFO') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Informations générales',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERCARDINFO') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_OK_CUSTOMEREDIT','J010',
' Customer successfully edit',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_OK_CUSTOMEREDIT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = ' Customer successfully edit', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_OK_CUSTOMEREDIT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_OK_CUSTOMEREDIT'), 'nl_NL', 'Y', ' Customer successfully edit',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OK_CUSTOMEREDIT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = ' Customer successfully edit',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OK_CUSTOMEREDIT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_OK_CUSTOMEREDIT'), 'fr_FR', 'Y', ' Client modifié avec succès',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OK_CUSTOMEREDIT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = ' Client modifié avec succès',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_OK_CUSTOMEREDIT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SENDMAILTOREPAIRER','J010',
'Send email to repairer',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SENDMAILTOREPAIRER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Send email to repairer', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SENDMAILTOREPAIRER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SENDMAILTOREPAIRER'), 'nl_NL', 'Y', 'Send email to repairer',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SENDMAILTOREPAIRER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Send email to repairer',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SENDMAILTOREPAIRER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SENDMAILTOREPAIRER'), 'fr_FR', 'Y', 'Envoyer un email au réparateur',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SENDMAILTOREPAIRER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Envoyer un email au réparateur',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SENDMAILTOREPAIRER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPAIRCODE2','J010',
'Code 2',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPAIRCODE2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Code 2', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPAIRCODE2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRCODE2'), 'nl_NL', 'Y', 'Code 2',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRCODE2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Code 2',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRCODE2') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRCODE2'), 'fr_FR', 'Y', 'Code2',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRCODE2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Code2',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRCODE2') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_STATFROM','J010',
'From : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_STATFROM' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'From : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_STATFROM' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_STATFROM'), 'nl_NL', 'Y', 'From : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STATFROM') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'From : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STATFROM') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_STATFROM'), 'fr_FR', 'Y', 'De : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STATFROM') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'De : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_STATFROM') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPAIRSTATUS','J010',
'Repair status',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPAIRSTATUS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Repair status', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPAIRSTATUS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRSTATUS'), 'nl_NL', 'Y', 'Repair status',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRSTATUS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Repair status',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRSTATUS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPAIRSTATUS'), 'fr_FR', 'Y', 'Statut de la réparation',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRSTATUS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Statut de la réparation',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPAIRSTATUS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BALANCE','J010',
'Balance : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BALANCE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Balance : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BALANCE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BALANCE'), 'nl_NL', 'Y', 'Balance : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BALANCE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Balance : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BALANCE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BALANCE'), 'fr_FR', 'Y', 'Solde : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BALANCE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Solde : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BALANCE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_AMTINVALID','J010',
'Amount paid not enough',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_AMTINVALID' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Amount paid not enough', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_AMTINVALID' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_AMTINVALID'), 'nl_NL', 'Y', 'Amount paid not enough',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_AMTINVALID') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Amount paid not enough',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_AMTINVALID') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_AMTINVALID'), 'fr_FR', 'Y', 'Montant payé insuffisant',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_AMTINVALID') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Montant payé insuffisant',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_AMTINVALID') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_AMTINVALIDCONTINUE','J010',
'Amount paid not enough. Continue ?',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_AMTINVALIDCONTINUE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Amount paid not enough. Continue ?', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_AMTINVALIDCONTINUE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_AMTINVALIDCONTINUE'), 'nl_NL', 'Y', 'Amount paid not enough. Continue ?',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_AMTINVALIDCONTINUE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Amount paid not enough. Continue ?',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_AMTINVALIDCONTINUE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_AMTINVALIDCONTINUE'), 'fr_FR', 'Y', 'Montant payé insuffisant. Continuer ?',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_AMTINVALIDCONTINUE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Montant payé insuffisant. Continuer ?',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_AMTINVALIDCONTINUE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_CLIENTMANDATORYRETURN','J010',
'Customer is mandatory for return merchandise',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_CLIENTMANDATORYRETURN' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Customer is mandatory for return merchandise', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_CLIENTMANDATORYRETURN' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYRETURN'), 'nl_NL', 'Y', 'Customer is mandatory for return merchandise',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYRETURN') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Customer is mandatory for return merchandise',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYRETURN') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYRETURN'), 'fr_FR', 'Y', 'Client obligatoire pour un retour de marchandise',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYRETURN') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Client obligatoire pour un retour de marchandise',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLIENTMANDATORYRETURN') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_CMTMANDATORY','J010',
'Missing comment and (or) serial number for product ',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_CMTMANDATORY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Missing comment and (or) serial number for product ', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_CMTMANDATORY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CMTMANDATORY'), 'nl_NL', 'Y', 'Missing comment and (or) serial number for product ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CMTMANDATORY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Missing comment and (or) serial number for product ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CMTMANDATORY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CMTMANDATORY'), 'fr_FR', 'Y', 'Commentaire et (ou) numéro de série manquant pour le produit ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CMTMANDATORY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Commentaire et (ou) numéro de série manquant pour le produit ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CMTMANDATORY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_AMTDISBUR','J010',
'Amount for disbursement is mandatory',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_AMTDISBUR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Amount for disbursement is mandatory', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_AMTDISBUR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_AMTDISBUR'), 'nl_NL', 'Y', 'Amount for disbursement is mandatory',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_AMTDISBUR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Amount for disbursement is mandatory',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_AMTDISBUR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_AMTDISBUR'), 'fr_FR', 'Y', 'Montant du décaissement obligatoire',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_AMTDISBUR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Montant du décaissement obligatoire',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_AMTDISBUR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_QTYACTION','J010',
'Quantity of actions different of the quantity of the product ',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_QTYACTION' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Quantity of actions different of the quantity of the product ', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_QTYACTION' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_QTYACTION'), 'nl_NL', 'Y', 'Quantity of actions different of the quantity of the product ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_QTYACTION') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Quantity of actions different of the quantity of the product ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_QTYACTION') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_QTYACTION'), 'fr_FR', 'Y', 'Quantité des actions différentes de la quantité de la ligne du produit ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_QTYACTION') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Quantité des actions différentes de la quantité de la ligne du produit ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_QTYACTION') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_NOSERIE','J010',
'Serial number : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_NOSERIE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Serial number : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_NOSERIE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_NOSERIE'), 'nl_NL', 'Y', 'Serial number : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOSERIE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Serial number : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOSERIE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_NOSERIE'), 'fr_FR', 'Y', 'Numéro de série : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOSERIE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Numéro de série : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_NOSERIE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_FORA','J010',
' for a ',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_FORA' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = ' for a ', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_FORA' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_FORA'), 'nl_NL', 'Y', ' for a ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_FORA') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = ' for a ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_FORA') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_FORA'), 'fr_FR', 'Y', ' pour un ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_FORA') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = ' pour un ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_FORA') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SAVSTATUSDATE','J010',
'Date',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SAVSTATUSDATE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Date', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SAVSTATUSDATE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSDATE'), 'nl_NL', 'Y', 'Date',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSDATE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Date',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSDATE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSDATE'), 'fr_FR', 'Y', 'Date',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSDATE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Date',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSDATE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SAVSTATUSUSER','J010',
'User',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SAVSTATUSUSER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'User', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SAVSTATUSUSER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSUSER'), 'nl_NL', 'Y', 'User',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSUSER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'User',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSUSER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSUSER'), 'fr_FR', 'Y', 'Utilisateur',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSUSER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Utilisateur',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SAVSTATUSUSER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_REPORTSALES','J010',
'Statistics per vendor',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_REPORTSALES' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Statistics per vendor', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_REPORTSALES' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPORTSALES'), 'nl_NL', 'Y', 'Statistics per vendor',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPORTSALES') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Statistics per vendor',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPORTSALES') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_REPORTSALES'), 'fr_FR', 'Y', 'Statistiques par vendeur',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPORTSALES') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Statistiques par vendeur',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_REPORTSALES') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_SEARCHPRODUCTADVANCE','J010',
'Advanced search of products',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_SEARCHPRODUCTADVANCE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Advanced search of products', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_SEARCHPRODUCTADVANCE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SEARCHPRODUCTADVANCE'), 'nl_NL', 'Y', 'Advanced search of products',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SEARCHPRODUCTADVANCE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Advanced search of products',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SEARCHPRODUCTADVANCE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_SEARCHPRODUCTADVANCE'), 'fr_FR', 'Y', 'Recherche avancée de produits',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SEARCHPRODUCTADVANCE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Recherche avancée de produits',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_SEARCHPRODUCTADVANCE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_LOGINDIALOG','J010',
'Login',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_LOGINDIALOG' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Login', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_LOGINDIALOG' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_LOGINDIALOG'), 'nl_NL', 'Y', 'Login',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_LOGINDIALOG') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Login',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_LOGINDIALOG') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_LOGINDIALOG'), 'fr_FR', 'Y', 'Identification',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_LOGINDIALOG') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Identification',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_LOGINDIALOG') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_LOGINVENDOR','J010',
'Salesman : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_LOGINVENDOR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Salesman : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_LOGINVENDOR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_LOGINVENDOR'), 'nl_NL', 'Y', 'Salesman : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_LOGINVENDOR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Salesman : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_LOGINVENDOR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_LOGINVENDOR'), 'fr_FR', 'Y', 'Vendeur : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_LOGINVENDOR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Vendeur : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_LOGINVENDOR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR4002','J010',
'No validation',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR4002' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'No validation', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR4002' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4002'), 'nl_NL', 'Y', 'No validation',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4002') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'No validation',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4002') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4002'), 'fr_FR', 'Y', 'No validation',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4002') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'No validation',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4002') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR4011','J010',
'Time-out on card reading retry',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR4011' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Time-out on card reading retry', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR4011' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4011'), 'nl_NL', 'Y', 'Time-out on card reading retry',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4011') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Time-out on card reading retry',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4011') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4011'), 'fr_FR', 'Y', 'Time-out sur relecture carte',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4011') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Time-out sur relecture carte',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR4011') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR5003','J010',
'Duplicate transaction',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR5003' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Duplicate transaction', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR5003' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5003'), 'nl_NL', 'Y', 'Duplicate transaction',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5003') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Duplicate transaction',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5003') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5003'), 'fr_FR', 'Y', 'Double transaction',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5003') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Double transaction',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5003') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR5006','J010',
'Stop customer',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR5006' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Stop customer', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR5006' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5006'), 'nl_NL', 'Y', 'Stop customer',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5006') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Stop customer',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5006') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5006'), 'fr_FR', 'Y', 'Stop client',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5006') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Stop client',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5006') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR5010','J010',
'Communication problem',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR5010' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Communication problem', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR5010' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5010'), 'nl_NL', 'Y', 'Communication problem',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5010') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Communication problem',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5010') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5010'), 'fr_FR', 'Y', 'Problème de communication',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5010') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Problème de communication',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5010') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR5012','J010',
'Balance too low',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR5012' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Balance too low', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR5012' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5012'), 'nl_NL', 'Y', 'Balance too low',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5012') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Balance too low',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5012') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5012'), 'fr_FR', 'Y', 'Solde insuffisant',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5012') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Solde insuffisant',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5012') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ATOS_ERR5013','J010',
'Transaction refused by the terminal',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ATOS_ERR5013' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Transaction refused by the terminal', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ATOS_ERR5013' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5013'), 'nl_NL', 'Y', 'Transaction refused by the terminal',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5013') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Transaction refused by the terminal',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5013') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5013'), 'fr_FR', 'Y', 'Transaction refusée par le terminal',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5013') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Transaction refusée par le terminal',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ATOS_ERR5013') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_MARGINPROD','J010',
'Margin : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_MARGINPROD' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Margin : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_MARGINPROD' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_MARGINPROD'), 'nl_NL', 'Y', 'Margin : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_MARGINPROD') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Margin : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_MARGINPROD') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_MARGINPROD'), 'fr_FR', 'Y', 'Marge : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_MARGINPROD') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Marge : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_MARGINPROD') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_QTYNEG','J010',
'Negative quantity forbidden ',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_QTYNEG' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Negative quantity forbidden ', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_QTYNEG' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_QTYNEG'), 'nl_NL', 'Y', 'Negative quantity forbidden ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_QTYNEG') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Negative quantity forbidden ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_QTYNEG') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_QTYNEG'), 'fr_FR', 'Y', 'Quantité négative interdite ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_QTYNEG') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Quantité négative interdite ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_QTYNEG') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPADDR1','J010',
'Address 1 : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPADDR1' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Address 1 : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPADDR1' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPADDR1'), 'nl_NL', 'Y', 'Address 1 : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDR1') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Address 1 : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDR1') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPADDR1'), 'fr_FR', 'Y', 'Addresse : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDR1') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Addresse : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPADDR1') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CLOSETOTALCASH','J010',
'Total cash : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CLOSETOTALCASH' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Total cash : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CLOSETOTALCASH' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCASH'), 'nl_NL', 'Y', 'Total cash : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCASH') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Total cash : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCASH') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCASH'), 'fr_FR', 'Y', 'Total escpèces : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCASH') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Total escpèces : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCASH') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CARD','J010',
'Cards',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CARD' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Cards', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CARD' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CARD'), 'nl_NL', 'Y', 'Cards',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CARD') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Cards',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CARD') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CARD'), 'fr_FR', 'Y', 'Cartes',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CARD') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Cartes',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CARD') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CLOSETOTALCHECK','J010',
'Total checks : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CLOSETOTALCHECK' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Total checks : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CLOSETOTALCHECK' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCHECK'), 'nl_NL', 'Y', 'Total checks : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCHECK') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Total checks : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCHECK') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCHECK'), 'fr_FR', 'Y', 'Total chèques : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCHECK') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Total chèques : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSETOTALCHECK') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CHECK','J010',
'Checks',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CHECK' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Checks', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CHECK' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CHECK'), 'nl_NL', 'Y', 'Checks',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CHECK') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Checks',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CHECK') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CHECK'), 'fr_FR', 'Y', 'Chèques',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CHECK') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Chèques',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CHECK') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CLOSEAMTCOMPUTED','J010',
'Amount calculated : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CLOSEAMTCOMPUTED' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Amount calculated : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CLOSEAMTCOMPUTED' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTCOMPUTED'), 'nl_NL', 'Y', 'Amount calculated : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTCOMPUTED') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Amount calculated : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTCOMPUTED') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTCOMPUTED'), 'fr_FR', 'Y', 'Montant calculé : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTCOMPUTED') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Montant calculé : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTCOMPUTED') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CLOSEAMTINDRAWER','J010',
'Amount in drawer : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CLOSEAMTINDRAWER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Amount in drawer : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CLOSEAMTINDRAWER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTINDRAWER'), 'nl_NL', 'Y', 'Amount in drawer : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTINDRAWER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Amount in drawer : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTINDRAWER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTINDRAWER'), 'fr_FR', 'Y', 'Montant en caisse : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTINDRAWER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Montant en caisse : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CLOSEAMTINDRAWER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CUSTOMERGREETING','J010',
'Greeting *: ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CUSTOMERGREETING' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Greeting *: ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CUSTOMERGREETING' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMERGREETING'), 'nl_NL', 'Y', 'Greeting *: ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMERGREETING') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Greeting *: ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMERGREETING') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMERGREETING'), 'fr_FR', 'Y', 'Civilité *: ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMERGREETING') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Civilité *: ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMERGREETING') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CUSTOMPERPHONE1','J010',
'Phone 1 *: ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CUSTOMPERPHONE1' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Phone 1 *: ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CUSTOMPERPHONE1' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERPHONE1'), 'nl_NL', 'Y', 'Phone 1 *: ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERPHONE1') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Phone 1 *: ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERPHONE1') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERPHONE1'), 'fr_FR', 'Y', 'Téléphone fixe :  ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERPHONE1') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Téléphone fixe :  ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERPHONE1') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CUSTOMPERPHONE2','J010',
'Phone 2 : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CUSTOMPERPHONE2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Phone 2 : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CUSTOMPERPHONE2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERPHONE2'), 'nl_NL', 'Y', 'Phone 2 : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERPHONE2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Phone 2 : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERPHONE2') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERPHONE2'), 'fr_FR', 'Y', 'GSM *: ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERPHONE2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'GSM *: ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CUSTOMPERPHONE2') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ADDRESSSHIP','J010',
'Shipping Address',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ADDRESSSHIP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Shipping Address', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_ADDRESSSHIP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ADDRESSSHIP'), 'nl_NL', 'Y', 'Shipping Address',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ADDRESSSHIP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Shipping Address',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ADDRESSSHIP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ADDRESSSHIP'), 'fr_FR', 'Y', 'Adresse de livraison',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ADDRESSSHIP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Adresse de livraison',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ADDRESSSHIP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_EXPSAVSTATUS','J010',
'Repair ship default status : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_EXPSAVSTATUS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Repair ship default status : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_EXPSAVSTATUS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_EXPSAVSTATUS'), 'nl_NL', 'Y', 'Repair ship default status : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_EXPSAVSTATUS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Repair ship default status : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_EXPSAVSTATUS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_EXPSAVSTATUS'), 'fr_FR', 'Y', 'Statut d''expédition SAV : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_EXPSAVSTATUS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Statut d''expédition SAV : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_EXPSAVSTATUS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_ACTIONPRODUCT','J010',
'Product creation request action : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_ACTIONPRODUCT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Product creation request action : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_ACTIONPRODUCT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_ACTIONPRODUCT'), 'nl_NL', 'Y', 'Product creation request action : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_ACTIONPRODUCT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Product creation request action : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_ACTIONPRODUCT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_ACTIONPRODUCT'), 'fr_FR', 'Y', 'Action demande création article : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_ACTIONPRODUCT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Action demande création article : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_ACTIONPRODUCT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFSAVSTATUS','J010',
'Default repair status : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFSAVSTATUS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Default repair status : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFSAVSTATUS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFSAVSTATUS'), 'nl_NL', 'Y', 'Default repair status : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFSAVSTATUS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Default repair status : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFSAVSTATUS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFSAVSTATUS'), 'fr_FR', 'Y', 'Statut SAV par défaut : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFSAVSTATUS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Statut SAV par défaut : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFSAVSTATUS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_WEBSALES','J010',
'Web sales',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_WEBSALES' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Web sales', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_WEBSALES' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_WEBSALES'), 'nl_NL', 'Y', 'Web sales',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_WEBSALES') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Web sales',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_WEBSALES') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_WEBSALES'), 'fr_FR', 'Y', 'Ventes web',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_WEBSALES') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ventes web',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_WEBSALES') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPFIRSTNAME','J010',
'First Name : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPFIRSTNAME' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'First Name : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPFIRSTNAME' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPFIRSTNAME'), 'nl_NL', 'Y', 'First Name : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPFIRSTNAME') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'First Name : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPFIRSTNAME') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPFIRSTNAME'), 'fr_FR', 'Y', 'Prénom : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPFIRSTNAME') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prénom : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPFIRSTNAME') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_RETURNAMT','J010',
'Return amt : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_RETURNAMT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Return amt : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_RETURNAMT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_RETURNAMT'), 'nl_NL', 'Y', 'Return amt : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RETURNAMT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Return amt : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RETURNAMT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_RETURNAMT'), 'fr_FR', 'Y', 'À rembourser : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RETURNAMT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'À rembourser : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RETURNAMT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PRODUCTATT','J010',
'Attributes collection : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PRODUCTATT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Attributes collection : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PRODUCTATT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCTATT'), 'nl_NL', 'Y', 'Attributes collection : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTATT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Attributes collection : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTATT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PRODUCTATT'), 'fr_FR', 'Y', 'Collection d''attributs',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTATT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Collection d''attributs',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PRODUCTATT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_EPAYMENT','J010',
'Payment terminal : ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_EPAYMENT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Payment terminal : ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_EPAYMENT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_EPAYMENT'), 'nl_NL', 'Y', 'Payment terminal : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_EPAYMENT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Payment terminal : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_EPAYMENT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_EPAYMENT'), 'fr_FR', 'Y', 'Terminal de paiement : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_EPAYMENT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Terminal de paiement : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_EPAYMENT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_BPGROUP_PRO','J010',
'Professional Partner Group :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_BPGROUP_PRO' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Professional Partner Group :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_BPGROUP_PRO' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP_PRO'), 'nl_NL', 'Y', 'Professional Partner Group :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP_PRO') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Professional Partner Group :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP_PRO') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP_PRO'), 'fr_FR', 'Y', 'Groupe de tiers professionnel : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP_PRO') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Groupe de tiers professionnel : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP_PRO') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_BPGROUP_PARTICULAR','J010',
'Particular Partner Group :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_BPGROUP_PARTICULAR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Particular Partner Group :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_BPGROUP_PARTICULAR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP_PARTICULAR'), 'nl_NL', 'Y', 'Particular Partner Group :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP_PARTICULAR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Particular Partner Group :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP_PARTICULAR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP_PARTICULAR'), 'fr_FR', 'Y', 'Groupe de tiers particulier :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP_PARTICULAR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Groupe de tiers particulier :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_BPGROUP_PARTICULAR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_ERR_CLOSE','J010',
'Entered amount is different from calculated amount',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_ERR_CLOSE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Entered amount is different from calculated amount', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'POS_ERR_CLOSE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CLOSE'), 'nl_NL', 'Y', 'Entered amount is different from calculated amount',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLOSE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Entered amount is different from calculated amount',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLOSE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_ERR_CLOSE'), 'fr_FR', 'Y', 'Montant saisi différent du montant calculé',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLOSE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Montant saisi différent du montant calculé',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_ERR_CLOSE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_PRODFRAIS','J010',
'ART-FRAIS',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_PRODFRAIS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'ART-FRAIS', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_PRODFRAIS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRODFRAIS'), 'nl_NL', 'Y', 'ART-FRAIS',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRODFRAIS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'ART-FRAIS',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRODFRAIS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRODFRAIS'), 'fr_FR', 'Y', 'ART-FRAIS',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRODFRAIS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'ART-FRAIS',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRODFRAIS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'&'||'CASH ','J010',
'Nous attirons votre attention sur le faitque, lors des livraisons à domicile, seul le paiement en liquide est accepté.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = '&'||'CASH ' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Nous attirons votre attention sur le faitque, lors des livraisons à domicile, seul le paiement en liquide est accepté.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = '&'||'CASH ' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='&'||'CASH '), 'nl_NL', 'Y', 'Nous attirons votre attention sur le faitque, lors des livraisons à domicile, seul le paiement en liquide est accepté.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'CASH ') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nous attirons votre attention sur le faitque, lors des livraisons à domicile, seul le paiement en liquide est accepté.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'CASH ') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='&'||'CASH '), 'fr_FR', 'Y', 'Nous attirons votre attention sur le faitque, lors des livraisons à domicile, seul le paiement en liquide est accepté.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'CASH ') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nous attirons votre attention sur le faitque, lors des livraisons à domicile, seul le paiement en liquide est accepté.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'CASH ') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'&'||'PDET ','J010',
'Le prix mentionné est donné à titre indicatif et est sujet à adaptation suivant le tarif de notre fournisseur. Les pièces détachées ne sont ni échangées ni remboursées.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = '&'||'PDET ' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Le prix mentionné est donné à titre indicatif et est sujet à adaptation suivant le tarif de notre fournisseur. Les pièces détachées ne sont ni échangées ni remboursées.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = '&'||'PDET ' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='&'||'PDET '), 'nl_NL', 'Y', 'Le prix mentionné est donné à titre indicatif et est sujet à adaptation suivant le tarif de notre fournisseur. Les pièces détachées ne sont ni échangées ni remboursées.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'PDET ') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Le prix mentionné est donné à titre indicatif et est sujet à adaptation suivant le tarif de notre fournisseur. Les pièces détachées ne sont ni échangées ni remboursées.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'PDET ') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='&'||'PDET '), 'fr_FR', 'Y', 'Le prix mentionné est donné à titre indicatif et est sujet à adaptation suivant le tarif de notre fournisseur. Les pièces détachées ne sont ni échangées ni remboursées.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'PDET ') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Le prix mentionné est donné à titre indicatif et est sujet à adaptation suivant le tarif de notre fournisseur. Les pièces détachées ne sont ni échangées ni remboursées.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'PDET ') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_PARTICULIER','J010',
'PARTICULIER',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_PARTICULIER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'PARTICULIER', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_PARTICULIER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PARTICULIER'), 'nl_NL', 'Y', 'PARTICULIER',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PARTICULIER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'PARTICULIER',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PARTICULIER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PARTICULIER'), 'fr_FR', 'Y', 'PARTICULIER',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PARTICULIER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'PARTICULIER',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PARTICULIER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_DOC_SAVGC','J010',
'EchangeGC',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_DOC_SAVGC' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'EchangeGC', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_DOC_SAVGC' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVGC'), 'nl_NL', 'Y', 'EchangeGC',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVGC') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'EchangeGC',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVGC') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVGC'), 'fr_FR', 'Y', 'EchangeGC',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVGC') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'EchangeGC',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVGC') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_TOCLOSE','J010',
'Close',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_TOCLOSE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Close', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_TOCLOSE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TOCLOSE'), 'nl_NL', 'Y', 'Close',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOCLOSE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Close',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOCLOSE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TOCLOSE'), 'fr_FR', 'Y', 'Clôturer',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOCLOSE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Clôturer',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOCLOSE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_PAY_OTHERS','J010',
'Other',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_PAY_OTHERS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Other', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_PAY_OTHERS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PAY_OTHERS'), 'nl_NL', 'Y', 'Other',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAY_OTHERS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Other',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAY_OTHERS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_PAY_OTHERS'), 'fr_FR', 'Y', 'Autres',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAY_OTHERS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Autres',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_PAY_OTHERS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_CENTRAL_USER','J010',
'compilote',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_CENTRAL_USER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'compilote', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_CENTRAL_USER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_USER'), 'nl_NL', 'Y', 'compilote',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_USER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'compilote',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_USER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_USER'), 'fr_FR', 'Y', 'compilote',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_USER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'compilote',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_USER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_CENTRAL_PWD','J010',
'compiere',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_CENTRAL_PWD' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'compiere', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_CENTRAL_PWD' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_PWD'), 'nl_NL', 'Y', 'compiere',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_PWD') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'compiere',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_PWD') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_PWD'), 'fr_FR', 'Y', 'compiere',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_PWD') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'compiere',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_PWD') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_JBOSS_URL','J010',
'192.168.250.142',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_JBOSS_URL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = '192.168.250.142', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_JBOSS_URL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_JBOSS_URL'), 'nl_NL', 'Y', '192.168.250.142',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_JBOSS_URL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '192.168.250.142',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_JBOSS_URL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_JBOSS_URL'), 'fr_FR', 'Y', '192.168.250.142',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_JBOSS_URL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '192.168.250.142',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_JBOSS_URL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_CURRENCY','J010',
'102',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_CURRENCY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = '102', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_CURRENCY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CURRENCY'), 'nl_NL', 'Y', '102',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CURRENCY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '102',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CURRENCY') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CURRENCY'), 'fr_FR', 'Y', '102',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CURRENCY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '102',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CURRENCY') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_PRODUCT','J010',
'ART-GEN',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_PRODUCT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'ART-GEN', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_PRODUCT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRODUCT'), 'nl_NL', 'Y', 'ART-GEN',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRODUCT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'ART-GEN',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRODUCT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRODUCT'), 'fr_FR', 'Y', 'ART-GEN',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRODUCT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'ART-GEN',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRODUCT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_EMAIL_TEMPLATE','J010',
'SAV Domicile',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_EMAIL_TEMPLATE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'SAV Domicile', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_EMAIL_TEMPLATE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_EMAIL_TEMPLATE'), 'nl_NL', 'Y', 'SAV Domicile',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_EMAIL_TEMPLATE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'SAV Domicile',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_EMAIL_TEMPLATE') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_EMAIL_TEMPLATE'), 'fr_FR', 'Y', 'SAV Domicile',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_EMAIL_TEMPLATE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'SAV Domicile',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_EMAIL_TEMPLATE') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_DOC_BDV','J010',
'Ordre de vente standard',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_DOC_BDV' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Ordre de vente standard', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_DOC_BDV' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_BDV'), 'nl_NL', 'Y', 'Ordre de vente standard',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_BDV') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ordre de vente standard',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_BDV') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_BDV'), 'fr_FR', 'Y', 'Ordre de vente standard',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_BDV') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ordre de vente standard',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_BDV') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_DOC_SAVDOM','J010',
'SAV_DOM',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_DOC_SAVDOM' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'SAV_DOM', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_DOC_SAVDOM' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVDOM'), 'nl_NL', 'Y', 'SAV_DOM',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVDOM') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'SAV_DOM',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVDOM') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVDOM'), 'fr_FR', 'Y', 'SAV_DOM',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVDOM') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'SAV_DOM',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVDOM') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_DOC_SAVDOA','J010',
'EchangeDOA',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_DOC_SAVDOA' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'EchangeDOA', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_DOC_SAVDOA' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVDOA'), 'nl_NL', 'Y', 'EchangeDOA',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVDOA') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'EchangeDOA',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVDOA') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVDOA'), 'fr_FR', 'Y', 'EchangeDOA',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVDOA') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'EchangeDOA',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVDOA') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_DOC_DECAISS','J010',
'Ordre d''achat',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_DOC_DECAISS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Ordre d''achat', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_DOC_DECAISS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_DECAISS'), 'nl_NL', 'Y', 'Ordre d''achat',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_DECAISS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ordre d''achat',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_DECAISS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_DECAISS'), 'fr_FR', 'Y', 'Ordre d''achat',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_DECAISS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ordre d''achat',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_DECAISS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_RECEPTIONREPAIR','J010',
'Réception des réparations',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_RECEPTIONREPAIR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Réception des réparations', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_RECEPTIONREPAIR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_RECEPTIONREPAIR'), 'nl_NL', 'Y', 'Réception des réparations',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RECEPTIONREPAIR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Réception des réparations',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RECEPTIONREPAIR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_RECEPTIONREPAIR'), 'fr_FR', 'Y', 'Réception des réparations',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RECEPTIONREPAIR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Réception des réparations',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RECEPTIONREPAIR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_TOTALRECEPTION','J010',
' réparation(s) à réceptioner',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_TOTALRECEPTION' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = ' réparation(s) à réceptioner', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_TOTALRECEPTION' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TOTALRECEPTION'), 'nl_NL', 'Y', ' réparation(s) à réceptioner',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTALRECEPTION') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = ' réparation(s) à réceptioner',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTALRECEPTION') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_TOTALRECEPTION'), 'fr_FR', 'Y', ' réparation(s) à réceptioner',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTALRECEPTION') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = ' réparation(s) à réceptioner',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_TOTALRECEPTION') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_EXP_REP','J010',
'EXP',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_EXP_REP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'EXP', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_EXP_REP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_EXP_REP'), 'nl_NL', 'Y', 'EXP',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_EXP_REP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'EXP',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_EXP_REP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_EXP_REP'), 'fr_FR', 'Y', 'EXP',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_EXP_REP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'EXP',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_EXP_REP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_CENTRAL_DB_URL','J010',
'jdbc:oracle:thin:@(DESCRIPTION=(LOAD_BALANCE=on)(ADDRESS=(PROTOCOL=TCP)(HOST=mach-erpdb1vip)(PORT=1521))(ADDRESS=(PROTOCOL=TCP)(HOST=mach-erpdb2vip)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=COMPIERE)))',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_CENTRAL_DB_URL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'jdbc:oracle:thin:@(DESCRIPTION=(LOAD_BALANCE=on)(ADDRESS=(PROTOCOL=TCP)(HOST=mach-erpdb1vip)(PORT=1521))(ADDRESS=(PROTOCOL=TCP)(HOST=mach-erpdb2vip)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=COMPIERE)))', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_CENTRAL_DB_URL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_DB_URL'), 'nl_NL', 'Y', 'jdbc:oracle:thin:@(DESCRIPTION=(LOAD_BALANCE=on)(ADDRESS=(PROTOCOL=TCP)(HOST=mach-erpdb1vip)(PORT=1521))(ADDRESS=(PROTOCOL=TCP)(HOST=mach-erpdb2vip)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=COMPIERE)))',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_DB_URL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'jdbc:oracle:thin:@(DESCRIPTION=(LOAD_BALANCE=on)(ADDRESS=(PROTOCOL=TCP)(HOST=mach-erpdb1vip)(PORT=1521))(ADDRESS=(PROTOCOL=TCP)(HOST=mach-erpdb2vip)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=COMPIERE)))',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_DB_URL') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_DB_URL'), 'fr_FR', 'Y', 'jdbc:oracle:thin:@(DESCRIPTION=(LOAD_BALANCE=on)(ADDRESS=(PROTOCOL=TCP)(HOST=mach-erpdb1vip)(PORT=1521))(ADDRESS=(PROTOCOL=TCP)(HOST=mach-erpdb2vip)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=COMPIERE)))',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_DB_URL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'jdbc:oracle:thin:@(DESCRIPTION=(LOAD_BALANCE=on)(ADDRESS=(PROTOCOL=TCP)(HOST=mach-erpdb1vip)(PORT=1521))(ADDRESS=(PROTOCOL=TCP)(HOST=mach-erpdb2vip)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=COMPIERE)))',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CENTRAL_DB_URL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_JBOSS_PORT','J010',
'8080',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_JBOSS_PORT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = '8080', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_JBOSS_PORT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_JBOSS_PORT'), 'nl_NL', 'Y', '8080',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_JBOSS_PORT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '8080',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_JBOSS_PORT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_JBOSS_PORT'), 'fr_FR', 'Y', '8080',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_JBOSS_PORT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '8080',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_JBOSS_PORT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_CLIENT','J010',
'EU',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_CLIENT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'EU', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_CLIENT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CLIENT'), 'nl_NL', 'Y', 'EU',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CLIENT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'EU',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CLIENT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CLIENT'), 'fr_FR', 'Y', 'EU',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CLIENT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'EU',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CLIENT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_DECAISS','J010',
'Espèces',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_DECAISS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Espèces', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_DECAISS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DECAISS'), 'nl_NL', 'Y', 'Espèces',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DECAISS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Espèces',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DECAISS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DECAISS'), 'fr_FR', 'Y', 'Espèces',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DECAISS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Espèces',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DECAISS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_STATUS_REP','J010',
'ATR',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_STATUS_REP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'ATR', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_STATUS_REP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_STATUS_REP'), 'nl_NL', 'Y', 'ATR',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_STATUS_REP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'ATR',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_STATUS_REP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_STATUS_REP'), 'fr_FR', 'Y', 'ATR',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_STATUS_REP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'ATR',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_STATUS_REP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_ACTION_EXP','J010',
'02',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_ACTION_EXP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = '02', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_ACTION_EXP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_ACTION_EXP'), 'nl_NL', 'Y', '02',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_ACTION_EXP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '02',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_ACTION_EXP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_ACTION_EXP'), 'fr_FR', 'Y', '02',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_ACTION_EXP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '02',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_ACTION_EXP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_DOC_RETOUR','J010',
'Ordre retour marchandise',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_DOC_RETOUR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Ordre retour marchandise', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_DOC_RETOUR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_RETOUR'), 'nl_NL', 'Y', 'Ordre retour marchandise',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_RETOUR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ordre retour marchandise',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_RETOUR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_RETOUR'), 'fr_FR', 'Y', 'Ordre retour marchandise',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_RETOUR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ordre retour marchandise',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_RETOUR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_BPSHIPNAME','J010',
'Name :',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_BPSHIPNAME' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Name :', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_BPSHIPNAME' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPSHIPNAME'), 'nl_NL', 'Y', 'Name :',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPSHIPNAME') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Name :',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPSHIPNAME') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_BPSHIPNAME'), 'fr_FR', 'Y', 'Nom,Prénom : ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPSHIPNAME') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom,Prénom : ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_BPSHIPNAME') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_RECEPTION','J010',
'Réceptioner',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_RECEPTION' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Réceptioner', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_RECEPTION' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_RECEPTION'), 'nl_NL', 'Y', 'Réceptioner',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RECEPTION') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Réceptioner',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RECEPTION') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_RECEPTION'), 'fr_FR', 'Y', 'Réceptioner',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RECEPTION') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Réceptioner',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_RECEPTION') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'&'||'GSM ','J010',
'Pendant la période de garantie, les GSM ne sont pas échangés mais sont réparés par les centres agréés des fabricants.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = '&'||'GSM ' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Pendant la période de garantie, les GSM ne sont pas échangés mais sont réparés par les centres agréés des fabricants.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = '&'||'GSM ' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='&'||'GSM '), 'nl_NL', 'Y', 'Pendant la période de garantie, les GSM ne sont pas échangés mais sont réparés par les centres agréés des fabricants.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'GSM ') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pendant la période de garantie, les GSM ne sont pas échangés mais sont réparés par les centres agréés des fabricants.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'GSM ') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='&'||'GSM '), 'fr_FR', 'Y', 'Pendant la période de garantie, les GSM ne sont pas échangés mais sont réparés par les centres agréés des fabricants.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'GSM ') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pendant la période de garantie, les GSM ne sont pas échangés mais sont réparés par les centres agréés des fabricants.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'GSM ') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'&'||'COMPTE ','J010',
'Nous attirons votre attention sur le fait que nous acceptons un paiement bancaire à 30 jours fin de mois. Ceci est uniquement valable pour les sociétés et les administrations.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = '&'||'COMPTE ' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Nous attirons votre attention sur le fait que nous acceptons un paiement bancaire à 30 jours fin de mois. Ceci est uniquement valable pour les sociétés et les administrations.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = '&'||'COMPTE ' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='&'||'COMPTE '), 'nl_NL', 'Y', 'Nous attirons votre attention sur le fait que nous acceptons un paiement bancaire à 30 jours fin de mois. Ceci est uniquement valable pour les sociétés et les administrations.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'COMPTE ') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nous attirons votre attention sur le fait que nous acceptons un paiement bancaire à 30 jours fin de mois. Ceci est uniquement valable pour les sociétés et les administrations.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'COMPTE ') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='&'||'COMPTE '), 'fr_FR', 'Y', 'Nous attirons votre attention sur le fait que nous acceptons un paiement bancaire à 30 jours fin de mois. Ceci est uniquement valable pour les sociétés et les administrations.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'COMPTE ') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nous attirons votre attention sur le fait que nous acceptons un paiement bancaire à 30 jours fin de mois. Ceci est uniquement valable pour les sociétés et les administrations.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'COMPTE ') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_CUSTOMER','J010',
'C9999999',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_CUSTOMER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'C9999999', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_CUSTOMER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CUSTOMER'), 'nl_NL', 'Y', 'C9999999',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CUSTOMER') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'C9999999',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CUSTOMER') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CUSTOMER'), 'fr_FR', 'Y', 'C9999999',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CUSTOMER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'C9999999',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_CUSTOMER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_PRICELIST','J010',
'VENTE EC',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_PRICELIST' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'VENTE EC', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_PRICELIST' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRICELIST'), 'nl_NL', 'Y', 'VENTE EC',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRICELIST') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'VENTE EC',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRICELIST') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRICELIST'), 'fr_FR', 'Y', 'VENTE EC',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRICELIST') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'VENTE EC',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRICELIST') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_ACTION_CREATEPRODUCT','J010',
'21',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_ACTION_CREATEPRODUCT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = '21', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_ACTION_CREATEPRODUCT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_ACTION_CREATEPRODUCT'), 'nl_NL', 'Y', '21',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_ACTION_CREATEPRODUCT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '21',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_ACTION_CREATEPRODUCT') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_ACTION_CREATEPRODUCT'), 'fr_FR', 'Y', '21',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_ACTION_CREATEPRODUCT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '21',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_ACTION_CREATEPRODUCT') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_DOC_DEVIS','J010',
'Devis',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_DOC_DEVIS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Devis', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_DOC_DEVIS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_DEVIS'), 'nl_NL', 'Y', 'Devis',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_DEVIS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Devis',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_DEVIS') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_DEVIS'), 'fr_FR', 'Y', 'Devis',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_DEVIS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Devis',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_DEVIS') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_DOC_SAVREP','J010',
'REPARATION',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_DOC_SAVREP' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'REPARATION', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_DOC_SAVREP' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVREP'), 'nl_NL', 'Y', 'REPARATION',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVREP') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'REPARATION',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVREP') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVREP'), 'fr_FR', 'Y', 'REPARATION',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVREP') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'REPARATION',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVREP') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_DOC_SAVCODE2','J010',
'Echange2',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_DOC_SAVCODE2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Echange2', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_DOC_SAVCODE2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVCODE2'), 'nl_NL', 'Y', 'Echange2',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVCODE2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Echange2',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVCODE2') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVCODE2'), 'fr_FR', 'Y', 'Echange2',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVCODE2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Echange2',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_SAVCODE2') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'&'||'EXPO ','J010',
'Cet article est un modèle d''exposition. Le client reconnait par l''achat l''état dans lequel il se trouve.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = '&'||'EXPO ' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Cet article est un modèle d''exposition. Le client reconnait par l''achat l''état dans lequel il se trouve.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = '&'||'EXPO ' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='&'||'EXPO '), 'nl_NL', 'Y', 'Cet article est un modèle d''exposition. Le client reconnait par l''achat l''état dans lequel il se trouve.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'EXPO ') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Cet article est un modèle d''exposition. Le client reconnait par l''achat l''état dans lequel il se trouve.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'EXPO ') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='&'||'EXPO '), 'fr_FR', 'Y', 'Cet article est un modèle d''exposition. Le client reconnait par l''achat l''état dans lequel il se trouve.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'EXPO ') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Cet article est un modèle d''exposition. Le client reconnait par l''achat l''état dans lequel il se trouve.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='&'||'EXPO ') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_LANG','J010',
'fr_FR',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_LANG' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'fr_FR', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_LANG' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_LANG'), 'nl_NL', 'Y', 'fr_FR',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_LANG') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'fr_FR',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_LANG') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_LANG'), 'fr_FR', 'Y', 'fr_FR',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_LANG') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'fr_FR',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_LANG') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_VENDOR','J010',
'F9999999',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_VENDOR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'F9999999', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_VENDOR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_VENDOR'), 'nl_NL', 'Y', 'F9999999',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_VENDOR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'F9999999',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_VENDOR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_VENDOR'), 'fr_FR', 'Y', 'F9999999',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_VENDOR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'F9999999',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_VENDOR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_PRO','J010',
'PROFESSIONNEL',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_PRO' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'PROFESSIONNEL', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_PRO' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRO'), 'nl_NL', 'Y', 'PROFESSIONNEL',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRO') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'PROFESSIONNEL',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRO') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRO'), 'fr_FR', 'Y', 'PROFESSIONNEL',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRO') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'PROFESSIONNEL',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_PRO') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_DOC_TICKET','J010',
'Ordre vente comptoir',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_DOC_TICKET' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Ordre vente comptoir', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_DOC_TICKET' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_TICKET'), 'nl_NL', 'Y', 'Ordre vente comptoir',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_TICKET') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ordre vente comptoir',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_TICKET') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_TICKET'), 'fr_FR', 'Y', 'Ordre vente comptoir',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_TICKET') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ordre vente comptoir',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_TICKET') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POS_CONF_DEFAULT_DOC_WEB','J010',
'Vente WEB',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POS_CONF_DEFAULT_DOC_WEB' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'J010', msgtext = 'Vente WEB', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POS_CONF_DEFAULT_DOC_WEB' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_WEB'), 'nl_NL', 'Y', 'Vente WEB',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_WEB') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Vente WEB',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_WEB') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_WEB'), 'fr_FR', 'Y', 'Vente WEB',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_WEB') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Vente WEB',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POS_CONF_DEFAULT_DOC_WEB') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J010 - POS Labels', description = 'J010 - POS Labels', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = '', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J010' ;

