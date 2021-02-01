insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG14','EG14 - Order Vendor Step',
'',
'',
'Y',
'',
'',
'',
'N',
'3.61',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'EG14' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG14 - Order Vendor Step', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.61', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG14' ;

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'02',(select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'),
'',
'EG14',
'Step V2',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'), description = '', entitytype = 'EG14', name = 'Step V2', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')), 'nl_BE', 'Y', '','Step V2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Step V2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')), 'fr_FR', 'Y', '','Step V2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Step V2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'01',(select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'),
'',
'EG14',
'Step V1',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'), description = '', entitytype = 'EG14', name = 'Step V1', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')), 'nl_BE', 'Y', '','Step V1'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Step V1' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')), 'fr_FR', 'Y', '','Step V1'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Step V1' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'03',(select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'),
'',
'EG14',
'Step V3',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'), description = '', entitytype = 'EG14', name = 'Step V3', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')), 'nl_BE', 'Y', '','Step V3'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Step V3' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')), 'fr_FR', 'Y', '','Step V3'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Step V3' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'Z_OrderVendorStepStatus','',
'EG14',
'',
'L',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'Z_OrderVendorStepStatus' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG14', help = '', validationtype = 'L', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'Z_OrderVendorStepStatus' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='Z_OrderVendorStepStatus'), 'nl_BE', 'Y', '','','Z_OrderVendorStepStatus'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Z_OrderVendorStepStatus') and ad_language = 'nl_BE');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_OrderVendorStepStatus' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Z_OrderVendorStepStatus') and ad_language = 'nl_BE';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='Z_OrderVendorStepStatus'), 'fr_FR', 'Y', '','','Z_OrderVendorStepStatus'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Z_OrderVendorStepStatus') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_OrderVendorStepStatus' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='Z_OrderVendorStepStatus') and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'02',(select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'),
'',
'EG14',
'Step V2',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'), description = '', entitytype = 'EG14', name = 'Step V2', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '02'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')), 'nl_BE', 'Y', '','Step V2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Step V2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')), 'fr_FR', 'Y', '','Step V2'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Step V2' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='02' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'01',(select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'),
'',
'EG14',
'Step V1',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'), description = '', entitytype = 'EG14', name = 'Step V1', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '01'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')), 'nl_BE', 'Y', '','Step V1'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Step V1' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')), 'fr_FR', 'Y', '','Step V1'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Step V1' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='01' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'fr_FR';

insert into AD_Ref_List (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,Value,ad_reference_id, description, entitytype, name, validfrom, validto, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Ref_List'),'03',(select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'),
'',
'EG14',
'Step V3',
NULL,
NULL,
'Y'
 from dual  
