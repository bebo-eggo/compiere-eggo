ALTER TABLE M_Movement ADD POReference NVARCHAR2(22);
ALTER TABLE M_MovementConfirm ADD POReference NVARCHAR2(22);


insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC40','EC40 - Tranfert Cust',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EC40' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC40 - Tranfert Cust', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC40' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'POReference',(select AD_Element_ID from AD_Element where ColumnName = 'POReference'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_MovementConfirm'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner',
'EC40',
22,
'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',
'Order Reference',
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
where not exists (select 1 from AD_Column where ColumnName = 'POReference'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'POReference'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_MovementConfirm'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner', entitytype = 'EC40', fieldlength = 22, help = 'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.', name = 'Order Reference', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'POReference'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')), 'fr_FR', 'Y', 'Référence commande'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Référence commande' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')), 'nl_NL', 'Y', 'Order Referentie'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order Referentie' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_WarehouseTo_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_WarehouseTo_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'M_Warehouse of Client'),
(select AD_Table_ID from AD_Table where TableName = 'M_Movement'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC40',
22,
'',
'Magasin / dépôt vers',
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
'(SELECT max(ml.m_warehouseto_id) FROM m_movementline ml WHERE ml.m_movement_id=m_movement.m_movement_id)',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_WarehouseTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_WarehouseTo_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'M_Warehouse of Client'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_Movement'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC40', fieldlength = 22, help = '', name = 'Magasin / dépôt vers', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '(SELECT max(ml.m_warehouseto_id) FROM m_movementline ml WHERE ml.m_movement_id=m_movement.m_movement_id)', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_WarehouseTo_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')), 'fr_FR', 'Y', 'Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Magasin / dépôt vers' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')), 'nl_NL', 'Y', 'Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Magasin / dépôt vers' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'M_WarehouseSource_ID',(select AD_Element_ID from AD_Element where ColumnName = 'M_WarehouseSource_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'M_Warehouse of Client'),
(select AD_Table_ID from AD_Table where TableName = 'M_MovementConfirm'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Optional Warehouse to replenish from',
'EC40',
22,
'If defined, the warehouse selected is used to replenish the product(s)',
'Source Warehouse',
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
'(select max(ml.m_warehouse_id) from m_movementline ml where ml.m_movement_id=m_movementconfirm.m_movement_id)',
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
where not exists (select 1 from AD_Column where ColumnName = 'M_WarehouseSource_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'M_WarehouseSource_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'M_Warehouse of Client'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_MovementConfirm'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Optional Warehouse to replenish from', entitytype = 'EC40', fieldlength = 22, help = 'If defined, the warehouse selected is used to replenish the product(s)', name = 'Source Warehouse', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '(select max(ml.m_warehouse_id) from m_movementline ml where ml.m_movement_id=m_movementconfirm.m_movement_id)', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'M_WarehouseSource_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')), 'fr_FR', 'Y', 'Magasin Source'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Magasin Source' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')), 'nl_NL', 'Y', 'Source Stock'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Source Stock' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'POReference',(select AD_Element_ID from AD_Element where ColumnName = 'POReference'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_Movement'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner',
'EC40',
22,
'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',
'Order Reference',
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
where not exists (select 1 from AD_Column where ColumnName = 'POReference'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'POReference'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_Movement'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner', entitytype = 'EC40', fieldlength = 22, help = 'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.', name = 'Order Reference', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'POReference'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')), 'fr_FR', 'Y', 'Référence commande'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Référence commande' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')), 'nl_NL', 'Y', 'Order Referentie'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Order Referentie' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_259' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_170')),
'Magasin / dépôt vers',
'',
0,
'',
'EC40',
'',
'',
35,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_259' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_170')), name = 'Magasin / dépôt vers', description = '', displaylength = 0, displaylogic = '', entitytype = 'EC40', help = '', obscuretype = '', seqno = 35, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))), 'fr_FR', 'Y', '','','Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin / dépôt vers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))), 'nl_NL', 'Y', '','','Magasin / dépôt vers'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Magasin / dépôt vers' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Confirmation_666' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Move Confirmation_333')),
'Order Reference',
'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner',
22,
'',
'EC40',
'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',
'',
45,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Confirmation_666' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Move Confirmation_333')), name = 'Order Reference', description = 'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner', displaylength = 22, displaylogic = '', entitytype = 'EC40', help = 'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.', obscuretype = '', seqno = 45, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'))), 'fr_FR', 'Y', 'Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)','Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)','Référence commande'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)',Help = 'Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)',Name = 'Référence commande' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'))), 'nl_NL', 'Y', 'Transactie referentie nummer (verkoop order, inkoop order) van uw relatie.','De order referentie is de order referentie van de relatie voor deze specifieke transactie. Vaak worden er inkoop order nummers gegeven om af te drukken op facturen voor makkelijke herkenning. Een standaard nummer kan worden ingesteld in het relatie scherm.','Order Referentie'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transactie referentie nummer (verkoop order, inkoop order) van uw relatie.',Help = 'De order referentie is de order referentie van de relatie voor deze specifieke transactie. Vaak worden er inkoop order nummers gegeven om af te drukken op facturen voor makkelijke herkenning. Een standaard nummer kan worden ingesteld in het relatie scherm.',Name = 'Order Referentie' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Move_259' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_170')),
'Order Reference',
'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner',
22,
'',
'EC40',
'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',
'',
38,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Move_259' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Inventory Move_170')), name = 'Order Reference', description = 'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner', displaylength = 22, displaylogic = '', entitytype = 'EC40', help = 'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.', obscuretype = '', seqno = 38, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))), 'fr_FR', 'Y', 'Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)','Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)','Référence commande'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Référence de la commande (achat ou vente) indiquée par le tiers (fournisseur ou client)',Help = 'Identifie la référence de  la commande  (référence Tiers) pour une transaction spécifique. Souvent, c''est le numéro de la commande d''achat Tiers, imprimé sur la facture, qui est spécifié. Un numéro standard peut être défini au niveau du Tiers (onglet client de la fenêtre Tiers)',Name = 'Référence commande' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))), 'nl_NL', 'Y', 'Transactie referentie nummer (verkoop order, inkoop order) van uw relatie.','De order referentie is de order referentie van de relatie voor deze specifieke transactie. Vaak worden er inkoop order nummers gegeven om af te drukken op facturen voor makkelijke herkenning. Een standaard nummer kan worden ingesteld in het relatie scherm.','Order Referentie'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transactie referentie nummer (verkoop order, inkoop order) van uw relatie.',Help = 'De order referentie is de order referentie van de relatie voor deze specifieke transactie. Vaak worden er inkoop order nummers gegeven om af te drukken op facturen voor makkelijke herkenning. Een standaard nummer kan worden ingesteld in het relatie scherm.',Name = 'Order Referentie' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'POReference' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_Movement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Move_259' and ad_window_id in (select ad_window_id from ad_window where value = 'Inventory Move_170'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Confirmation_666' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Move Confirmation_333')),
'Source Warehouse',
'Optional Warehouse to replenish from',
22,
'',
'EC40',
'If defined, the warehouse selected is used to replenish the product(s)',
'',
35,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Confirmation_666' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Move Confirmation_333')), name = 'Source Warehouse', description = 'Optional Warehouse to replenish from', displaylength = 22, displaylogic = '', entitytype = 'EC40', help = 'If defined, the warehouse selected is used to replenish the product(s)', obscuretype = '', seqno = 35, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'))), 'fr_FR', 'Y', 'Entrepôt / Magasin optionnel à partir duquel le réapprovisionnement est réalisé','Si il est défini, le magasin sélectionné est utilisé pour réapprovisionner les articles.','Magasin Source'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Entrepôt / Magasin optionnel à partir duquel le réapprovisionnement est réalisé',Help = 'Si il est défini, le magasin sélectionné est utilisé pour réapprovisionner les articles.',Name = 'Magasin Source' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'))), 'nl_NL', 'Y', 'Optional Warehouse to replenish from','If defined, the warehouse selected is used to replenish the product(s)','Source Stock'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Optional Warehouse to replenish from',Help = 'If defined, the warehouse selected is used to replenish the product(s)',Name = 'Source Stock' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'M_WarehouseSource_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_MovementConfirm')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Confirmation_666' and ad_window_id in (select ad_window_id from ad_window where value = 'Move Confirmation_333'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC40 - Tranfert Cust', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC40' ;

