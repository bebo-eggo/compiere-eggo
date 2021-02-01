insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E517','62517 - Vérification Unicité N° Facture Fournisseur',
'',
'',
'Y',
'',
'',
'',
'N',
'380',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'E517' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '62517 - Vérification Unicité N° Facture Fournisseur', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '380', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E517' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_DUPLICAT_POREFERENCE','E517',
'N° Facture existe déjà  pour ce Fournisseur ',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_DUPLICAT_POREFERENCE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E517', msgtext = 'N° Facture existe déjà  pour ce Fournisseur ', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_DUPLICAT_POREFERENCE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_DUPLICAT_POREFERENCE'), 'fr_FR', 'Y', 'N° Facture existe déjà  pour ce Fournisseur ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_DUPLICAT_POREFERENCE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'N° Facture existe déjà  pour ce Fournisseur ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_DUPLICAT_POREFERENCE') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_DUPLICAT_POREFERENCE'), 'nl_NL', 'Y', 'N° Facture existe déjà  pour ce Fournisseur ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_DUPLICAT_POREFERENCE') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'N° Facture existe déjà  pour ce Fournisseur ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_DUPLICAT_POREFERENCE') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '62517 - Vérification Unicité N° Facture Fournisseur', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '380', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E517' ;

