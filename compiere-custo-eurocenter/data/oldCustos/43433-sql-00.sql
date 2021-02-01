insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E433','43433 - Case à cocher IsCashDiff sur C_Charge',
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
where not exists (select 1 from AD_EntityType where EntityType = 'E433' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '43433 - Case à cocher IsCashDiff sur C_Charge', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E433' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EUROCENTER_UNIQUE_CASHDIFF','E433',
'Erreur. Différence de Caisse: Un seul enregistrement possible !',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EUROCENTER_UNIQUE_CASHDIFF' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E433', msgtext = 'Erreur. Différence de Caisse: Un seul enregistrement possible !', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EUROCENTER_UNIQUE_CASHDIFF' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EUROCENTER_UNIQUE_CASHDIFF'), 'nl_NL', 'Y', 'Erreur. Différence de Caisse: Un seul enregistrement possible !',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EUROCENTER_UNIQUE_CASHDIFF') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Erreur. Différence de Caisse: Un seul enregistrement possible !',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EUROCENTER_UNIQUE_CASHDIFF') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EUROCENTER_UNIQUE_CASHDIFF'), 'fr_FR', 'Y', 'Erreur. Différence de Caisse: Un seul enregistrement possible !',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EUROCENTER_UNIQUE_CASHDIFF') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Erreur. Différence de Caisse: Un seul enregistrement possible !',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EUROCENTER_UNIQUE_CASHDIFF') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '43433 - Case à cocher IsCashDiff sur C_Charge', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E433' ;

UPDATE AD_Column
SET ismandatory ='Y',
  ismandatoryui ='Y'
WHERE Columnname='IsCashDiff'
AND ad_table_id = 313;
