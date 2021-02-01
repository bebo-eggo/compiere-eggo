insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E443','69443 (E443) - Gestion de l''accès au bouton "OK" pour réconc',
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
where not exists (select 1 from AD_EntityType where EntityType = 'E443' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '69443 (E443) - Gestion de l''accès au bouton "OK" pour réconc', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E443' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'Sortie_caisse_Ecart_Amt_Zero_ERR','E443',
'Ecart amount must be calculated first, please wait!',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'Sortie_caisse_Ecart_Amt_Zero_ERR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E443', msgtext = 'Ecart amount must be calculated first, please wait!', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'Sortie_caisse_Ecart_Amt_Zero_ERR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='Sortie_caisse_Ecart_Amt_Zero_ERR'), 'nl_NL', 'Y', 'Montant Ecart doit être d''abord calculé !',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Sortie_caisse_Ecart_Amt_Zero_ERR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Montant Ecart doit être d''abord calculé !',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Sortie_caisse_Ecart_Amt_Zero_ERR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='Sortie_caisse_Ecart_Amt_Zero_ERR'), 'fr_FR', 'Y', 'Montant Ecart doit être d''abord calculé,s''il vous plaît patienter !',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Sortie_caisse_Ecart_Amt_Zero_ERR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Montant Ecart doit être d''abord calculé,s''il vous plaît patienter !',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='Sortie_caisse_Ecart_Amt_Zero_ERR') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '69443 (E443) - Gestion de l''accès au bouton "OK" pour réconc', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E443' ;

