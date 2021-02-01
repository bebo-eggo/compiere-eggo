insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E958','70958 (E958) - CODA-Partie 2B - Communication structurée',
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
where not exists (select 1 from AD_EntityType where EntityType = 'E958' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '70958 (E958) - CODA-Partie 2B - Communication structurée', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E958' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_TRXAMT_ERR','E958',
'The sum of gross amount and the fee differs from the amount of the transaction',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_TRXAMT_ERR' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E958', msgtext = 'The sum of gross amount and the fee differs from the amount of the transaction', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_TRXAMT_ERR' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_TRXAMT_ERR'), 'nl_NL', 'Y', 'La somme du montant Brut et de la commission est différente du montant de la transaction',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_TRXAMT_ERR') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'La somme du montant Brut et de la commission est différente du montant de la transaction',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_TRXAMT_ERR') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_TRXAMT_ERR'), 'fr_FR', 'Y', 'La somme du montant Brut et de la commission est différente du montant de la transaction',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_TRXAMT_ERR') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'La somme du montant Brut et de la commission est différente du montant de la transaction',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_TRXAMT_ERR') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'AUDAXIS_CODA_POS2','E958',
'111',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'AUDAXIS_CODA_POS2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E958', msgtext = '111', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'AUDAXIS_CODA_POS2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_CODA_POS2'), 'nl_NL', 'Y', '111',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CODA_POS2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '111',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CODA_POS2') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='AUDAXIS_CODA_POS2'), 'fr_FR', 'Y', '111',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CODA_POS2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '111',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='AUDAXIS_CODA_POS2') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '70958 (E958) - CODA-Partie 2B - Communication structurée', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E958' ;