where not exists (select 1 from AD_Ref_List where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus'));

update AD_Ref_List set Updated = sysdate, UpdatedBy = 0, ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'), description = '', entitytype = 'EG14', name = 'Step V3', validfrom = NULL, validto = NULL, isactive = 'Y' 
where Value = '03'  and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus');

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')), 'nl_BE', 'Y', '','Step V3'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'nl_BE');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Step V3' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'nl_BE';

insert into AD_Ref_List_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Ref_List_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')), 'fr_FR', 'Y', '','Step V3'
 from dual  
where not exists (select 1 from AD_Ref_List_Trl where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'fr_FR');

update AD_Ref_List_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Step V3' where AD_Ref_List_ID in (select AD_Ref_List_ID from AD_Ref_List where Value='03' and ad_reference_id in (select ad_reference_id from ad_reference where name = 'Z_OrderVendorStepStatus')) and ad_language = 'fr_FR';

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'Z_OrderVendorStep','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'EG14',
'',
'N',
0,
'Order Vendor Step',
'L',
'Y',
'Y',
'N',
'N',
'N',
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'Z_OrderVendorStep' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'EG14', help = '', importtable = 'N', loadseq = 0, name = 'Order Vendor Step', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'Z_OrderVendorStep' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='Z_OrderVendorStep'), 'nl_BE', 'Y', 'Order Vendor Step'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_OrderVendorStep') and ad_language = 'nl_BE');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order Vendor Step' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_OrderVendorStep') and ad_language = 'nl_BE';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='Z_OrderVendorStep'), 'fr_FR', 'Y', 'Flux vendeur'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_OrderVendorStep') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Flux vendeur' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='Z_OrderVendorStep') and ad_language = 'fr_FR';

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'MajOrderVendorStatus','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.MajOrderVendorStatus',
'',
'EG14',
'',
'',
'',
'Mise à jour Status Vendeur',
'',
'Y',
'N',
'N',
'N',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
(select AD_BView_ID from AD_BView where Name = ''),
(select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Process where Value = 'MajOrderVendorStatus' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.MajOrderVendorStatus', description = '', entitytype = 'EG14', help = '', jasperreport = '', procedurename = '', name = 'Mise à jour Status Vendeur', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'MajOrderVendorStatus' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='MajOrderVendorStatus'), 'nl_BE', 'Y', '','','Mise à jour Status Vendeur'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='MajOrderVendorStatus') and ad_language = 'nl_BE');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Mise à jour Status Vendeur' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='MajOrderVendorStatus') and ad_language = 'nl_BE';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='MajOrderVendorStatus'), 'fr_FR', 'Y', '','','Mise à jour Status Vendeur'
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='MajOrderVendorStatus') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Mise à jour Status Vendeur' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='MajOrderVendorStatus') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_OrderVendorStepStatus','',
'EG14',
'',
'Z_OrderVendorStepStatus',
'',
'',
'',
'',
'Status Vendeur Avancement',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_OrderVendorStepStatus' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG14', help = '', name = 'Z_OrderVendorStepStatus', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Status Vendeur Avancement', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_OrderVendorStepStatus' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_OrderVendorStepStatus'), 'nl_BE', 'Y', '','','Z_OrderVendorStepStatus','','','','','Status Vendeur Avancement'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_OrderVendorStepStatus') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_OrderVendorStepStatus',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Status Vendeur Avancement' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_OrderVendorStepStatus') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_OrderVendorStepStatus'), 'fr_FR', 'Y', '','','Status Vendeur','','','','','Status Vendeur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_OrderVendorStepStatus') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Status Vendeur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Status Vendeur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_OrderVendorStepStatus') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_OrderVendorStep_ID','',
'EG14',
'',
'Order Vendor Step',
'',
'',
'',
'',
'Order Vendor Step',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_OrderVendorStep_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG14', help = '', name = 'Order Vendor Step', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Order Vendor Step', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_OrderVendorStep_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_OrderVendorStep_ID'), 'nl_BE', 'Y', '','','Order Vendor Step','','','','','Order Vendor Step'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_OrderVendorStep_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Order Vendor Step',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Order Vendor Step' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_OrderVendorStep_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_OrderVendorStep_ID'), 'fr_FR', 'Y', '','','Order Vendor Step','','','','','Order Vendor Step'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_OrderVendorStep_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Order Vendor Step',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Order Vendor Step' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_OrderVendorStep_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'Z_MajOrderVentorStatus','',
'EG14',
'',
'MAJ Status Vendeur',
'',
'',
'',
'',
'MAJ Status Vendeur',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'Z_MajOrderVentorStatus' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG14', help = '', name = 'MAJ Status Vendeur', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'MAJ Status Vendeur', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'Z_MajOrderVentorStatus' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_MajOrderVentorStatus'), 'nl_BE', 'Y', '','','MAJ Status Vendeur','','','','','MAJ Status Vendeur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_MajOrderVentorStatus') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'MAJ Status Vendeur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'MAJ Status Vendeur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_MajOrderVentorStatus') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='Z_MajOrderVentorStatus'), 'fr_FR', 'Y', '','','MAJ Status Vendeur','','','','','MAJ Status Vendeur'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_MajOrderVentorStatus') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'MAJ Status Vendeur',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'MAJ Status Vendeur' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='Z_MajOrderVentorStatus') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'EG14',
22,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'Tenant',
'',
0,
'',
'',
1,
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
'N',
'',
'R',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = 'EG14', fieldlength = 22, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'nl_BE', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'fr_FR', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'EG14',
22,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'Organization',
'',
0,
'',
'',
1,
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
'N',
'',
'R',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = 'EG14', fieldlength = 22, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'nl_BE', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'fr_FR', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'EG14',
7,
'The Created On field indicates the date that this record was created.',
'Created On',
'',
0,
'',
'',
1,
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = 'EG14', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'nl_BE', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'fr_FR', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'EG14',
22,
'The Created By field indicates the user who created this record.',
'Created By',
'',
0,
'',
'',
1,
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
'N',
'',
'X',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = 'EG14', fieldlength = 22, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'nl_BE', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'fr_FR', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'Y',
'The record is active in the system',
'EG14',
1,
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'Active',
'',
0,
'',
'',
1,
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'Y', description = 'The record is active in the system', entitytype = 'EG14', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'nl_BE', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'fr_FR', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'EG14',
7,
'The Updated field indicates the date that this record was updated.',
'Updated',
'',
0,
'',
'',
1,
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = 'EG14', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'nl_BE', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'fr_FR', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'EG14',
22,
'The Updated By field indicates the user who updated this record.',
'Updated By',
'',
0,
'',
'',
1,
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
'N',
'',
'X',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = 'EG14', fieldlength = 22, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'nl_BE', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'fr_FR', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DateAction',(select AD_Element_ID from AD_Element where ColumnName = 'DateAction'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EG14',
7,
'',
'Action date',
'',
1,
'',
'',
0,
'',
'Y',
'N',
'N',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'DateAction'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DateAction'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EG14', fieldlength = 7, help = '', name = 'Action date', readonlylogic = '', seqno = 1, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DateAction'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'nl_BE', 'Y', 'Action date'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Action date' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'fr_FR', 'Y', 'Action date'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Action date' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_OrderVendorStepStatus',(select AD_Element_ID from AD_Element where ColumnName = 'Z_OrderVendorStepStatus'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EG14',
2,
'',
'Z_OrderVendorStepStatus',
'',
2,
'',
'',
0,
'',
'Y',
'N',
'N',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_OrderVendorStepStatus'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_OrderVendorStepStatus'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EG14', fieldlength = 2, help = '', name = 'Z_OrderVendorStepStatus', readonlylogic = '', seqno = 2, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_OrderVendorStepStatus'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'nl_BE', 'Y', 'Z_OrderVendorStepStatus'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_OrderVendorStepStatus' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'fr_FR', 'Y', 'Z_OrderVendorStepStatus'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_OrderVendorStepStatus' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_User_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_User_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User within the system - Internal or Business Partner Contact',
'EG14',
22,
'The User identifies a unique user in the system. This could be an internal user or a business partner contact',
'User/Contact',
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
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_User_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_User_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User within the system - Internal or Business Partner Contact', entitytype = 'EG14', fieldlength = 22, help = 'The User identifies a unique user in the system. This could be an internal user or a business partner contact', name = 'User/Contact', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_User_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'nl_BE', 'Y', 'User/Contact'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'User/Contact' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'fr_FR', 'Y', 'User/Contact'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'User/Contact' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Description',(select AD_Element_ID from AD_Element where ColumnName = 'Description'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Text'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Optional short description of the record',
'EG14',
255,
'A description is limited to 255 characters.',
'Description',
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
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'Description'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Description'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Text'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Optional short description of the record', entitytype = 'EG14', fieldlength = 255, help = 'A description is limited to 255 characters.', name = 'Description', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Description'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'nl_BE', 'Y', 'Description'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Description' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'fr_FR', 'Y', 'Description'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Description' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Order_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Order',
'EG14',
22,
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
'Order',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'Y',
'N',
'Y',
'Y',
'N',
'N',
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Order', entitytype = 'EG14', fieldlength = 22, help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', name = 'Order', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'Y', iskey = 'N', ismandatory = 'Y', isparent = 'Y', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'nl_BE', 'Y', 'Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'fr_FR', 'Y', 'Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_MajOrderVentorStatus',(select AD_Element_ID from AD_Element where ColumnName = 'Z_MajOrderVentorStatus'),
(select AD_Process_ID from AD_Process where Value = 'MajOrderVendorStatus'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EG14',
1,
'',
'MAJ Status Vendeur',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_MajOrderVentorStatus'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_MajOrderVentorStatus'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'MajOrderVendorStatus'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EG14', fieldlength = 1, help = '', name = 'MAJ Status Vendeur', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_MajOrderVentorStatus'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'nl_BE', 'Y', 'MAJ Status Vendeur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'MAJ Status Vendeur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'fr_FR', 'Y', 'MAJ Status Vendeur'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'MAJ Status Vendeur' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_OrderVendorStep_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_OrderVendorStep_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'ID'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EG14',
16,
'',
'Order Vendor Step',
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
'Y',
'Y',
'N',
'N',
'N',
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_OrderVendorStep_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_OrderVendorStep_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'ID'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EG14', fieldlength = 16, help = '', name = 'Order Vendor Step', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'Y', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_OrderVendorStep_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'nl_BE', 'Y', 'Order Vendor Step'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order Vendor Step' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')), 'fr_FR', 'Y', 'Order Vendor Step'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order Vendor Step' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_OrderVendorStepStatus',(select AD_Element_ID from AD_Element where ColumnName = 'Z_OrderVendorStepStatus'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'),
(select AD_Table_ID from AD_Table where TableName = 'C_Order'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'01',
'',
'EG14',
2,
'',
'Z_OrderVendorStepStatus',
'1=1',
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
where not exists (select 1 from AD_Column where ColumnName = 'Z_OrderVendorStepStatus'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_OrderVendorStepStatus'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Order'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '01', description = '', entitytype = 'EG14', fieldlength = 2, help = '', name = 'Z_OrderVendorStepStatus', readonlylogic = '1=1', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_OrderVendorStepStatus'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'nl_BE', 'Y', 'Z_OrderVendorStepStatus'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_OrderVendorStepStatus' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')), 'fr_FR', 'Y', 'Z_OrderVendorStepStatus'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Z_OrderVendorStepStatus' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Z_OrderVendorStep','Z_OrderVendorStep',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'),
(select AD_Window_ID from AD_Window where Value = 'Sales Order_143'),
'',
'',
'EG14',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'',
120,
1,
'',
'Y',
'N',
'N',
'Y',
'N',
'N',
'N',
'@AD_Client_ID@=1000000',
'Y',
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'Y',
(select AD_Tab_ID from AD_Tab where Value = '')
 from dual  
where not exists (select 1 from AD_Tab where Value = 'Z_OrderVendorStep'  and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Z_OrderVendorStep', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderVendorStep'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Sales Order_143'), commitwarning = '', description = '', entitytype = 'EG14', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), orderbyclause = '', seqno = 120, tablevel = 1, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'Y', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '@AD_Client_ID@=1000000', ISADVANCEDTAB = 'Y', ISINSERTRECORD = 'N', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Z_OrderVendorStep'  and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')), 'nl_BE', 'Y', '','','','Z_OrderVendorStep'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Z_OrderVendorStep' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')), 'fr_FR', 'Y', '','','','Avancement Vendeur'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Avancement Vendeur' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Order_186' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Z_OrderVendorStepStatus',
'',
1,
'@AD_Client_ID@=1000000',
'EG14',
'',
'',
580,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Order_186' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Z_OrderVendorStepStatus', description = '', displaylength = 1, displaylogic = '@AD_Client_ID@=1000000', entitytype = 'EG14', help = '', obscuretype = '', seqno = 580, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', '','','Z_OrderVendorStepStatus'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_OrderVendorStepStatus' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', '','','Status Vendeur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Status Vendeur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Order_186' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'MAJ Status Vendeur',
'',
1,
'@AD_Client_ID@=1000000',
'EG14',
'',
'',
590,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Order_186' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'MAJ Status Vendeur', description = '', displaylength = 1, displaylogic = '@AD_Client_ID@=1000000', entitytype = 'EG14', help = '', obscuretype = '', seqno = 590, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', '','','MAJ Status Vendeur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'MAJ Status Vendeur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', '','','MAJ Status Vendeur'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'MAJ Status Vendeur' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_MajOrderVentorStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Order')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Order_186' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Action date',
'',
7,
'',
'EG14',
'',
'',
40,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Action date', description = '', displaylength = 7, displaylogic = '', entitytype = 'EG14', help = '', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', '','','Action date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Action date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', '','','Action date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Action date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAction' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Active',
'The record is active in the system',
1,
'',
'EG14',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'',
0,
0,
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = 'EG14', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'The record is active in the system',Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Description',
'Optional short description of the record',
255,
'',
'EG14',
'A description is limited to 255 characters.',
'',
70,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Description', description = 'Optional short description of the record', displaylength = 255, displaylogic = '', entitytype = 'EG14', help = 'A description is limited to 255 characters.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', 'Optional short description of the record','A description is limited to 255 characters.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional short description of the record',Help = 'A description is limited to 255 characters.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'Optional short description of the record','A description is limited to 255 characters.','Description'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional short description of the record',Help = 'A description is limited to 255 characters.',Name = 'Description' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Order',
'Order',
22,
'',
'EG14',
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
'',
30,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Order', description = 'Order', displaylength = 22, displaylogic = '', entitytype = 'EG14', help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', 'Order','The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.','O.V.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Order',Help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',Name = 'O.V.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'Order','The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.','O.V.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Order',Help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',Name = 'O.V.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Order Vendor Step',
'',
16,
'',
'EG14',
'',
'',
0,
0,
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Order Vendor Step', description = '', displaylength = 16, displaylogic = '', entitytype = 'EG14', help = '', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', '','','Order Vendor Step'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Order Vendor Step' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', '','','Order Vendor Step'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Order Vendor Step' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStep_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'EG14',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'',
20,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = 'EG14', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organisation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organisation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
22,
'',
'EG14',
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'',
10,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 22, displaylogic = '', entitytype = 'EG14', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Société'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Société' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'User/Contact',
'User within the system - Internal or Business Partner Contact',
22,
'',
'EG14',
'The User identifies a unique user in the system. This could be an internal user or a business partner contact',
'',
60,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'User/Contact', description = 'User within the system - Internal or Business Partner Contact', displaylength = 22, displaylogic = '', entitytype = 'EG14', help = 'The User identifies a unique user in the system. This could be an internal user or a business partner contact', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', 'User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact','User/Contact'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'User within the system - Internal or Business Partner Contact',Help = 'The User identifies a unique user in the system. This could be an internal user or a business partner contact',Name = 'User/Contact' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact','Contact'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'User within the system - Internal or Business Partner Contact',Help = 'The User identifies a unique user in the system. This could be an internal user or a business partner contact',Name = 'Contact' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_User_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Z_OrderVendorStepStatus',
'',
2,
'',
'EG14',
'',
'',
50,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Z_OrderVendorStep' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Z_OrderVendorStepStatus', description = '', displaylength = 2, displaylogic = '', entitytype = 'EG14', help = '', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', '','','Z_OrderVendorStepStatus'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Z_OrderVendorStepStatus' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', '','','Status Avancement'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Status Avancement' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Z_OrderVendorStepStatus' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderVendorStep')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Z_OrderVendorStep' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Z_OrderVendorStepStatus',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'MajOrderVendorStatus'),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Status Avancement',
'',
'',
'',
'EG14',
2,
'',
10,
'',
'',
'',
'Y',
'Y',
'Y',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Z_OrderVendorStepStatus'  and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'MajOrderVendorStatus'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_OrderVendorStepStatus'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Status Avancement', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG14', fieldlength = 2, help = '', seqno = 10, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'Y', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Z_OrderVendorStepStatus'  and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_OrderVendorStepStatus' and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus')), 'nl_BE', 'Y', '','','Status Avancement'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_OrderVendorStepStatus' and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus')) and ad_language = 'nl_BE');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Status Avancement' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_OrderVendorStepStatus' and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus')) and ad_language = 'nl_BE';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_OrderVendorStepStatus' and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus')), 'fr_FR', 'Y', '','','Status Avancement'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_OrderVendorStepStatus' and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Status Avancement' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Z_OrderVendorStepStatus' and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus')) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'Description',(select AD_Element_ID from AD_Element where ColumnName = ''),
(select AD_Process_ID from AD_Process where Value = 'MajOrderVendorStatus'),
(select AD_Reference_ID from AD_Reference where Name = 'Text'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'Description',
'',
'',
'',
'EG14',
255,
'',
20,
'',
'',
'',
'Y',
'Y',
'N',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'Description'  and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'MajOrderVendorStatus'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Text'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'Description', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG14', fieldlength = 255, help = '', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'Description'  and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Description' and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus')), 'nl_BE', 'Y', '','','Description'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Description' and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus')) and ad_language = 'nl_BE');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Description' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Description' and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus')) and ad_language = 'nl_BE';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='Description' and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus')), 'fr_FR', 'Y', '','','Description'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Description' and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Description' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='Description' and ad_process_id in (select ad_process_id from ad_process where value = 'MajOrderVendorStatus')) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG14 - Order Vendor Step', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.61', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG14' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'EG14', help = '', importtable = 'N', loadseq = 0, name = 'Order Vendor Step', replicationtype = 'L', isactive = 'Y', isdeleteable = 'Y', ishighvolume = 'N', issecurityenabled = 'N', isview = 'N', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'Z_OrderVendorStep' ;

