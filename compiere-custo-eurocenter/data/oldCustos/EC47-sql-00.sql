insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC47','EC47 - arbo actions',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EC47' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC47 - arbo actions', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC47' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'PosAction_CarriedLater_ID','',
'EC47',
'',
'PosAction_CarriedLater_ID',
'',
'',
'',
'',
'PosAction_CarriedLater_ID',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'PosAction_CarriedLater_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC47', help = '', name = 'PosAction_CarriedLater_ID', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'PosAction_CarriedLater_ID', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'PosAction_CarriedLater_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PosAction_CarriedLater_ID'), 'fr_FR', 'Y', '','','PosAction_CarriedLater_ID','','','','','PosAction_CarriedLater_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_CarriedLater_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_CarriedLater_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'PosAction_CarriedLater_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_CarriedLater_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PosAction_CarriedLater_ID'), 'nl_NL', 'Y', '','','PosAction_CarriedLater_ID','','','','','PosAction_CarriedLater_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_CarriedLater_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_CarriedLater_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'PosAction_CarriedLater_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_CarriedLater_ID') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'PosAction_OrderShip_ID','',
'EC47',
'',
'PosAction_OrderShip_ID',
'',
'',
'',
'',
'PosAction_OrderShip_ID',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'PosAction_OrderShip_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC47', help = '', name = 'PosAction_OrderShip_ID', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'PosAction_OrderShip_ID', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'PosAction_OrderShip_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PosAction_OrderShip_ID'), 'fr_FR', 'Y', '','','PosAction_OrderShip_ID','','','','','PosAction_OrderShip_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_OrderShip_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_OrderShip_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'PosAction_OrderShip_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_OrderShip_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PosAction_OrderShip_ID'), 'nl_NL', 'Y', '','','PosAction_OrderShip_ID','','','','','PosAction_OrderShip_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_OrderShip_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_OrderShip_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'PosAction_OrderShip_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_OrderShip_ID') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'PosAction_OrderCarried_ID','',
'EC47',
'',
'PosAction_OrderCarried_ID',
'',
'',
'',
'',
'PosAction_OrderCarried_ID',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'PosAction_OrderCarried_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC47', help = '', name = 'PosAction_OrderCarried_ID', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'PosAction_OrderCarried_ID', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'PosAction_OrderCarried_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PosAction_OrderCarried_ID'), 'fr_FR', 'Y', '','','PosAction_OrderCarried_ID','','','','','PosAction_OrderCarried_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_OrderCarried_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_OrderCarried_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'PosAction_OrderCarried_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_OrderCarried_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PosAction_OrderCarried_ID'), 'nl_NL', 'Y', '','','PosAction_OrderCarried_ID','','','','','PosAction_OrderCarried_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_OrderCarried_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_OrderCarried_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'PosAction_OrderCarried_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_OrderCarried_ID') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'PosAction_CarriedOtherWH_ID','',
'EC47',
'',
'PosAction_CarriedOtherWH_ID',
'',
'',
'',
'',
'PosAction_CarriedOtherWH_ID',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'PosAction_CarriedOtherWH_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC47', help = '', name = 'PosAction_CarriedOtherWH_ID', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'PosAction_CarriedOtherWH_ID', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'PosAction_CarriedOtherWH_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PosAction_CarriedOtherWH_ID'), 'fr_FR', 'Y', '','','PosAction_CarriedOtherWH_ID','','','','','PosAction_CarriedOtherWH_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_CarriedOtherWH_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_CarriedOtherWH_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'PosAction_CarriedOtherWH_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_CarriedOtherWH_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PosAction_CarriedOtherWH_ID'), 'nl_NL', 'Y', '','','PosAction_CarriedOtherWH_ID','','','','','PosAction_CarriedOtherWH_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_CarriedOtherWH_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_CarriedOtherWH_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'PosAction_CarriedOtherWH_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_CarriedOtherWH_ID') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'PosAction_ShipOtherWH_ID','',
'EC47',
'',
'PosAction_ShipOtherWH_ID',
'',
'',
'',
'',
'PosAction_ShipOtherWH_ID',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'PosAction_ShipOtherWH_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC47', help = '', name = 'PosAction_ShipOtherWH_ID', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'PosAction_ShipOtherWH_ID', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'PosAction_ShipOtherWH_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PosAction_ShipOtherWH_ID'), 'fr_FR', 'Y', '','','PosAction_ShipOtherWH_ID','','','','','PosAction_ShipOtherWH_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_ShipOtherWH_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_ShipOtherWH_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'PosAction_ShipOtherWH_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_ShipOtherWH_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='PosAction_ShipOtherWH_ID'), 'nl_NL', 'Y', '','','PosAction_ShipOtherWH_ID','','','','','PosAction_ShipOtherWH_ID'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_ShipOtherWH_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_ShipOtherWH_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'PosAction_ShipOtherWH_ID' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='PosAction_ShipOtherWH_ID') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PosAction_CarriedLater_ID',(select AD_Element_ID from AD_Element where ColumnName = 'PosAction_CarriedLater_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'Z_PosWfAction'),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC47',
22,
'',
'PosAction_CarriedLater_ID',
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
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'PosAction_CarriedLater_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PosAction_CarriedLater_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_PosWfAction'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC47', fieldlength = 22, help = '', name = 'PosAction_CarriedLater_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PosAction_CarriedLater_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'fr_FR', 'Y', 'PosAction_CarriedLater_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PosAction_CarriedLater_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'nl_NL', 'Y', 'PosAction_CarriedLater_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PosAction_CarriedLater_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PosAction_OrderShip_ID',(select AD_Element_ID from AD_Element where ColumnName = 'PosAction_OrderShip_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'Z_PosWfAction'),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC47',
22,
'',
'PosAction_OrderShip_ID',
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
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'PosAction_OrderShip_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PosAction_OrderShip_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_PosWfAction'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC47', fieldlength = 22, help = '', name = 'PosAction_OrderShip_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PosAction_OrderShip_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'fr_FR', 'Y', 'PosAction_OrderShip_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PosAction_OrderShip_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'nl_NL', 'Y', 'PosAction_OrderShip_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PosAction_OrderShip_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PosAction_ShipOtherWH_ID',(select AD_Element_ID from AD_Element where ColumnName = 'PosAction_ShipOtherWH_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'Z_PosWfAction'),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC47',
22,
'',
'PosAction_ShipOtherWH_ID',
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
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'PosAction_ShipOtherWH_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PosAction_ShipOtherWH_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_PosWfAction'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC47', fieldlength = 22, help = '', name = 'PosAction_ShipOtherWH_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PosAction_ShipOtherWH_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'fr_FR', 'Y', 'PosAction_ShipOtherWH_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PosAction_ShipOtherWH_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'nl_NL', 'Y', 'PosAction_ShipOtherWH_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PosAction_ShipOtherWH_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PosAction_OrderCarried_ID',(select AD_Element_ID from AD_Element where ColumnName = 'PosAction_OrderCarried_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'Z_PosWfAction'),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC47',
22,
'',
'PosAction_OrderCarried_ID',
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
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'PosAction_OrderCarried_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PosAction_OrderCarried_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_PosWfAction'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC47', fieldlength = 22, help = '', name = 'PosAction_OrderCarried_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PosAction_OrderCarried_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'fr_FR', 'Y', 'PosAction_OrderCarried_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PosAction_OrderCarried_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'nl_NL', 'Y', 'PosAction_OrderCarried_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PosAction_OrderCarried_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PosAction_CarriedOtherWH_ID',(select AD_Element_ID from AD_Element where ColumnName = 'PosAction_CarriedOtherWH_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'Z_PosWfAction'),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC47',
22,
'',
'PosAction_CarriedOtherWH_ID',
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
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'PosAction_CarriedOtherWH_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PosAction_CarriedOtherWH_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'Z_PosWfAction'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrgPOS'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC47', fieldlength = 22, help = '', name = 'PosAction_CarriedOtherWH_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PosAction_CarriedOtherWH_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'fr_FR', 'Y', 'PosAction_CarriedOtherWH_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PosAction_CarriedOtherWH_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')), 'nl_NL', 'Y', 'PosAction_CarriedOtherWH_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'PosAction_CarriedOtherWH_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'PosAction_CarriedLater_ID',
'',
22,
'',
'EC47',
'',
'',
520,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'PosAction_CarriedLater_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC47', help = '', obscuretype = '', seqno = 520, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','PosAction_CarriedLater_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_CarriedLater_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_NL', 'Y', '','','PosAction_CarriedLater_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_CarriedLater_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_CarriedLater_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'PosAction_CarriedOtherWH_ID',
'',
22,
'',
'EC47',
'',
'',
530,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'PosAction_CarriedOtherWH_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC47', help = '', obscuretype = '', seqno = 530, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','PosAction_CarriedOtherWH_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_CarriedOtherWH_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_NL', 'Y', '','','PosAction_CarriedOtherWH_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_CarriedOtherWH_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_CarriedOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'PosAction_OrderCarried_ID',
'',
22,
'',
'EC47',
'',
'',
540,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'PosAction_OrderCarried_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC47', help = '', obscuretype = '', seqno = 540, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','PosAction_OrderCarried_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_OrderCarried_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_NL', 'Y', '','','PosAction_OrderCarried_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_OrderCarried_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_OrderCarried_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'PosAction_OrderShip_ID',
'',
22,
'',
'EC47',
'',
'',
550,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'PosAction_OrderShip_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC47', help = '', obscuretype = '', seqno = 550, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','PosAction_OrderShip_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_OrderShip_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_NL', 'Y', '','','PosAction_OrderShip_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_OrderShip_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_OrderShip_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')),
'PosAction_ShipOtherWH_ID',
'',
22,
'',
'EC47',
'',
'',
560,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Config POS' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Organization_110')), name = 'PosAction_ShipOtherWH_ID', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC47', help = '', obscuretype = '', seqno = 560, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'fr_FR', 'Y', '','','PosAction_ShipOtherWH_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_ShipOtherWH_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))), 'nl_NL', 'Y', '','','PosAction_ShipOtherWH_ID'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'PosAction_ShipOtherWH_ID' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'PosAction_ShipOtherWH_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrgPOS')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Config POS' and ad_window_id in (select ad_window_id from ad_window where value = 'Organization_110'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC47 - arbo actions', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC47' ;
