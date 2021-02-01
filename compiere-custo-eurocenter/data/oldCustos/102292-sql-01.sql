insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'F292','102292 - Connexion via notre single sign on (SSO) ',
'',
'',
'Y',
'',
'',
'',
'Y',
'',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'F292' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '102292 - Connexion via notre single sign on (SSO) ', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'F292' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'HTTPSession',(select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'),
'',
'F292',
'HTTPSession',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'HTTPSession'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'), description = '', entitytype = 'F292', name = 'HTTPSession', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'HTTPSession'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='HTTPSession' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')), 'fr_FR', 'Y', '','HTTPSession'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPSession' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPSession' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPSession' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='HTTPSession' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')), 'nl_NL', 'Y', '','HTTPSession'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPSession' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPSession' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPSession' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'HTTPRequest',(select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'),
'',
'F292',
'HTTPRequest',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'HTTPRequest'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'), description = '', entitytype = 'F292', name = 'HTTPRequest', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'HTTPRequest'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='HTTPRequest' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')), 'fr_FR', 'Y', '','HTTPRequest'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPRequest' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPRequest' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPRequest' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='HTTPRequest' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')), 'nl_NL', 'Y', '','HTTPRequest'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPRequest' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPRequest' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPRequest' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'HTTPHeader',(select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'),
'',
'F292',
'HTTPHeader',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'HTTPHeader'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'), description = '', entitytype = 'F292', name = 'HTTPHeader', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'HTTPHeader'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='HTTPHeader' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')), 'fr_FR', 'Y', '','HTTPHeader'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPHeader' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPHeader' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPHeader' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='HTTPHeader' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')), 'nl_NL', 'Y', '','HTTPHeader'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPHeader' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPHeader' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPHeader' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'nl_NL';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'HTTPMessages','HTTPMessages',
'F292',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'HTTPMessages' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = 'HTTPMessages', entitytype = 'F292', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'HTTPMessages' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='HTTPMessages'), 'fr_FR', 'Y', '','HTTPMessages','HTTPMessages'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='HTTPMessages') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'HTTPMessages',Name = 'HTTPMessages' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='HTTPMessages') and ad_language = 'fr_FR';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='HTTPMessages'), 'nl_NL', 'Y', '','HTTPMessages','HTTPMessages'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='HTTPMessages') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'HTTPMessages',Name = 'HTTPMessages' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='HTTPMessages') and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'HTTPSession',(select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'),
'',
'F292',
'HTTPSession',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'HTTPSession'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'), description = '', entitytype = 'F292', name = 'HTTPSession', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'HTTPSession'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='HTTPSession' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')), 'fr_FR', 'Y', '','HTTPSession'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPSession' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPSession' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPSession' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='HTTPSession' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')), 'nl_NL', 'Y', '','HTTPSession'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPSession' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPSession' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPSession' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'HTTPRequest',(select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'),
'',
'F292',
'HTTPRequest',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'HTTPRequest'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'), description = '', entitytype = 'F292', name = 'HTTPRequest', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'HTTPRequest'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='HTTPRequest' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')), 'fr_FR', 'Y', '','HTTPRequest'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPRequest' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPRequest' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPRequest' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='HTTPRequest' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')), 'nl_NL', 'Y', '','HTTPRequest'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPRequest' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPRequest' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPRequest' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'nl_NL';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'HTTPHeader',(select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'),
'',
'F292',
'HTTPHeader',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = 'HTTPHeader'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'), description = '', entitytype = 'F292', name = 'HTTPHeader', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = 'HTTPHeader'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='HTTPHeader' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')), 'fr_FR', 'Y', '','HTTPHeader'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPHeader' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPHeader' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPHeader' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'fr_FR';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='HTTPHeader' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')), 'nl_NL', 'Y', '','HTTPHeader'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPHeader' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'nl_NL');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPHeader' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='HTTPHeader' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'HTTPMessages')) and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'DisableAuthentication','',
'F292',
'',
'DisableAuthentication',
'',
'',
'',
'',
'Disable Compiere Authentication',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'DisableAuthentication' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'F292', help = '', name = 'DisableAuthentication', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Disable Compiere Authentication', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'DisableAuthentication' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='DisableAuthentication'), 'fr_FR', 'Y', '','DisableAuthentication','','','Disable Compiere Authentication','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='DisableAuthentication') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'DisableAuthentication',Help = '',PO_PrintName = '',PrintName = 'Disable Compiere Authentication',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='DisableAuthentication') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='DisableAuthentication'), 'nl_NL', 'Y', '','DisableAuthentication','','','Disable Compiere Authentication','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='DisableAuthentication') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'DisableAuthentication',Help = '',PO_PrintName = '',PrintName = 'Disable Compiere Authentication',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='DisableAuthentication') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Enabled3rdPartyAuthentication','',
'F292',
'',
'Enabled3rdPartyAuthentication',
'',
'',
'',
'',
'Enabled 3rd Party Authentication',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Enabled3rdPartyAuthentication' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'F292', help = '', name = 'Enabled3rdPartyAuthentication', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Enabled 3rd Party Authentication', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Enabled3rdPartyAuthentication' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Enabled3rdPartyAuthentication'), 'fr_FR', 'Y', '','Enabled3rdPartyAuthentication','','','Enabled 3rd Party Authentication','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Enabled3rdPartyAuthentication') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Enabled3rdPartyAuthentication',Help = '',PO_PrintName = '',PrintName = 'Enabled 3rd Party Authentication',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Enabled3rdPartyAuthentication') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Enabled3rdPartyAuthentication'), 'nl_NL', 'Y', '','Enabled3rdPartyAuthentication','','','Enabled 3rd Party Authentication','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Enabled3rdPartyAuthentication') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Enabled3rdPartyAuthentication',Help = '',PO_PrintName = '',PrintName = 'Enabled 3rd Party Authentication',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Enabled3rdPartyAuthentication') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'HTTPMessage','',
'F292',
'',
'HTTPMessage',
'',
'',
'',
'',
'HTTPMessage',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'HTTPMessage' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'F292', help = '', name = 'HTTPMessage', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'HTTPMessage', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'HTTPMessage' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='HTTPMessage'), 'fr_FR', 'Y', '','HTTPMessage','','','HTTPMessage','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='HTTPMessage') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPMessage',Help = '',PO_PrintName = '',PrintName = 'HTTPMessage',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='HTTPMessage') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='HTTPMessage'), 'nl_NL', 'Y', '','HTTPMessage','','','HTTPMessage','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='HTTPMessage') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'HTTPMessage',Help = '',PO_PrintName = '',PrintName = 'HTTPMessage',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='HTTPMessage') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Token','',
'F292',
'',
'Token',
'',
'',
'',
'',
'Remote User Token',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Token' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'F292', help = '', name = 'Token', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Remote User Token', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Token' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Token'), 'fr_FR', 'Y', '','Token','','','Remote User Token','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Token') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Token',Help = '',PO_PrintName = '',PrintName = 'Remote User Token',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Token') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Help,PO_Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Token'), 'nl_NL', 'Y', '','Token','','','Remote User Token','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Token') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Token',Help = '',PO_PrintName = '',PrintName = 'Remote User Token',PO_Name = '',PO_Help = '',PO_Description = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Token') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DisableAuthentication',(select AD_Element_ID from AD_Element where ColumnName = 'DisableAuthentication'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_System'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'F292',
1,
'',
'DisableAuthentication',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
'N',
'Y',
'',
'',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'DisableAuthentication'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DisableAuthentication'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_System'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'F292', fieldlength = 1, help = '', name = 'DisableAuthentication', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DisableAuthentication'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')), 'fr_FR', 'Y', 'DisableAuthentication'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'DisableAuthentication' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')), 'nl_NL', 'Y', 'DisableAuthentication'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'DisableAuthentication' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Enabled3rdPartyAuthentication',(select AD_Element_ID from AD_Element where ColumnName = 'Enabled3rdPartyAuthentication'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_System'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'F292',
1,
'',
'Enabled3rdPartyAuthentication',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'Y',
'N',
'N',
'N',
'Y',
'',
'',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Enabled3rdPartyAuthentication'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Enabled3rdPartyAuthentication'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_System'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'F292', fieldlength = 1, help = '', name = 'Enabled3rdPartyAuthentication', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Enabled3rdPartyAuthentication'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')), 'fr_FR', 'Y', 'Enabled3rdPartyAuthentication'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Enabled3rdPartyAuthentication' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')), 'nl_NL', 'Y', 'Enabled3rdPartyAuthentication'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Enabled3rdPartyAuthentication' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'HTTPMessage',(select AD_Element_ID from AD_Element where ColumnName = 'HTTPMessage'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'),
(select AD_Table_ID from AD_Table where TableName = 'AD_System'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'F292',
11,
'',
'HTTPMessage',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'',
'',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'HTTPMessage'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'HTTPMessage'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'HTTPMessages'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_System'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'F292', fieldlength = 11, help = '', name = 'HTTPMessage', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'HTTPMessage'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')), 'fr_FR', 'Y', 'HTTPMessage'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'HTTPMessage' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')), 'nl_NL', 'Y', 'HTTPMessage'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'HTTPMessage' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Token',(select AD_Element_ID from AD_Element where ColumnName = 'Token'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'AD_System'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'F292',
20,
'',
'Token',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'',
'',
'N',
'',
0,
'Y',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Token'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Token'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'AD_System'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'F292', fieldlength = 20, help = '', name = 'Token', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'Y', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Token'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')), 'fr_FR', 'Y', 'Token'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Token' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')), 'nl_NL', 'Y', 'Token'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Token' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'System_440' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'System_246')),
'DisableAuthentication',
'',
1,
'',
'F292',
'',
'',
230,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
230
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'System_440' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'System_246')), name = 'DisableAuthentication', description = '', displaylength = 1, displaylogic = '', entitytype = 'F292', help = '', obscuretype = '', seqno = 230, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 230 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))), 'fr_FR', 'Y', '','','DisableAuthentication'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'DisableAuthentication' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))), 'nl_NL', 'Y', '','','DisableAuthentication'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'DisableAuthentication' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DisableAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'System_440' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'System_246')),
'Enabled3rdPartyAuthentication',
'',
1,
'',
'F292',
'',
'',
220,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
220
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'System_440' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'System_246')), name = 'Enabled3rdPartyAuthentication', description = '', displaylength = 1, displaylogic = '', entitytype = 'F292', help = '', obscuretype = '', seqno = 220, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 220 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))), 'fr_FR', 'Y', '','','Enabled3rdPartyAuthentication'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Enabled3rdPartyAuthentication' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))), 'nl_NL', 'Y', '','','Enabled3rdPartyAuthentication'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Enabled3rdPartyAuthentication' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Enabled3rdPartyAuthentication' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'System_440' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'System_246')),
'HTTPMessage',
'',
0,
'',
'F292',
'',
'',
220,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
220
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'System_440' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'System_246')), name = 'HTTPMessage', description = '', displaylength = 0, displaylogic = '', entitytype = 'F292', help = '', obscuretype = '', seqno = 220, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 220 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))), 'fr_FR', 'Y', '','','HTTPMessage'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'HTTPMessage' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))), 'nl_NL', 'Y', '','','HTTPMessage'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'HTTPMessage' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'HTTPMessage' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'System_440' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'System_246')),
'Token',
'',
20,
'',
'F292',
'',
'',
250,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
250
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'System_440' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'System_246')), name = 'Token', description = '', displaylength = 20, displaylogic = '', entitytype = 'F292', help = '', obscuretype = '', seqno = 250, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 250 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))), 'fr_FR', 'Y', '','','Token'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Token' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))), 'nl_NL', 'Y', '','','Token'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Token' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Token' and ad_table_id in (select ad_table_id from ad_table where tablename = 'AD_System')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'System_440' and ad_window_id in (select ad_window_id from ad_window where value = 'System_246'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '102292 - Connexion via notre single sign on (SSO) ', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'F292' ;

