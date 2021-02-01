insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EXT','Extensions',
'Application Extensions',
'Alternative to User maintained entity type.  Will be preserved during version migration.',
'Y',
'',
'com.audaxis.compiere.model',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EXT' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'Extensions', description = 'Application Extensions', help = 'Alternative to User maintained entity type.  Will be preserved during version migration.', isactive = 'Y', classpath = '', modelpackage = 'com.audaxis.compiere.model', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = '', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EXT' ;

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'Extensions', description = 'Application Extensions', help = 'Alternative to User maintained entity type.  Will be preserved during version migration.', isactive = 'Y', classpath = '', modelpackage = 'com.audaxis.compiere.model', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = '', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EXT' ;

