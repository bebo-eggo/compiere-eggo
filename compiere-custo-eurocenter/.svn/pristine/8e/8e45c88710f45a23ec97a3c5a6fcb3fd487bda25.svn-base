insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'21W4','21W4 - Evolution #67460 Paiements Automatiques: Lot de 8 fac',
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
where not exists (select 1 from AD_EntityType where EntityType = '21W4' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '21W4 - Evolution #67460 Paiements Automatiques: Lot de 8 fac', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '21W4' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'PaySelectionCheck_MaxInvoice','21W4',
'8',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'PaySelectionCheck_MaxInvoice' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '21W4', msgtext = '8', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'PaySelectionCheck_MaxInvoice' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='PaySelectionCheck_MaxInvoice'), 'fr_FR', 'Y', '8',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='PaySelectionCheck_MaxInvoice') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '8',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='PaySelectionCheck_MaxInvoice') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='PaySelectionCheck_MaxInvoice'), 'nl_NL', 'Y', '8',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='PaySelectionCheck_MaxInvoice') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '8',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='PaySelectionCheck_MaxInvoice') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '21W4 - Evolution #67460 Paiements Automatiques: Lot de 8 fac', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '21W4' ;

