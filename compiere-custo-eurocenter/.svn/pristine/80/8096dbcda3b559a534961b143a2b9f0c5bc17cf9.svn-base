insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'3J1L','3J1L-115763',
'',
'',
'Y',
'',
'',
'',
'N',
'51',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '3J1L' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '3J1L-115763', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '51', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '3J1L' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'XX_Gest_roles','3J1L',
'1000740;1001767',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'XX_Gest_roles' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '3J1L', msgtext = '1000740;1001767', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'XX_Gest_roles' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_Gest_roles'), 'fr_FR', 'Y', '','1000740;1001767'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_Gest_roles') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = '1000740;1001767' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_Gest_roles') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_Gest_roles'), 'nl_NL', 'Y', '','1000740;1001767'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_Gest_roles') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = '1000740;1001767' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_Gest_roles') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'XX_no_solde_inv_gest++','3J1L',
'PAS DE FACTURE DE SOLDE GENEREE ? ENVOYER LE MAIL SANS LA FACTURE',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'XX_no_solde_inv_gest++' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '3J1L', msgtext = 'PAS DE FACTURE DE SOLDE GENEREE ? ENVOYER LE MAIL SANS LA FACTURE', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'XX_no_solde_inv_gest++' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_no_solde_inv_gest++'), 'fr_FR', 'Y', '','PAS DE FACTURE DE SOLDE GENEREE ? ENVOYER LE MAIL SANS LA FACTURE'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_solde_inv_gest++') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'PAS DE FACTURE DE SOLDE GENEREE ? ENVOYER LE MAIL SANS LA FACTURE' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_solde_inv_gest++') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_no_solde_inv_gest++'), 'nl_NL', 'Y', '','Geen saldofactuur aangemaakt ? mail versturen zonder factuur'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_solde_inv_gest++') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Geen saldofactuur aangemaakt ? mail versturen zonder factuur' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_solde_inv_gest++') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'XX_no_ech_05_gest++','3J1L',
'PAS D''ECHEANCE "05 Paiement à la livraison/enlèvement" ? ENVOYER LE MAIL SANS LA FACTURE',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'XX_no_ech_05_gest++' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '3J1L', msgtext = 'PAS D''ECHEANCE "05 Paiement à la livraison/enlèvement" ? ENVOYER LE MAIL SANS LA FACTURE', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'XX_no_ech_05_gest++' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_no_ech_05_gest++'), 'fr_FR', 'Y', '','PAS D''ECHEANCE "05 Paiement à la livraison/enlèvement" ? ENVOYER LE MAIL SANS LA FACTURE'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_ech_05_gest++') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'PAS D''ECHEANCE "05 Paiement à la livraison/enlèvement" ? ENVOYER LE MAIL SANS LA FACTURE' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_ech_05_gest++') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_no_ech_05_gest++'), 'nl_NL', 'Y', '','Geen betalingsafspraak "05 betaling bij levering/ophaling" ? mail versturen zonder factuur'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_ech_05_gest++') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Geen betalingsafspraak "05 betaling bij levering/ophaling" ? mail versturen zonder factuur' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_ech_05_gest++') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'XX_Gest_roles++','3J1L',
'1001775;1002386',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'XX_Gest_roles++' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '3J1L', msgtext = '1001775;1002386', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'XX_Gest_roles++' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_Gest_roles++'), 'fr_FR', 'Y', '','1001775;1002386'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_Gest_roles++') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = '1001775;1002386' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_Gest_roles++') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_Gest_roles++'), 'nl_NL', 'Y', '','1001775;1002386'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_Gest_roles++') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = '1001775;1002386' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_Gest_roles++') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'XX_no_ech_05_gest','3J1L',
'PAS D''ECHEANCE "05 Paiement à la livraison/enlèvement" ? ECHEANCIER A CORRIGER',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'XX_no_ech_05_gest' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '3J1L', msgtext = 'PAS D''ECHEANCE "05 Paiement à la livraison/enlèvement" ? ECHEANCIER A CORRIGER', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'XX_no_ech_05_gest' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_no_ech_05_gest'), 'fr_FR', 'Y', '','PAS D''ECHEANCE "05 Paiement à la livraison/enlèvement" ? ECHEANCIER A CORRIGER'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_ech_05_gest') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'PAS D''ECHEANCE "05 Paiement à la livraison/enlèvement" ? ECHEANCIER A CORRIGER' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_ech_05_gest') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_no_ech_05_gest'), 'nl_NL', 'Y', '','Geen betalingsafspraak "05 betaling bij levering/ophaling" ? betalingsafspraken corrigeren'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_ech_05_gest') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Geen betalingsafspraak "05 betaling bij levering/ophaling" ? betalingsafspraken corrigeren' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_ech_05_gest') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'XX_no_solde_inv_gest','3J1L',
'PAS DE FACTURE DE SOLDE GENEREE ? VERIFIER ECHEANCIER ET FACTURER L''ECHEANCE ''05 Paiement à la livraison/enlèvement''',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'XX_no_solde_inv_gest' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '3J1L', msgtext = 'PAS DE FACTURE DE SOLDE GENEREE ? VERIFIER ECHEANCIER ET FACTURER L''ECHEANCE "05 Paiement à la livraison/enlèvement"', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'XX_no_solde_inv_gest' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_no_solde_inv_gest'), 'fr_FR', 'Y', '','PAS DE FACTURE DE SOLDE GENEREE ? VERIFIER ECHEANCIER ET FACTURER L''ECHEANCE "05 Paiement à la livraison/enlèvement"'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_solde_inv_gest') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'PAS DE FACTURE DE SOLDE GENEREE ? VERIFIER ECHEANCIER ET FACTURER L''ECHEANCE "05 Paiement à la livraison/enlèvement"' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_solde_inv_gest') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='XX_no_solde_inv_gest'), 'nl_NL', 'Y', '','Geen saldofactuur aangemaakt ? betalingsafspraken nakijken en betalingsafspraak "05 betaling bij levering/ophaling" factureren'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_solde_inv_gest') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Geen saldofactuur aangemaakt ? betalingsafspraken nakijken en betalingsafspraak "05 betaling bij levering/ophaling" factureren' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='XX_no_solde_inv_gest') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '3J1L-115763', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '51', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '3J1L' ;

