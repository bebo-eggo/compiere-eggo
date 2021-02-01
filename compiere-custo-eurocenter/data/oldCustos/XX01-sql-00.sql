insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary)
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'XX01','XX01 - UPDATE No Version',
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
where not exists (select 1 from AD_EntityType where EntityType = 'XX01' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'XX01 - UPDATE No Version', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = ''
where EntityType = 'XX01' ;

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'XX01 - UPDATE No Version', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = ''
where EntityType = 'XX01' ;