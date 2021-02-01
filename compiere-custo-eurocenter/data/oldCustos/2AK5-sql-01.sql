insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'2AK5','76357-Tableau de préparation de demandes d''achat',
'',
'',
'Y',
'',
'',
'',
'Y',
'1',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '2AK5' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '76357-Tableau de préparation de demandes d''achat', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2AK5' ;

insert into AD_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,TableName,accesslevel, ad_val_rule_id, description, entitytype, help, importtable, loadseq, name, replicationtype, isactive, isdeleteable, ishighvolume, issecurityenabled, isview, ad_window_id, po_window_id, referenced_table_id) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Table'),'ZRV_REQ_TABLE','3',
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'2AK5',
'',
'N',
0,
'ZRV_REQ_TABLE',
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
where not exists (select 1 from AD_Table where TableName = 'ZRV_REQ_TABLE' );

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '2AK5', help = '', importtable = 'N', loadseq = 0, name = 'ZRV_REQ_TABLE', replicationtype = 'L', isactive = 'Y', isdeleteable = 'N', ishighvolume = 'N', issecurityenabled = 'N', isview = 'Y', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'ZRV_REQ_TABLE' ;

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='ZRV_REQ_TABLE'), 'fr_FR', 'Y', 'ZRV_REQ_TABLE'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_REQ_TABLE') and ad_language = 'fr_FR');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ZRV_REQ_TABLE' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_REQ_TABLE') and ad_language = 'fr_FR';

insert into AD_Table_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Table_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Table_ID from AD_Table where TableName='ZRV_REQ_TABLE'), 'nl_NL', 'Y', 'ZRV_REQ_TABLE'
 from dual  
