insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E220','10220 - Evolution - Ajout du BI (Jasper) de Madeleine',
'Ajout du BI (Jasper) de Madeleine',
'',
'Y',
'',
'',
'',
'N',
'',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'E220' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '10220 - Evolution - Ajout du BI (Jasper) de Madeleine', description = 'Ajout du BI (Jasper) de Madeleine', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E220' ;

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'JASPER_CHARTS_URL','E220',
'http://jasperserver.erp.audaxis.com/jasperserver/flow.html?_flowId=viewReportFlow&'||'reportUnit=%2FAJR%2FDashboards%2Fdash_ventes&'||'organisationID=1000016&'||'annee=2009&'||'mois_fin=7&'||'reportLocale=en_FR',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'JASPER_CHARTS_URL' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E220', msgtext = 'http://jasperserver.erp.audaxis.com/jasperserver/flow.html?_flowId=viewReportFlow&'||'reportUnit=%2FAJR%2FDashboards%2Fdash_ventes&'||'organisationID=1000016&'||'annee=2009&'||'mois_fin=7&'||'reportLocale=en_FR', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'JASPER_CHARTS_URL' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='JASPER_CHARTS_URL'), 'fr_FR', 'Y', 'http://jasperserver.erp.audaxis.com/jasperserver/flow.html?_flowId=viewReportFlow&'||'reportUnit=%2FAJR%2FDashboards%2Fdash_ventes&'||'organisationID=1000016&'||'annee=2009&'||'mois_fin=7&'||'reportLocale=en_FR',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='JASPER_CHARTS_URL') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'http://jasperserver.erp.audaxis.com/jasperserver/flow.html?_flowId=viewReportFlow&'||'reportUnit=%2FAJR%2FDashboards%2Fdash_ventes&'||'organisationID=1000016&'||'annee=2009&'||'mois_fin=7&'||'reportLocale=en_FR',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='JASPER_CHARTS_URL') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'JASPER_USER','E220',
'jasperadmin',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'JASPER_USER' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E220', msgtext = 'jasperadmin', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'JASPER_USER' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='JASPER_USER'), 'fr_FR', 'Y', 'jasperadmin',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='JASPER_USER') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'jasperadmin',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='JASPER_USER') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'JASPER_PWD','E220',
'auda*1s',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'JASPER_PWD' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E220', msgtext = 'auda*1s', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'JASPER_PWD' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='JASPER_PWD'), 'fr_FR', 'Y', 'auda*1s',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='JASPER_PWD') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'auda*1s',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='JASPER_PWD') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'DASHBOARD_ENABLED','E220',
'N',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'DASHBOARD_ENABLED' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'E220', msgtext = 'N', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'DASHBOARD_ENABLED' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='DASHBOARD_ENABLED'), 'fr_FR', 'Y', 'N',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='DASHBOARD_ENABLED') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'N',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='DASHBOARD_ENABLED') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '10220 - Evolution - Ajout du BI (Jasper) de Madeleine', description = 'Ajout du BI (Jasper) de Madeleine', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E220' ;

