insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC33','EC33 - QtyAvailable dans la demande d''achat',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EC33' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC33 - QtyAvailable dans la demande d''achat', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC33' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'QtyAvailable',(select AD_Element_ID from AD_Element where ColumnName = 'QtyAvailable'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Quantity'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_RequisitionLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Available Quantity (On Hand - Reserved)',
'EC33',
22,
'Quantity available to promise = On Hand minus Reserved Quantity',
'Available Quantity',
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
'N',
'N',
'N',
'N',
'N',
'(SELECT bomQtyAvailable(M_RequisitionLine.M_Product_ID,(SELECT max(M_Warehouse_ID) FROM m_Requisition r WHERE r.M_Requisition_ID = M_RequisitionLine.M_Requisition_ID ),0) FROM dual)',
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
where not exists (select 1 from AD_Column where ColumnName = 'QtyAvailable'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'QtyAvailable'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Quantity'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_RequisitionLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Available Quantity (On Hand - Reserved)', entitytype = 'EC33', fieldlength = 22, help = 'Quantity available to promise = On Hand minus Reserved Quantity', name = 'Available Quantity', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '(SELECT bomQtyAvailable(M_RequisitionLine.M_Product_ID,(SELECT max(M_Warehouse_ID) FROM m_Requisition r WHERE r.M_Requisition_ID = M_RequisitionLine.M_Requisition_ID ),0) FROM dual)', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'Y', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'QtyAvailable'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')), 'nl_NL', 'Y', 'Available Quantity'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Available Quantity' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')), 'fr_FR', 'Y', 'Available Quantity'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Available Quantity' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'QtyAvailable',(select AD_Element_ID from AD_Element where ColumnName = 'QtyAvailable'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Quantity'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'1',
'Available Quantity (On Hand - Reserved)',
'EC33',
22,
'Quantity available to promise = On Hand minus Reserved Quantity',
'Available Quantity',
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
'(SELECT bomQtyAvailable(Z_TransactionMsg.M_Product_ID,(SELECT max(M_Warehouse_ID) FROM AD_OrgInfo r WHERE r.AD_Org_ID = Z_TransactionMsg.AD_Org_ID ),0) FROM dual)',
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
where not exists (select 1 from AD_Column where ColumnName = 'QtyAvailable'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'QtyAvailable'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Quantity'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_TransactionMsg'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '1', description = 'Available Quantity (On Hand - Reserved)', entitytype = 'EC33', fieldlength = 22, help = 'Quantity available to promise = On Hand minus Reserved Quantity', name = 'Available Quantity', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '(SELECT bomQtyAvailable(Z_TransactionMsg.M_Product_ID,(SELECT max(M_Warehouse_ID) FROM AD_OrgInfo r WHERE r.AD_Org_ID = Z_TransactionMsg.AD_Org_ID ),0) FROM dual)', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'QtyAvailable'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'nl_NL', 'Y', 'Available Quantity'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Available Quantity' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')), 'fr_FR', 'Y', 'Available Quantity'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Available Quantity' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')),
'Available Quantity',
'Available Quantity (On Hand - Reserved)',
22,
'',
'EC33',
'Quantity available to promise = On Hand minus Reserved Quantity',
'',
100,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'Y',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
100
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Validation des Messages' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Validation des Messages')), name = 'Available Quantity', description = 'Available Quantity (On Hand - Reserved)', displaylength = 22, displaylogic = '', entitytype = 'EC33', help = 'Quantity available to promise = On Hand minus Reserved Quantity', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 100 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'nl_NL', 'Y', 'Available Quantity (On Hand - Reserved)','Quantity available to promise = On Hand minus Reserved Quantity','Available Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Available Quantity (On Hand - Reserved)',Help = 'Quantity available to promise = On Hand minus Reserved Quantity',Name = 'Available Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))), 'fr_FR', 'Y', 'Available Quantity (On Hand - Reserved)','Quantity available to promise = On Hand minus Reserved Quantity','Qté disponible'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Available Quantity (On Hand - Reserved)',Help = 'Quantity available to promise = On Hand minus Reserved Quantity',Name = 'Qté disponible' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TransactionMsg')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Validation des Messages' and ad_window_id in (select ad_window_id from ad_window where value = 'Validation des Messages'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Requisition Line_642' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Requisition_322')),
'Available Quantity',
'Available Quantity (On Hand - Reserved)',
0,
'',
'EC33',
'Quantity available to promise = On Hand minus Reserved Quantity',
'',
90,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Requisition Line_642' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Requisition_322')), name = 'Available Quantity', description = 'Available Quantity (On Hand - Reserved)', displaylength = 0, displaylogic = '', entitytype = 'EC33', help = 'Quantity available to promise = On Hand minus Reserved Quantity', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'))), 'nl_NL', 'Y', 'Available Quantity (On Hand - Reserved)','Quantity available to promise = On Hand minus Reserved Quantity','Available Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Available Quantity (On Hand - Reserved)',Help = 'Quantity available to promise = On Hand minus Reserved Quantity',Name = 'Available Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'))), 'fr_FR', 'Y', 'Available Quantity (On Hand - Reserved)','Quantity available to promise = On Hand minus Reserved Quantity','Qté disponible'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Available Quantity (On Hand - Reserved)',Help = 'Quantity available to promise = On Hand minus Reserved Quantity',Name = 'Qté disponible' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_RequisitionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Requisition Line_642' and ad_window_id in (select ad_window_id from ad_window where value = 'Requisition_322'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC33 - QtyAvailable dans la demande d''achat', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC33' ;