where not exists (select 1 from AD_Table_Trl where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_REQ_TABLE') and ad_language = 'nl_NL');

update AD_Table_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'ZRV_REQ_TABLE' where AD_Table_ID in (select AD_Table_ID from AD_Table where TableName='ZRV_REQ_TABLE') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'QTYTOORDERED','',
'2AK5',
'',
'QTYTOORDERED',
'',
'',
'',
'',
'QTYTOORDERED',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'QTYTOORDERED' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', name = 'QTYTOORDERED', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'QTYTOORDERED', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'QTYTOORDERED' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,Help,PO_PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='QTYTOORDERED'), 'fr_FR', 'Y', '','QTYTOORDERED','QTYTOORDERED','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='QTYTOORDERED') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'QTYTOORDERED',PrintName = 'QTYTOORDERED',Help = '',PO_PrintName = '',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='QTYTOORDERED') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,Help,PO_PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='QTYTOORDERED'), 'nl_NL', 'Y', '','QTYTOORDERED','QTYTOORDERED','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='QTYTOORDERED') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'QTYTOORDERED',PrintName = 'QTYTOORDERED',Help = '',PO_PrintName = '',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='QTYTOORDERED') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'QTYSTOCK','',
'2AK5',
'',
'QTYSTOCK',
'',
'',
'',
'',
'QTYSTOCK',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'QTYSTOCK' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', name = 'QTYSTOCK', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'QTYSTOCK', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'QTYSTOCK' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,Help,PO_PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='QTYSTOCK'), 'fr_FR', 'Y', '','QTYSTOCK','QTYSTOCK','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='QTYSTOCK') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'QTYSTOCK',PrintName = 'QTYSTOCK',Help = '',PO_PrintName = '',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='QTYSTOCK') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,Help,PO_PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='QTYSTOCK'), 'nl_NL', 'Y', '','QTYSTOCK','QTYSTOCK','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='QTYSTOCK') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'QTYSTOCK',PrintName = 'QTYSTOCK',Help = '',PO_PrintName = '',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='QTYSTOCK') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'QTYTRFT','',
'2AK5',
'',
'QTYTRFT',
'',
'',
'',
'',
'QTYTRFT',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'QTYTRFT' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', name = 'QTYTRFT', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'QTYTRFT', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'QTYTRFT' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,Help,PO_PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='QTYTRFT'), 'fr_FR', 'Y', '','QTYTRFT','QTYTRFT','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='QTYTRFT') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'QTYTRFT',PrintName = 'QTYTRFT',Help = '',PO_PrintName = '',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='QTYTRFT') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PrintName,Help,PO_PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='QTYTRFT'), 'nl_NL', 'Y', '','QTYTRFT','QTYTRFT','','','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='QTYTRFT') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'QTYTRFT',PrintName = 'QTYTRFT',Help = '',PO_PrintName = '',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='QTYTRFT') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Client_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'),
'',
'@#AD_Client_ID@',
'Identifies the Client/Tenant for this installation.',
'2AK5',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Client_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Client Login'), callout = '', defaultvalue = '@#AD_Client_ID@', description = 'Identifies the Client/Tenant for this installation.', entitytype = '2AK5', fieldlength = 10, help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', name = 'Tenant', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Client_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Tenant'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Tenant' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AD_Org_ID',(select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'),
'',
'@#AD_Org_ID@',
'Organizational entity within Tenant',
'2AK5',
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
where not exists (select 1 from AD_Column where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AD_Org_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'AD_Org Security validation'), callout = '', defaultvalue = '@#AD_Org_ID@', description = 'Organizational entity within Tenant', entitytype = '2AK5', fieldlength = 10, help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', name = 'Organization', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AD_Org_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Organization'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Organization' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Product, Service, Item',
'2AK5',
10,
'Identifies an item which is either purchased or sold in this organization.',
'Product',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Product, Service, Item', entitytype = '2AK5', fieldlength = 10, help = 'Identifies an item which is either purchased or sold in this organization.', name = 'Product', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Product'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'ProductValue',(select AD_Element_ID from AD_Element where ColumnName = 'ProductValue'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Key of the Product',
'2AK5',
20,
'',
'Product Key',
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
where not exists (select 1 from AD_Column where ColumnName = 'ProductValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'ProductValue'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Key of the Product', entitytype = '2AK5', fieldlength = 20, help = '', name = 'Product Key', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'ProductValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Product Key'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product Key' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Product Key'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product Key' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='ProductValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Description',(select AD_Element_ID from AD_Element where ColumnName = 'Description'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Text'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Optional short description of the record',
'2AK5',
1000,
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
where not exists (select 1 from AD_Column where ColumnName = 'Description'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Description'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Text'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Optional short description of the record', entitytype = '2AK5', fieldlength = 1000, help = 'A description is limited to 255 characters.', name = 'Description', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'Y', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Description'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Description'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Description' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Description'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Description' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Description' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'PriceStd',(select AD_Element_ID from AD_Element where ColumnName = 'PriceStd'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Number'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Standard Price',
'2AK5',
22,
'The Standard Price indicates the standard or normal price for a product on this price list',
'Standard Price',
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
where not exists (select 1 from AD_Column where ColumnName = 'PriceStd'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PriceStd'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Number'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Standard Price', entitytype = '2AK5', fieldlength = 22, help = 'The Standard Price indicates the standard or normal price for a product on this price list', name = 'Standard Price', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'PriceStd'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Standard Price'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Standard Price' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Standard Price'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Standard Price' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='PriceStd' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'QTYTOORDERED',(select AD_Element_ID from AD_Element where ColumnName = 'QTYTOORDERED'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Quantity'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2AK5',
22,
'',
'QTYTOORDERED',
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
where not exists (select 1 from AD_Column where ColumnName = 'QTYTOORDERED'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'QTYTOORDERED'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Quantity'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2AK5', fieldlength = 22, help = '', name = 'QTYTOORDERED', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'QTYTOORDERED'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QTYTOORDERED' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'QTYTOORDERED'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYTOORDERED' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'QTYTOORDERED' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYTOORDERED' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QTYTOORDERED' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'QTYTOORDERED'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYTOORDERED' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'QTYTOORDERED' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYTOORDERED' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'QTYSTOCK',(select AD_Element_ID from AD_Element where ColumnName = 'QTYSTOCK'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Quantity'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2AK5',
22,
'',
'QTYSTOCK',
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
where not exists (select 1 from AD_Column where ColumnName = 'QTYSTOCK'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'QTYSTOCK'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Quantity'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2AK5', fieldlength = 22, help = '', name = 'QTYSTOCK', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'QTYSTOCK'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QTYSTOCK' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'QTYSTOCK'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYSTOCK' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'QTYSTOCK' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYSTOCK' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QTYSTOCK' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'QTYSTOCK'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYSTOCK' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'QTYSTOCK' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYSTOCK' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'QTYAVAIL',(select AD_Element_ID from AD_Element where ColumnName = 'QTYAVAIL'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Quantity'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2AK5',
22,
'',
'QTYAVAIL',
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
where not exists (select 1 from AD_Column where ColumnName = 'QTYAVAIL'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'QTYAVAIL'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Quantity'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2AK5', fieldlength = 22, help = '', name = 'QTYAVAIL', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'QTYAVAIL'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QTYAVAIL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'QTYAVAIL'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYAVAIL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'QTYAVAIL' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYAVAIL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QTYAVAIL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'QTYAVAIL'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYAVAIL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'QTYAVAIL' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYAVAIL' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'QtyOrdered',(select AD_Element_ID from AD_Element where ColumnName = 'QtyOrdered'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Quantity'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Ordered Quantity',
'2AK5',
22,
'The Ordered Quantity indicates the quantity of a product that was ordered.',
'Quantity Ordered',
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
where not exists (select 1 from AD_Column where ColumnName = 'QtyOrdered'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'QtyOrdered'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Quantity'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Ordered Quantity', entitytype = '2AK5', fieldlength = 22, help = 'The Ordered Quantity indicates the quantity of a product that was ordered.', name = 'Quantity Ordered', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'QtyOrdered'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Quantity Ordered'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantity Ordered' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Quantity Ordered'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantity Ordered' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyOrdered' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'QTYTRFT',(select AD_Element_ID from AD_Element where ColumnName = 'QTYTRFT'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Quantity'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2AK5',
22,
'',
'QTYTRFT',
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
where not exists (select 1 from AD_Column where ColumnName = 'QTYTRFT'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'QTYTRFT'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Quantity'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2AK5', fieldlength = 22, help = '', name = 'QTYTRFT', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'QTYTRFT'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QTYTRFT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'QTYTRFT'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYTRFT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'QTYTRFT' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYTRFT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QTYTRFT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'QTYTRFT'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYTRFT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'QTYTRFT' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QTYTRFT' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_Product_Category_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_Product_Category_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Category of a Product',
'2AK5',
10,
'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.',
'Product Category',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_Product_Category_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_Product_Category_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Category of a Product', entitytype = '2AK5', fieldlength = 10, help = 'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.', name = 'Product Category', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_Product_Category_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Product Category'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product Category' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Product Category'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Product Category' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_Product_Category_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_S_Famille_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Sous familles',
'2AK5',
10,
'',
'Sous Famille',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Z_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_S_Famille_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Sous familles', entitytype = '2AK5', fieldlength = 10, help = '', name = 'Sous Famille', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Sous Famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous Famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Sous Famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous Famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_S_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_S_S_Famille_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2AK5',
10,
'',
'Sous sous famille',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Z_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_S_S_Famille_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2AK5', fieldlength = 10, help = '', name = 'Sous sous famille', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Sous sous famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Sous sous famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_S_S_S_Famille_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_S_S_S_Famille_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2AK5',
10,
'',
'Sous sous sous famille',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Z_S_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_S_S_S_Famille_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2AK5', fieldlength = 10, help = '', name = 'Sous sous sous famille', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_S_S_S_Famille_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Sous sous sous famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous sous famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Sous sous sous famille'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sous sous sous famille' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_S_S_S_Famille_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Y_Marque_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Y_Marque_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'2AK5',
10,
'',
'Marque',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Y_Marque_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Y_Marque_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '2AK5', fieldlength = 10, help = '', name = 'Marque', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Y_Marque_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Marque'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Marque' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Marque'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Marque' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Y_Marque_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Z_Gamme_ID',(select AD_Element_ID from AD_Element where ColumnName = 'Z_Gamme_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Gammes articles',
'2AK5',
10,
'',
'Gamme',
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
'R',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'Z_Gamme_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Z_Gamme_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Gammes articles', entitytype = '2AK5', fieldlength = 10, help = '', name = 'Gamme', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Z_Gamme_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Gamme'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Gamme' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Gamme'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Gamme' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Z_Gamme_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BPartner_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table Direct'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Identifies a Business Partner',
'2AK5',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BPartner_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table Direct'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Identifies a Business Partner', entitytype = '2AK5', fieldlength = 10, help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', name = 'Business Partner', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '', constrainttype = 'R', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BPartner_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'fr_FR', 'Y', 'Business Partner'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')), 'nl_NL', 'Y', 'Business Partner'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Business Partner' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZRV_REQ_TABLE')) and ad_language = 'nl_NL';

insert into AD_ViewComponent (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewComponent_ID,to_char(SeqNo),Name, description, entitytype, help, isactive, AD_Table_ID, referenced_table_id, fromclause, whereclause, otherclause) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewComponent'),'','VC_ZRV_REQ_TABLE',
'',
'2AK5',
'',
'Y',
(select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'),
(select AD_Table_ID from AD_Table where TableName = 'M_Product'),
'FROM M_Product mp INNER JOIN M_Locator ml ON ml.AD_Client_ID = mp.AD_CLIENT_ID AND ml.ISPOS       =''Y'' INNER JOIN M_Product_PO mpo ON Mpo.M_Product_ID = mp.M_Product_ID AND mpo.isActive    = ''Y'' INNER JOIN C_Bpartner Cb ON Cb.C_Bpartner_Id = Mpo.C_Bpartner_Id AND Cb.Isactive     = ''Y''',
'WHERE mp.ISSTOCKED  = ''Y'' AND mp.ISPURCHASED  = ''Y'' AND mp.PRODUCTTYPE  = ''I''',
''
 from dual  
where not exists (select 1 from AD_ViewComponent where to_char(SeqNo) = ''  and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

update AD_ViewComponent set Updated = sysdate, UpdatedBy = 0, Name = 'VC_ZRV_REQ_TABLE', description = '', entitytype = '2AK5', help = '', isactive = 'Y', AD_Table_ID = (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_Product'), fromclause = 'FROM M_Product mp INNER JOIN M_Locator ml ON ml.AD_Client_ID = mp.AD_CLIENT_ID AND ml.ISPOS       =''Y'' INNER JOIN M_Product_PO mpo ON Mpo.M_Product_ID = mp.M_Product_ID AND mpo.isActive    = ''Y'' INNER JOIN C_Bpartner Cb ON Cb.C_Bpartner_Id = Mpo.C_Bpartner_Id AND Cb.Isactive     = ''Y''', whereclause = 'WHERE mp.ISSTOCKED  = ''Y'' AND mp.ISPURCHASED  = ''Y'' AND mp.PRODUCTTYPE  = ''I''', otherclause = '' 
where to_char(SeqNo) = ''  and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE');

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'AD_CLIENT_ID','',
'2AK5',
'',
'mp.AD_Client_ID',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'AD_CLIENT_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'mp.AD_Client_ID', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'AD_CLIENT_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'AD_ORG_ID','',
'2AK5',
'',
'ml.AD_Org_ID',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'AD_ORG_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'ml.AD_Org_ID', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'AD_ORG_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'M_PRODUCT_ID','',
'2AK5',
'',
'mp.M_PRODUCT_ID',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'M_PRODUCT_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'mp.M_PRODUCT_ID', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'M_PRODUCT_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'PRODUCTVALUE','',
'2AK5',
'',
'mp.Value',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'PRODUCTVALUE'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'mp.Value', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'PRODUCTVALUE'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'DESCRIPTION','',
'2AK5',
'',
'mp.DESCRIPTION',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'DESCRIPTION'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'mp.DESCRIPTION', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'DESCRIPTION'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'PRICESTD','',
'2AK5',
'',
'getLastPromoPrice(1001036,mp.M_PRODUCT_ID,Sysdate, ''N'')',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'PRICESTD'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'getLastPromoPrice(1001036,mp.M_PRODUCT_ID,Sysdate, ''N'')', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'PRICESTD'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'QTYTOORDERED','',
'2AK5',
'',
'0',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'QTYTOORDERED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = '0', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'QTYTOORDERED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'QTYSTOCK','',
'2AK5',
'',
'bomQtyOnHandByLocator(mp.M_Product_ID,ml.M_Locator_ID)',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'QTYSTOCK'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'bomQtyOnHandByLocator(mp.M_Product_ID,ml.M_Locator_ID)', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'QTYSTOCK'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'QTYAVAIL','',
'2AK5',
'',
'bomQtyAvailableByLocator(mp.M_Product_ID,ml.M_Warehouse_ID,ml.M_Locator_ID)',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'QTYAVAIL'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'bomQtyAvailableByLocator(mp.M_Product_ID,ml.M_Warehouse_ID,ml.M_Locator_ID)', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'QTYAVAIL'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'QTYORDERED','',
'2AK5',
'',
'bomQtyOrderedByLocator(mp.M_Product_ID,ml.M_Warehouse_ID,ml.M_Locator_ID)',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'QTYORDERED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'bomQtyOrderedByLocator(mp.M_Product_ID,ml.M_Warehouse_ID,ml.M_Locator_ID)', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'QTYORDERED'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'QTYTRFT','',
'2AK5',
'',
'getTRFTINOUTBYLOCATOR (ml.M_Locator_ID, mp.M_Product_ID, 0)',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'QTYTRFT'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'getTRFTINOUTBYLOCATOR (ml.M_Locator_ID, mp.M_Product_ID, 0)', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'QTYTRFT'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'M_PRODUCT_CATEGORY_ID','',
'2AK5',
'',
'mp.M_PRODUCT_CATEGORY_ID',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'M_PRODUCT_CATEGORY_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'mp.M_PRODUCT_CATEGORY_ID', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'M_PRODUCT_CATEGORY_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'Z_S_FAMILLE_ID','',
'2AK5',
'',
'mp.Z_S_FAMILLE_ID',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'Z_S_FAMILLE_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'mp.Z_S_FAMILLE_ID', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'Z_S_FAMILLE_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'Z_S_S_FAMILLE_ID','',
'2AK5',
'',
'mp.Z_S_S_FAMILLE_ID',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'Z_S_S_FAMILLE_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'mp.Z_S_S_FAMILLE_ID', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'Z_S_S_FAMILLE_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'Z_S_S_S_FAMILLE_ID','',
'2AK5',
'',
'mp.Z_S_S_S_FAMILLE_ID',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'Z_S_S_S_FAMILLE_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'mp.Z_S_S_S_FAMILLE_ID', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'Z_S_S_S_FAMILLE_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'Y_MARQUE_ID','',
'2AK5',
'',
'mp.Y_MARQUE_ID',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'Y_MARQUE_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'mp.Y_MARQUE_ID', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'Y_MARQUE_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'Z_GAMME_ID','',
'2AK5',
'',
'mp.Z_GAMME_ID',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'Z_GAMME_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'mp.Z_GAMME_ID', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'Z_GAMME_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_ViewColumn (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_ViewColumn_ID,ColumnName,description, entitytype, help, columnsql, isactive, dbdatatype, AD_viewcomponent_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_ViewColumn'),'C_BPARTNER_ID','',
'2AK5',
'',
'cb.C_BPARTNER_ID',
'Y',
'',
(select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'))
 from dual  
where not exists (select 1 from AD_ViewColumn where ColumnName = 'C_BPARTNER_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')));

update AD_ViewColumn set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '2AK5', help = '', columnsql = 'cb.C_BPARTNER_ID', isactive = 'Y', dbdatatype = '', AD_viewcomponent_ID = (select AD_ViewComponent_ID from AD_ViewComponent where to_char(SeqNo) = '10' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE')) 
where ColumnName = 'C_BPARTNER_ID'  and AD_ViewComponent_ID in (select AD_ViewComponent_ID from AD_ViewComponent where seqNo = 10 and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'ZRV_REQ_TABLE'));

insert into AD_Form (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,Name,accesslevel, classname, description, entitytype, help, isactive, isbetafunctionality,JSPURL,AD_CTXAREA_ID, WebClassname) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Form'),'Préparation de demande d''achat','1',
'',
'',
'2AK5',
'',
'Y',
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'org.compiere.gwt.server.window.CreateRequisitionWindowImpl'
 from dual  
where not exists (select 1 from AD_Form where Name = 'Préparation de demande d''achat' );

update AD_Form set Updated = sysdate, UpdatedBy = 0, accesslevel = '1', classname = '', description = '', entitytype = '2AK5', help = '', isactive = 'Y', isbetafunctionality = 'N', JSPURL = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), WebClassname = 'org.compiere.gwt.server.window.CreateRequisitionWindowImpl' 
where Name = 'Préparation de demande d''achat' ;

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Préparation de demande d''achat'), 'fr_FR', 'Y', '','','Préparation de demande d''achat'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Préparation de demande d''achat') and ad_language = 'fr_FR');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Préparation de demande d''achat' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Préparation de demande d''achat') and ad_language = 'fr_FR';

insert into AD_Form_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Form_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Form_ID from AD_Form where Name='Préparation de demande d''achat'), 'nl_NL', 'Y', '','','Préparation de demande d''achat'
 from dual  
where not exists (select 1 from AD_Form_Trl where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Préparation de demande d''achat') and ad_language = 'nl_NL');

update AD_Form_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Préparation de demande d''achat' where AD_Form_ID in (select AD_Form_ID from AD_Form where Name='Préparation de demande d''achat') and ad_language = 'nl_NL';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'Préparation de demande d''achat','Préparation de demande d''achat',
'X',
'',
'2AK5',
(select AD_Form_ID from AD_Form where Name = 'Préparation de demande d''achat'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = ''),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'Préparation de demande d''achat' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Préparation de demande d''achat', action = 'X', description = '', entitytype = '2AK5', ad_form_id = (select AD_Form_ID from AD_Form where Name = 'Préparation de demande d''achat'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'Préparation de demande d''achat' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Préparation de demande d''achat'), 'fr_FR', 'Y', '','Préparation de demande d''achat'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Préparation de demande d''achat') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Préparation de demande d''achat' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Préparation de demande d''achat') and ad_language = 'fr_FR';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='Préparation de demande d''achat'), 'nl_NL', 'Y', '','Préparation de demande d''achat'
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Préparation de demande d''achat') and ad_language = 'nl_NL');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Préparation de demande d''achat' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='Préparation de demande d''achat') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '76357-Tableau de préparation de demandes d''achat', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '2AK5' ;

update AD_Table set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), description = '', entitytype = '2AK5', help = '', importtable = 'N', loadseq = 0, name = 'ZRV_REQ_TABLE', replicationtype = 'L', isactive = 'Y', isdeleteable = 'N', ishighvolume = 'N', issecurityenabled = 'N', isview = 'Y', ad_window_id = (select AD_Window_ID from AD_Window where Value = ''), po_window_id = (select AD_Window_ID from AD_Window where Value = ''), referenced_table_id = (select AD_Table_ID from AD_Table where TableName = '') 
where TableName = 'ZRV_REQ_TABLE' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'Préparation de demande d''achat') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'Préparation de demande d''achat')); 

