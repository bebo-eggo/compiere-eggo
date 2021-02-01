insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG16','EG16 - Achat liée au dossier',
'User maintained modifications',
'The default entity type for your Customizations and custom Extensions.  Will be preserved during version migration.',
'Y',
'',
'',
'',
'Y',
'3.61',
0,
'N',
'',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'EG16' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG16 - Achat liée au dossier', description = 'User maintained modifications', help = 'The default entity type for your Customizations and custom Extensions.  Will be preserved during version migration.', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '3.61', record_id = 0, processing = 'N', createcomponent = '', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG16' ;

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'ZRV_ORDERSOPOREF','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'EG16',
'',
'',
1150,
'SOPOREF',
'L',
'Y',
'N',
'N',
'N',
'Y',
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Table_ID from AD_Table where TableName = '')
 from dual  
where not exists (select 1 from AD_Table where TableName = 'ZRV_ORDERSOPOREF' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'EG16', help = '', importtable = '', loadseq = 1150, name = 'SOPOREF', replicationtype = 'L', isactive = 'Y', isdeleteable = 'N', ishighvolume = 'N', issecurityenabled = 'N', isview = 'Y', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'ZRV_ORDERSOPOREF' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='ZRV_ORDERSOPOREF'), 'nl_BE', 'Y', 'SOPOREF'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_ORDERSOPOREF') and ad_language = 'nl_BE');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'SOPOREF' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_ORDERSOPOREF') and ad_language = 'nl_BE';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='ZRV_ORDERSOPOREF'), 'fr_FR', 'Y', 'SOPOREF'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_ORDERSOPOREF') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'SOPOREF' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_ORDERSOPOREF') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'DELIVEREDSTATUS','',
'EG16',
'',
'DELIVEREDSTATUS',
'',
'',
'',
'',
'DELIVEREDSTATUS',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'DELIVEREDSTATUS' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG16', help = '', name = 'DELIVEREDSTATUS', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'DELIVEREDSTATUS', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'DELIVEREDSTATUS' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='DELIVEREDSTATUS'), 'nl_BE', 'Y', '','','DELIVEREDSTATUS','','','','','DELIVEREDSTATUS'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='DELIVEREDSTATUS') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'DELIVEREDSTATUS',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'DELIVEREDSTATUS' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='DELIVEREDSTATUS') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='DELIVEREDSTATUS'), 'fr_FR', 'Y', '','','DELIVEREDSTATUS','','','','','DELIVEREDSTATUS'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='DELIVEREDSTATUS') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'DELIVEREDSTATUS',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'DELIVEREDSTATUS' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='DELIVEREDSTATUS') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'EG16',
10,
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'Tenant',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = 'EG16', fieldlength = 10, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'nl_BE', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'fr_FR', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'EG16',
10,
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'Organization',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = 'EG16', fieldlength = 10, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'nl_BE', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'fr_FR', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Ref_Order_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Ref_Order_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'C_Order'),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Reference to corresponding Sales/Purchase Order',
'EG16',
10,
'This provides a reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa. Used by Counter Document functionality',
'Referenced Order',
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
where not exists (select 1 from AD_Column where ColumnName = 'Ref_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Ref_Order_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_Order'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Reference to corresponding Sales/Purchase Order', entitytype = 'EG16', fieldlength = 10, help = 'This provides a reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa. Used by Counter Document functionality', name = 'Referenced Order', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Ref_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'nl_BE', 'Y', 'Referenced Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Referenced Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'fr_FR', 'Y', 'Referenced Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Referenced Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Identifies a Business Partner',
'EG16',
10,
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
'Business Partner',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Identifies a Business Partner', entitytype = 'EG16', fieldlength = 10, help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', name = 'Business Partner', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'nl_BE', 'Y', 'Business Partner'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'fr_FR', 'Y', 'Business Partner'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'DELIVEREDSTATUS',(select AD_Element_ID from AD_Element where ColumnName = 'DELIVEREDSTATUS'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EG16',
13,
'',
'DELIVEREDSTATUS',
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
'N',
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
where not exists (select 1 from AD_Column where ColumnName = 'DELIVEREDSTATUS'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DELIVEREDSTATUS'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EG16', fieldlength = 13, help = '', name = 'DELIVEREDSTATUS', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'DELIVEREDSTATUS'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'nl_BE', 'Y', 'DELIVEREDSTATUS'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'DELIVEREDSTATUS' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'fr_FR', 'Y', 'DELIVEREDSTATUS'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'DELIVEREDSTATUS' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Created',(select AD_Element_ID from AD_Element where ColumnName = 'Created'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was created',
'EG16',
7,
'The Created On field indicates the date that this record was created.',
'Created On',
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
where not exists (select 1 from AD_Column where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Created'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was created', entitytype = 'EG16', fieldlength = 7, help = 'The Created On field indicates the date that this record was created.', name = 'Created On', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Created'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'nl_BE', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'fr_FR', 'Y', 'Created On'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created On' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Created' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CreatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who created this record',
'EG16',
10,
'The Created By field indicates the user who created this record.',
'Created By',
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
where not exists (select 1 from AD_Column where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CreatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who created this record', entitytype = 'EG16', fieldlength = 10, help = 'The Created By field indicates the user who created this record.', name = 'Created By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CreatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'nl_BE', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'fr_FR', 'Y', 'Created By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Created By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CreatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Updated',(select AD_Element_ID from AD_Element where ColumnName = 'Updated'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Date+Time'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Date this record was updated',
'EG16',
7,
'The Updated field indicates the date that this record was updated.',
'Updated',
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
where not exists (select 1 from AD_Column where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Updated'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date+Time'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Date this record was updated', entitytype = 'EG16', fieldlength = 7, help = 'The Updated field indicates the date that this record was updated.', name = 'Updated', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Updated'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'nl_BE', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'fr_FR', 'Y', 'Updated'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Updated' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'UpdatedBy',(select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'AD_User'),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'User who updated this records',
'EG16',
10,
'The Updated By field indicates the user who updated this record.',
'Updated By',
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
where not exists (select 1 from AD_Column where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'UpdatedBy'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'AD_User'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'User who updated this records', entitytype = 'EG16', fieldlength = 10, help = 'The Updated By field indicates the user who updated this record.', name = 'Updated By', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'X', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'UpdatedBy'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'nl_BE', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'fr_FR', 'Y', 'Updated By'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Updated By' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='UpdatedBy' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Order_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Order',
'EG16',
10,
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Order_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Order', entitytype = 'EG16', fieldlength = 10, help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', name = 'Order', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Order_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'nl_BE', 'Y', 'Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'fr_FR', 'Y', 'Order'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsActive',(select AD_Element_ID from AD_Element where ColumnName = 'IsActive'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'The record is active in the system',
'EG16',
1,
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'Active',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsActive'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'The record is active in the system', entitytype = 'EG16', fieldlength = 1, help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', name = 'Active', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsActive'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'nl_BE', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')), 'fr_FR', 'Y', 'Active'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Active' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_language = 'fr_FR';

insert into AD_ViewComponent (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewComponent_ID,SeqNo,Name, description, entitytype, help, isactive, AD_Table_ID, referenced_table_id, fromclause, whereclause, otherclause) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewComponent'),'10','VC_ZRV_ORDERSOPOREF',
'',
'EG16',
'',
'Y',
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Table_ID from AD_Table where TableName = 'C_Order'),
'FROM C_Order so Inner join C_Order po on po.ref_order_id = so.c_order_id',
'',
''
 from dual  
where not exists (select 1 from AD_ViewComponent where SeqNo = '10'  and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'));

update AD_ViewComponent set Updated = sysdate, UpdatedBy = 0, Name = 'VC_ZRV_ORDERSOPOREF', description = '', entitytype = 'EG16', help = '', isactive = 'Y', AD_Table_ID = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Order'), fromclause = 'FROM C_Order so Inner join C_Order po on po.ref_order_id = so.c_order_id', whereclause = '', otherclause = '' 
where SeqNo = '10'  and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF');

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'ISACTIVE','',
'EG16',
'',
'so.isactive',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'ISACTIVE'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG16', help = '', columnsql = 'so.isactive', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')) 
where ColumnName = 'ISACTIVE'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'REF_ORDER_ID','',
'EG16',
'',
'po.C_Order_ID',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'REF_ORDER_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG16', help = '', columnsql = 'po.C_Order_ID', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')) 
where ColumnName = 'REF_ORDER_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'AD_CLIENT_ID','',
'EG16',
'',
'so.ad_client_id',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'AD_CLIENT_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG16', help = '', columnsql = 'so.ad_client_id', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')) 
where ColumnName = 'AD_CLIENT_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'CREATEDBY','',
'EG16',
'',
'so.createdby',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'CREATEDBY'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG16', help = '', columnsql = 'so.createdby', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')) 
where ColumnName = 'CREATEDBY'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'C_BPARTNER_ID','',
'EG16',
'',
'po.C_BPartner_ID',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'C_BPARTNER_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG16', help = '', columnsql = 'po.C_BPartner_ID', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')) 
where ColumnName = 'C_BPARTNER_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'AD_ORG_ID','',
'EG16',
'',
'so.ad_org_id',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'AD_ORG_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG16', help = '', columnsql = 'so.ad_org_id', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')) 
where ColumnName = 'AD_ORG_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'UPDATED','',
'EG16',
'',
'so.updated',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'UPDATED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG16', help = '', columnsql = 'so.updated', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')) 
where ColumnName = 'UPDATED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'CREATED','',
'EG16',
'',
'so.created',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'CREATED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG16', help = '', columnsql = 'so.created', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')) 
where ColumnName = 'CREATED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'UPDATEDBY','',
'EG16',
'',
'so.updatedby',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'UPDATEDBY'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG16', help = '', columnsql = 'so.updatedby', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')) 
where ColumnName = 'UPDATEDBY'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'C_ORDER_ID','',
'EG16',
'',
'so.C_Order_ID',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'C_ORDER_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG16', help = '', columnsql = 'so.C_Order_ID', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')) 
where ColumnName = 'C_ORDER_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'DELIVEREDSTATUS','',
'EG16',
'',
'( select decode( sum(qtyordered) - sum(qtydelivered), 0, ''LIVREE'', sum(qtydelivered) , ''NON LIVREE'', ''PARTIELLEMENT'') from c_orderline where c_order_id = po.c_order_id )',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'DELIVEREDSTATUS'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EG16', help = '', columnsql = '( select decode( sum(qtyordered) - sum(qtydelivered), 0, ''LIVREE'', sum(qtydelivered) , ''NON LIVREE'', ''PARTIELLEMENT'') from c_orderline where c_order_id = po.c_order_id )', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where SeqNo = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')) 
where ColumnName = 'DELIVEREDSTATUS'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'));

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'1001095','ORDERSOPOREF',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'),
(select AD_Window_ID from AD_Window where Value = 'Sales Order_143'),
'',
'',
'EG16',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'',
130,
1,
'',
'Y',
'N',
'N',
'Y',
'N',
'N',
'N',
'',
'N',
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'Y',
(select AD_Tab_ID from AD_Tab where Value = '')
 from dual  
