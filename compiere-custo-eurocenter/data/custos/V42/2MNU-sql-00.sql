insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2MNU','2MNU-86714',
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
where not exists (select 1 from AD_EntityType where EntityType = '2MNU' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2MNU-86714', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2MNU' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_INVOICE_IN2','2MNU',
'/opt/IMPORT_INVOICES/IN_BASEWARE',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_INVOICE_IN2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2MNU', msgtext = '/opt/IMPORT_INVOICES/IN_BASEWARE', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_INVOICE_IN2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN2'), 'fr_FR', 'Y', '/opt/IMPORT_INVOICES/IN_BASEWARE',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '/opt/IMPORT_INVOICES/IN_BASEWARE',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN2'), 'nl_NL', 'Y', '/opt/IMPORT_INVOICES/IN_BASEWARE',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '/opt/IMPORT_INVOICES/IN_BASEWARE',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN2') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_INVOICE_IN_BACKUP2','2MNU',
'/opt/IMPORT_INVOICES/IN_BASEWARE/Backup',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_INVOICE_IN_BACKUP2' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '2MNU', msgtext = '/opt/IMPORT_INVOICES/IN_BASEWARE/Backup', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_INVOICE_IN_BACKUP2' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_BACKUP2'), 'fr_FR', 'Y', '/opt/IMPORT_INVOICES/IN_BASEWARE/Backup',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_BACKUP2') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '/opt/IMPORT_INVOICES/IN_BASEWARE/Backup',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_BACKUP2') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_BACKUP2'), 'nl_NL', 'Y', '/opt/IMPORT_INVOICES/IN_BASEWARE/Backup',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_BACKUP2') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '/opt/IMPORT_INVOICES/IN_BASEWARE/Backup',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_INVOICE_IN_BACKUP2') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '2MNU-86714', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2MNU' ;

