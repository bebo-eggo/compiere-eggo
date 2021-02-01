insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'KM02','KM02 - Professionalisation des tiers',
'',
'',
'Y',
'',
'',
'',
'Y',
'1.0',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'KM02' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'KM02 - Professionalisation des tiers', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'KM02' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'C_EMAIL','KM02',
'Email',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'C_EMAIL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Email', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'C_EMAIL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='C_EMAIL'), 'fr_FR', 'Y', 'Email',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_EMAIL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_EMAIL') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='C_EMAIL'), 'nl_NL', 'Y', 'Email',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_EMAIL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_EMAIL') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'NAME2','KM02',
'Prénom',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'NAME2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Prénom', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'NAME2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='NAME2'), 'fr_FR', 'Y', 'Prénom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NAME2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prénom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NAME2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='NAME2'), 'nl_NL', 'Y', 'Prénom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NAME2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prénom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NAME2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_GREETING','KM02',
'Civilité',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_GREETING' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Civilité', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_GREETING' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_GREETING'), 'fr_FR', 'Y', 'Civilité',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GREETING') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Civilité',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GREETING') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_GREETING'), 'nl_NL', 'Y', 'Civilité',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GREETING') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Civilité',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GREETING') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_CTRY','KM02',
'Pays',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_CTRY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Pays', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_CTRY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_CTRY'), 'fr_FR', 'Y', 'Pays',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CTRY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pays',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CTRY') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_CTRY'), 'nl_NL', 'Y', 'Pays',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CTRY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pays',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CTRY') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_ADDR12','KM02',
'Rue, N°',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_ADDR12' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Rue, N°', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_ADDR12' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_ADDR12'), 'fr_FR', 'Y', 'Rue, N°',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR12') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Rue, N°',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR12') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_ADDR12'), 'nl_NL', 'Y', 'Rue, N°',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR12') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Rue, N°',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR12') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'S_VALUE','KM02',
'Code',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'S_VALUE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Code', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'S_VALUE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_VALUE'), 'fr_FR', 'Y', 'Code',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_VALUE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Code',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_VALUE') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_VALUE'), 'nl_NL', 'Y', 'Code',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_VALUE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Code',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_VALUE') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_NOTVALID','KM02',
'N''est pas valide',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_NOTVALID' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'N''est pas valide', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_NOTVALID' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_NOTVALID'), 'fr_FR', 'Y', 'N''est pas valide',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_NOTVALID') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'N''est pas valide',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_NOTVALID') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_NOTVALID'), 'nl_NL', 'Y', 'N''est pas valide',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_NOTVALID') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'N''est pas valide',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_NOTVALID') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'S_EMAIL','KM02',
'EMail',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'S_EMAIL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'EMail', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'S_EMAIL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_EMAIL'), 'fr_FR', 'Y', 'EMail',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_EMAIL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'EMail',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_EMAIL') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_EMAIL'), 'nl_NL', 'Y', 'EMail',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_EMAIL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'EMail',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_EMAIL') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_EMAIL2','KM02',
'Email',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_EMAIL2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Email', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_EMAIL2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_EMAIL2'), 'fr_FR', 'Y', 'Email',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_EMAIL2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_EMAIL2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_EMAIL2'), 'nl_NL', 'Y', 'Email',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_EMAIL2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_EMAIL2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_NEWCUST','KM02',
'Pour ajouter un nouveau client, clicker <Nouveau Client> après avoir vérifier qu''il n''est pas dans la liste',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_NEWCUST' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Pour ajouter un nouveau client, clicker <Nouveau Client> après avoir vérifier qu''il n''est pas dans la liste', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_NEWCUST' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_NEWCUST'), 'fr_FR', 'Y', 'Pour ajouter un nouveau client, clicker <Nouveau Client> après avoir vérifier qu''il n''est pas dans la liste',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_NEWCUST') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pour ajouter un nouveau client, clicker <Nouveau Client> après avoir vérifier qu''il n''est pas dans la liste',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_NEWCUST') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_NEWCUST'), 'nl_NL', 'Y', 'Pour ajouter un nouveau client, clicker <Nouveau Client> après avoir vérifier qu''il n''est pas dans la liste',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_NEWCUST') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pour ajouter un nouveau client, clicker <Nouveau Client> après avoir vérifier qu''il n''est pas dans la liste',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_NEWCUST') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_LANGUAGE','KM02',
'Langue',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_LANGUAGE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Langue', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_LANGUAGE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_LANGUAGE'), 'fr_FR', 'Y', 'Langue',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_LANGUAGE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Langue',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_LANGUAGE') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_LANGUAGE'), 'nl_NL', 'Y', 'Langue',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_LANGUAGE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Langue',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_LANGUAGE') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'C_POSTAL','KM02',
'C.P.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'C_POSTAL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'C.P.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'C_POSTAL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='C_POSTAL'), 'fr_FR', 'Y', 'C.P.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_POSTAL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'C.P.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_POSTAL') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='C_POSTAL'), 'nl_NL', 'Y', 'C.P.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_POSTAL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'C.P.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_POSTAL') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'NAME','KM02',
'Nom',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'NAME' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Nom', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'NAME' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='NAME'), 'fr_FR', 'Y', 'Nom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NAME') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NAME') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='NAME'), 'nl_NL', 'Y', 'Nom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NAME') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='NAME') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_EMAIL','KM02',
'Email',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_EMAIL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Email', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_EMAIL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_EMAIL'), 'fr_FR', 'Y', 'Email',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_EMAIL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_EMAIL') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_EMAIL'), 'nl_NL', 'Y', 'Email',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_EMAIL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_EMAIL') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_GSM','KM02',
'Gsm',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_GSM' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Gsm', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_GSM' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_GSM'), 'fr_FR', 'Y', '   Gsm',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GSM') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '   Gsm',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GSM') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_GSM'), 'nl_NL', 'Y', '   Gsm',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GSM') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '   Gsm',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GSM') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_CONTACT2','KM02',
'Contact__________________________________________________________________________',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_CONTACT2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Contact__________________________________________________________________________', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_CONTACT2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_CONTACT2'), 'fr_FR', 'Y', '______________________________________________Contact2_______________________________________________',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CONTACT2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '______________________________________________Contact2_______________________________________________',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CONTACT2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_CONTACT2'), 'nl_NL', 'Y', '______________________________________________Contact2_______________________________________________',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CONTACT2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '______________________________________________Contact2_______________________________________________',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CONTACT2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_NAME2','KM02',
'Nom',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_NAME2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Nom', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_NAME2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_NAME2'), 'fr_FR', 'Y', 'Nom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_NAME2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_NAME2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_NAME2'), 'nl_NL', 'Y', 'Nom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_NAME2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_NAME2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_ADDR1','KM02',
'Rue, N°',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_ADDR1' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Rue, N°', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_ADDR1' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_ADDR1'), 'fr_FR', 'Y', 'Rue, N°',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR1') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Rue, N°',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR1') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_ADDR1'), 'nl_NL', 'Y', 'Rue, N°',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR1') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Rue, N°',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR1') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_POSTAL2','KM02',
'C.P.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_POSTAL2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'C.P.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_POSTAL2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_POSTAL2'), 'fr_FR', 'Y', 'C.P.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_POSTAL2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'C.P.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_POSTAL2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_POSTAL2'), 'nl_NL', 'Y', 'C.P.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_POSTAL2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'C.P.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_POSTAL2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'S_COUNTRY','KM02',
'Pays',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'S_COUNTRY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Pays', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'S_COUNTRY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_COUNTRY'), 'fr_FR', 'Y', 'Pays',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_COUNTRY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pays',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_COUNTRY') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_COUNTRY'), 'nl_NL', 'Y', 'Pays',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_COUNTRY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pays',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_COUNTRY') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'S_POSTAL','KM02',
'C.P.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'S_POSTAL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'C.P.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'S_POSTAL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_POSTAL'), 'fr_FR', 'Y', 'C.P.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_POSTAL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'C.P.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_POSTAL') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_POSTAL'), 'nl_NL', 'Y', 'C.P.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_POSTAL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'C.P.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_POSTAL') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_EMAIL','KM02',
'Email non valide ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_EMAIL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Email non valide ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_EMAIL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_EMAIL'), 'fr_FR', 'Y', 'Email non valide ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_EMAIL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email non valide ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_EMAIL') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_EMAIL'), 'nl_NL', 'Y', 'Email non valide ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_EMAIL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email non valide ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_EMAIL') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_NOTSEL','KM02',
'Pas d''enregistrement sélectionné ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_NOTSEL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Pas d''enregistrement sélectionné ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_NOTSEL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_NOTSEL'), 'fr_FR', 'Y', 'Pas d''enregistrement sélectionné ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_NOTSEL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pas d''enregistrement sélectionné ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_NOTSEL') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_NOTSEL'), 'nl_NL', 'Y', 'Pas d''enregistrement sélectionné ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_NOTSEL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pas d''enregistrement sélectionné ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_NOTSEL') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_VALC2','KM02',
'Pour valider le contact2 une des informations (Email, téléphone ou GSM) doit être remplie',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_VALC2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Pour valider le contact2 une des informations (Email, téléphone ou GSM) doit être remplie', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_VALC2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_VALC2'), 'fr_FR', 'Y', 'Pour valider le contact2 une des informations (Email, téléphone ou GSM) doit être remplie',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_VALC2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pour valider le contact2 une des informations (Email, téléphone ou GSM) doit être remplie',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_VALC2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_VALC2'), 'nl_NL', 'Y', 'Pour valider le contact2 une des informations (Email, téléphone ou GSM) doit être remplie',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_VALC2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pour valider le contact2 une des informations (Email, téléphone ou GSM) doit être remplie',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_VALC2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_ADRLIV','KM02',
'Adresse de livraison/facturation incomplète',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_ADRLIV' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Adresse de livraison/facturation incomplète', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_ADRLIV' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_ADRLIV'), 'fr_FR', 'Y', 'Adresse de livraison/facturation incomplète',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_ADRLIV') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Adresse de livraison/facturation incomplète',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_ADRLIV') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_ADRLIV'), 'nl_NL', 'Y', 'Adresse de livraison/facturation incomplète',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_ADRLIV') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Adresse de livraison/facturation incomplète',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_ADRLIV') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'TAXID','KM02',
'Id. TVA',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'TAXID' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Id. TVA', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'TAXID' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='TAXID'), 'fr_FR', 'Y', 'Id. TVA',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='TAXID') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Id. TVA',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='TAXID') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='TAXID'), 'nl_NL', 'Y', 'Id. TVA',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='TAXID') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Id. TVA',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='TAXID') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_TAXID','KM02',
'Id. TVA',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_TAXID' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Id. TVA', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_TAXID' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_TAXID'), 'fr_FR', 'Y', 'Id. TVA',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_TAXID') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Id. TVA',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_TAXID') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_TAXID'), 'nl_NL', 'Y', 'Id. TVA',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_TAXID') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Id. TVA',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_TAXID') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_PHONE2','KM02',
'Tél.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_PHONE2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Tél.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_PHONE2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_PHONE2'), 'fr_FR', 'Y', 'Tél.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PHONE2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tél.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PHONE2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_PHONE2'), 'nl_NL', 'Y', 'Tél.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PHONE2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tél.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PHONE2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_ADDR2','KM02',
'Ligne 2',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_ADDR2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Ligne 2', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_ADDR2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_ADDR2'), 'fr_FR', 'Y', 'Ligne 2',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ligne 2',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_ADDR2'), 'nl_NL', 'Y', 'Ligne 2',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ligne 2',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_CTRY2','KM02',
'Pays',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_CTRY2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Pays', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_CTRY2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_CTRY2'), 'fr_FR', 'Y', 'Pays',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CTRY2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pays',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CTRY2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_CTRY2'), 'nl_NL', 'Y', 'Pays',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CTRY2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pays',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CTRY2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'S_PHONE','KM02',
'Tél.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'S_PHONE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Tél.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'S_PHONE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_PHONE'), 'fr_FR', 'Y', 'Tél.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_PHONE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tél.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_PHONE') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_PHONE'), 'nl_NL', 'Y', 'Tél.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_PHONE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tél.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_PHONE') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'S_NAME2','KM02',
'Prénom',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'S_NAME2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Prénom', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'S_NAME2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_NAME2'), 'fr_FR', 'Y', 'Prénom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_NAME2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prénom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_NAME2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_NAME2'), 'nl_NL', 'Y', 'Prénom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_NAME2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prénom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_NAME2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'S_TAXID','KM02',
'Id. TVA',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'S_TAXID' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Id. TVA', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'S_TAXID' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_TAXID'), 'fr_FR', 'Y', 'Id. TVA',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_TAXID') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Id. TVA',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_TAXID') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_TAXID'), 'nl_NL', 'Y', 'Id. TVA',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_TAXID') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Id. TVA',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_TAXID') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_ONEONLY','KM02',
'Vous ne pouvez sélectionner qu''un seul enregisrement',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_ONEONLY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Vous ne pouvez sélectionner qu''un seul enregisrement', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_ONEONLY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_ONEONLY'), 'fr_FR', 'Y', 'Vous ne pouvez sélectionner qu''un seul enregisrement',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_ONEONLY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Vous ne pouvez sélectionner qu''un seul enregisrement',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_ONEONLY') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_ONEONLY'), 'nl_NL', 'Y', 'Vous ne pouvez sélectionner qu''un seul enregisrement',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_ONEONLY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Vous ne pouvez sélectionner qu''un seul enregisrement',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_ONEONLY') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_CONT1','KM02',
'Nom du Contact1 invalide',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_CONT1' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Nom du Contact1 invalide', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_CONT1' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_CONT1'), 'fr_FR', 'Y', 'Nom du Contact1 invalide',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_CONT1') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom du Contact1 invalide',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_CONT1') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_CONT1'), 'nl_NL', 'Y', 'Nom du Contact1 invalide',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_CONT1') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom du Contact1 invalide',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_CONT1') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_MAIL1','KM02',
'Email du Contact1 invalide ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_MAIL1' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Email du Contact1 invalide ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_MAIL1' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_MAIL1'), 'fr_FR', 'Y', 'Email du Contact1 invalide ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_MAIL1') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email du Contact1 invalide ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_MAIL1') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_MAIL1'), 'nl_NL', 'Y', 'Email du Contact1 invalide ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_MAIL1') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email du Contact1 invalide ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_MAIL1') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'VALUE','KM02',
'Code',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'VALUE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Code', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'VALUE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='VALUE'), 'fr_FR', 'Y', 'Code',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='VALUE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Code',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='VALUE') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='VALUE'), 'nl_NL', 'Y', 'Code',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='VALUE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Code',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='VALUE') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_ADDRESS','KM02',
'__________________________________________Livraison/Facturation______________________________________',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_ADDRESS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = '__________________________________________Livraison/Facturation______________________________________', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_ADDRESS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_ADDRESS'), 'fr_FR', 'Y', '__________________________________________Livraison/Facturation_________________________________________',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDRESS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '__________________________________________Livraison/Facturation_________________________________________',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDRESS') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_ADDRESS'), 'nl_NL', 'Y', '__________________________________________Livraison/Facturation_________________________________________',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDRESS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '__________________________________________Livraison/Facturation_________________________________________',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDRESS') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_POSTAL','KM02',
'C.P.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_POSTAL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'C.P.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_POSTAL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_POSTAL'), 'fr_FR', 'Y', 'C.P.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_POSTAL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'C.P.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_POSTAL') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_POSTAL'), 'nl_NL', 'Y', 'C.P.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_POSTAL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'C.P.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_POSTAL') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_MAIL2','KM02',
'Email du Contact2 invalide ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_MAIL2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Email du Contact2 invalide ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_MAIL2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_MAIL2'), 'fr_FR', 'Y', 'Email du Contact2 invalide ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_MAIL2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email du Contact2 invalide ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_MAIL2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_MAIL2'), 'nl_NL', 'Y', 'Email du Contact2 invalide ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_MAIL2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Email du Contact2 invalide ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_MAIL2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_TEL2','KM02',
'Téléphone du Contact2 invalide',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_TEL2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Téléphone du Contact2 invalide', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_TEL2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_TEL2'), 'fr_FR', 'Y', 'Téléphone du Contact2 invalide',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_TEL2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Téléphone du Contact2 invalide',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_TEL2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_TEL2'), 'nl_NL', 'Y', 'Téléphone du Contact2 invalide',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_TEL2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Téléphone du Contact2 invalide',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_TEL2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_GSM2','KM02',
'GSM du Contact2 invalide ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_GSM2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'GSM du Contact2 invalide ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_GSM2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_GSM2'), 'fr_FR', 'Y', 'GSM du Contact2 invalide ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_GSM2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'GSM du Contact2 invalide ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_GSM2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_GSM2'), 'nl_NL', 'Y', 'GSM du Contact2 invalide ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_GSM2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'GSM du Contact2 invalide ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_GSM2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_CONT2','KM02',
'Nom du Contact2 invalide',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_CONT2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Nom du Contact2 invalide', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_CONT2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_CONT2'), 'fr_FR', 'Y', 'Nom du Contact2 invalide',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_CONT2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom du Contact2 invalide',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_CONT2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_CONT2'), 'nl_NL', 'Y', 'Nom du Contact2 invalide',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_CONT2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom du Contact2 invalide',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_CONT2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_GREETING1','KM02',
'Civilité',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_GREETING1' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Civilité', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_GREETING1' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_GREETING1'), 'fr_FR', 'Y', 'Civilité',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GREETING1') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Civilité',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GREETING1') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_GREETING1'), 'nl_NL', 'Y', 'Civilité',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GREETING1') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Civilité',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GREETING1') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'C_NAME','KM02',
'Nom',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'C_NAME' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Nom', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'C_NAME' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='C_NAME'), 'fr_FR', 'Y', 'Nom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_NAME') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_NAME') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='C_NAME'), 'nl_NL', 'Y', 'Nom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_NAME') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_NAME') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'C_TAXID','KM02',
'Id. TVA',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'C_TAXID' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Id. TVA', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'C_TAXID' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='C_TAXID'), 'fr_FR', 'Y', 'Id. TVA',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_TAXID') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Id. TVA',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_TAXID') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='C_TAXID'), 'nl_NL', 'Y', 'Id. TVA',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_TAXID') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Id. TVA',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_TAXID') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'Country','KM02',
'Pays',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'Country' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Pays', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'Country' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='Country'), 'fr_FR', 'Y', 'Pays',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Country') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pays',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Country') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='Country'), 'nl_NL', 'Y', 'Pays',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Country') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pays',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Country') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_CONTACT','KM02',
'Contact__________________________________________________________________________',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_CONTACT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Contact__________________________________________________________________________', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_CONTACT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_CONTACT'), 'fr_FR', 'Y', '______________________________________________Contact1_______________________________________________',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CONTACT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '______________________________________________Contact1_______________________________________________',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CONTACT') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_CONTACT'), 'nl_NL', 'Y', '______________________________________________Contact1_______________________________________________',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CONTACT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '______________________________________________Contact1_______________________________________________',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CONTACT') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_NAME','KM02',
'Nom',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_NAME' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Nom', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_NAME' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_NAME'), 'fr_FR', 'Y', 'Nom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_NAME') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_NAME') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_NAME'), 'nl_NL', 'Y', 'Nom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_NAME') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_NAME') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_PRENOM','KM02',
'Prénom',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_PRENOM' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Prénom', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_PRENOM' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_PRENOM'), 'fr_FR', 'Y', '   Prénom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PRENOM') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '   Prénom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PRENOM') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_PRENOM'), 'nl_NL', 'Y', 'Prénom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PRENOM') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prénom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PRENOM') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_PHONE','KM02',
'Tél.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_PHONE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Tél.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_PHONE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_PHONE'), 'fr_FR', 'Y', 'Tél.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PHONE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tél.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PHONE') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_PHONE'), 'nl_NL', 'Y', 'Tél.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PHONE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tél.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PHONE') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_CITY','KM02',
'Ville',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_CITY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Ville', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_CITY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_CITY'), 'fr_FR', 'Y', 'Ville',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CITY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ville',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CITY') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_CITY'), 'nl_NL', 'Y', 'Ville',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CITY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ville',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CITY') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_ADDR22','KM02',
'Ligne 2',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_ADDR22' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Ligne 2', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_ADDR22' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_ADDR22'), 'fr_FR', 'Y', 'Ligne 2',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR22') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ligne 2',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR22') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_ADDR22'), 'nl_NL', 'Y', 'Ligne 2',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR22') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ligne 2',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDR22') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'S_NAME','KM02',
'Nom',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'S_NAME' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Nom', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'S_NAME' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_NAME'), 'fr_FR', 'Y', 'Nom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_NAME') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_NAME') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_NAME'), 'nl_NL', 'Y', 'Nom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_NAME') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Nom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_NAME') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'S_CITY','KM02',
'Ville',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'S_CITY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Ville', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'S_CITY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_CITY'), 'fr_FR', 'Y', 'Ville',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_CITY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ville',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_CITY') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='S_CITY'), 'nl_NL', 'Y', 'Ville',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_CITY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ville',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='S_CITY') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_VAT','KM02',
'Code TVA non Valide (ex: BE0445616416)',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_VAT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Code TVA non Valide (ex: BE0445616416)', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_VAT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_VAT'), 'fr_FR', 'Y', 'Code TVA non Valide (ex: BE0445616416)',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_VAT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Code TVA non Valide (ex: BE0445616416)',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_VAT') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_VAT'), 'nl_NL', 'Y', 'Code TVA non Valide (ex: BE0445616416)',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_VAT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Code TVA non Valide (ex: BE0445616416)',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_VAT') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_GREET','KM02',
'Civilité invalide',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_GREET' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Civilité invalide', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_GREET' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_GREET'), 'fr_FR', 'Y', 'Civilité invalide',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_GREET') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Civilité invalide',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_GREET') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_GREET'), 'nl_NL', 'Y', 'Civilité invalide',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_GREET') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Civilité invalide',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_GREET') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_TEL1','KM02',
'Téléphone du Contact1 invalide',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_TEL1' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Téléphone du Contact1 invalide', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_TEL1' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_TEL1'), 'fr_FR', 'Y', 'Téléphone du Contact1 invalide" ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_TEL1') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Téléphone du Contact1 invalide" ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_TEL1') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_TEL1'), 'nl_NL', 'Y', 'Téléphone du Contact1 invalide" ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_TEL1') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Téléphone du Contact1 invalide" ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_TEL1') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_ADRINV','KM02',
'Adresse de facturation incomplète',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_ADRINV' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Adresse de facturation incomplète', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_ADRINV' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_ADRINV'), 'fr_FR', 'Y', 'Adresse de facturation incomplète',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_ADRINV') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Adresse de facturation incomplète',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_ADRINV') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_ADRINV'), 'nl_NL', 'Y', 'Adresse de facturation incomplète',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_ADRINV') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Adresse de facturation incomplète',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_ADRINV') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_GREETING2','KM02',
'Civilité',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_GREETING2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Civilité', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_GREETING2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_GREETING2'), 'fr_FR', 'Y', 'Civilité',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GREETING2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Civilité',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GREETING2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_GREETING2'), 'nl_NL', 'Y', 'Civilité',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GREETING2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Civilité',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GREETING2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'C_PHONE','KM02',
'Tél.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'C_PHONE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Tél.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'C_PHONE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='C_PHONE'), 'fr_FR', 'Y', 'Tél.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_PHONE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tél.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_PHONE') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='C_PHONE'), 'nl_NL', 'Y', 'Tél.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_PHONE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tél.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='C_PHONE') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'PHONE','KM02',
'Tél.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'PHONE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Tél.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'PHONE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='PHONE'), 'fr_FR', 'Y', 'Tél.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='PHONE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tél.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='PHONE') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='PHONE'), 'nl_NL', 'Y', 'Tél.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='PHONE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tél.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='PHONE') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'POSTAL','KM02',
'C.P.',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'POSTAL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'C.P.', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'POSTAL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POSTAL'), 'fr_FR', 'Y', 'C.P.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POSTAL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'C.P.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POSTAL') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='POSTAL'), 'nl_NL', 'Y', 'C.P.',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POSTAL') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'C.P.',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='POSTAL') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'CITY','KM02',
'Ville',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'CITY' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Ville', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'CITY' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='CITY'), 'fr_FR', 'Y', 'Ville',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='CITY') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ville',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='CITY') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='CITY'), 'nl_NL', 'Y', 'Ville',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='CITY') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ville',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='CITY') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_PRENOM2','KM02',
'Prénom',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_PRENOM2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Prénom', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_PRENOM2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_PRENOM2'), 'fr_FR', 'Y', 'Prénom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PRENOM2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prénom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PRENOM2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_PRENOM2'), 'nl_NL', 'Y', 'Prénom',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PRENOM2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Prénom',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_PRENOM2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_GSM2','KM02',
'Gsm',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_GSM2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Gsm', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_GSM2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_GSM2'), 'fr_FR', 'Y', 'Gsm',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GSM2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Gsm',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GSM2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_GSM2'), 'nl_NL', 'Y', 'Gsm',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GSM2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Gsm',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_GSM2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_ADDRESS2','KM02',
'______________________________________________Facturation____________________________________________ ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_ADDRESS2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = '______________________________________________Facturation____________________________________________ ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_ADDRESS2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_ADDRESS2'), 'fr_FR', 'Y', '______________________________________________Facturation_____________________________________________ ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDRESS2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '______________________________________________Facturation_____________________________________________ ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDRESS2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_ADDRESS2'), 'nl_NL', 'Y', '______________________________________________Facturation_____________________________________________ ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDRESS2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '______________________________________________Facturation_____________________________________________ ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_ADDRESS2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'D_CITY2','KM02',
'Ville',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'D_CITY2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Ville', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'D_CITY2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_CITY2'), 'fr_FR', 'Y', 'Ville',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CITY2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ville',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CITY2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='D_CITY2'), 'nl_NL', 'Y', 'Ville',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CITY2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Ville',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='D_CITY2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_GSM1','KM02',
'GSM du Contact1 invalide ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_GSM1' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'GSM du Contact1 invalide ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_GSM1' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_GSM1'), 'fr_FR', 'Y', 'GSM du Contact1 invalide ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_GSM1') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'GSM du Contact1 invalide ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_GSM1') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_GSM1'), 'nl_NL', 'Y', 'GSM du Contact1 invalide ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_GSM1') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'GSM du Contact1 invalide ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_GSM1') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_VALC1','KM02',
'Pour valider le contact1 une des informations (Email, téléphone ou GSM) doit être remplie ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_VALC1' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Pour valider le contact1 une des informations (Email, téléphone ou GSM) doit être remplie ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_VALC1' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_VALC1'), 'fr_FR', 'Y', 'Pour valider le contact1 une des informations (Email, téléphone ou GSM) doit être remplie ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_VALC1') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pour valider le contact1 une des informations (Email, téléphone ou GSM) doit être remplie ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_VALC1') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_VALC1'), 'nl_NL', 'Y', 'Pour valider le contact1 une des informations (Email, téléphone ou GSM) doit être remplie ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_VALC1') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Pour valider le contact1 une des informations (Email, téléphone ou GSM) doit être remplie ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_VALC1') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'E_2REQ','KM02',
'Deux Contacts sont requis pour cette civilté',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'E_2REQ' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'KM02', msgtext = 'Deux Contacts sont requis pour cette civilté', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'E_2REQ' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_2REQ'), 'fr_FR', 'Y', 'Deux Contacts sont requis pour cette civilté ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_2REQ') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Deux Contacts sont requis pour cette civilté ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_2REQ') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='E_2REQ'), 'nl_NL', 'Y', 'Deux Contacts sont requis pour cette civilté ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_2REQ') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Deux Contacts sont requis pour cette civilté ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='E_2REQ') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'KM02 - Professionalisation des tiers', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'KM02' ;