where not exists (select 1 from AD_Tab where Value = '1001095'  and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'ORDERSOPOREF', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_ORDERSOPOREF'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Sales Order_143'), commitwarning = '', description = '', entitytype = 'EG16', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), orderbyclause = '', seqno = 130, tablevel = 1, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'Y', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'N', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = '1001095'  and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')), 'nl_BE', 'Y', '','','','ORDERSOPOREF'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'ORDERSOPOREF' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')), 'fr_FR', 'Y', '','','','O.A. Liés'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'O.A. Liés' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Business Partner',
'Identifies a Business Partner',
10,
'',
'EG16',
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Business Partner', description = 'Identifies a Business Partner', displaylength = 10, displaylogic = '', entitytype = 'EG16', help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', 'Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Business Partner'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a Business Partner',Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Name = 'Business Partner' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Tiers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies a Business Partner',Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Name = 'Tiers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'DELIVEREDSTATUS',
'',
13,
'',
'EG16',
'',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'DELIVEREDSTATUS', description = '', displaylength = 13, displaylogic = '', entitytype = 'EG16', help = '', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', '','','DELIVEREDSTATUS'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'DELIVEREDSTATUS' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', '','','Status Livraison'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Status Livraison' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DELIVEREDSTATUS' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Order',
'Order',
10,
'',
'EG16',
'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Order', description = 'Order', displaylength = 10, displaylogic = '', entitytype = 'EG16', help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', 'Order','The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.','Order'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Order',Help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',Name = 'Order' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'Order','The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.','Order'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Order',Help = 'The Order is a control document.  The Order is complete when the quantity ordered is the same as the quantity shipped/received and invoiced.  When you close an order, unshipped/not yet received (backordered) quantities are cancelled.',Name = 'Order' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Organization',
'Organizational entity within Tenant',
10,
'',
'EG16',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 10, displaylogic = '', entitytype = 'EG16', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Referenced Order',
'Reference to corresponding Sales/Purchase Order',
10,
'',
'EG16',
'This provides a reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa. Used by Counter Document functionality',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Referenced Order', description = 'Reference to corresponding Sales/Purchase Order', displaylength = 10, displaylogic = '', entitytype = 'EG16', help = 'This provides a reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa. Used by Counter Document functionality', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', 'Reference to corresponding Sales/Purchase Order','This provides a reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa. Used by Counter Document functionality','Referenced Order'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Reference to corresponding Sales/Purchase Order',Help = 'This provides a reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa. Used by Counter Document functionality',Name = 'Referenced Order' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'Reference to corresponding Sales/Purchase Order','This provides a reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa. Used by Counter Document functionality','O.A.'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Reference to corresponding Sales/Purchase Order',Help = 'This provides a reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa. Used by Counter Document functionality',Name = 'O.A.' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Ref_Order_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
10,
'',
'EG16',
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = '1001095' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order_143')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 10, displaylogic = '', entitytype = 'EG16', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 0, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'N', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'nl_BE', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))), 'fr_FR', 'Y', 'Identifies the Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Identifies the Client/Tenant for this installation.',Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_ORDERSOPOREF')) and ad_tab_id in (select ad_tab_id from ad_tab where value = '1001095' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order_143'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG16 - Achat liée au dossier', description = 'User maintained modifications', help = 'The default entity type for your Customizations and custom Extensions.  Will be preserved during version migration.', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '3.61', record_id = 0, processing = 'N', createcomponent = '', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG16' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = 'EG16', help = '', importtable = '', loadseq = 1150, name = 'SOPOREF', replicationtype = 'L', isactive = 'Y', isdeleteable = 'N', ishighvolume = 'N', issecurityenabled = 'N', isview = 'Y', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'ZRV_ORDERSOPOREF' ;

