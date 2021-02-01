insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG23','EG23 - SMILE-529',
'',
'',
'Y',
'',
'',
'',
'N',
'0',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'EG23' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG23 - SMILE-529', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG23' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'QtyAvailable',(select AD_Element_ID from AD_Element where ColumnName = 'QtyAvailable'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Quantity'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_OrderLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Available Quantity (On Hand - Reserved)',
'EG23',
10,
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
'(Select sum(rvs.QtyAvailable) from RV_Storage rvs where rvs.M_Product_ID = C_Orderline.M_Product_ID and rvs.AD_CLient_ID = C_Orderline.AD_Client_ID)',
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
where not exists (select 1 from AD_Column where ColumnName = 'QtyAvailable'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'QtyAvailable'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Quantity'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_OrderLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Available Quantity (On Hand - Reserved)', entitytype = 'EG23', fieldlength = 10, help = 'Quantity available to promise = On Hand minus Reserved Quantity', name = 'Available Quantity', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '(Select sum(rvs.QtyAvailable) from RV_Storage rvs where rvs.M_Product_ID = C_Orderline.M_Product_ID and rvs.AD_CLient_ID = C_Orderline.AD_Client_ID)', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'QtyAvailable'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')), 'nl_NL', 'Y', 'Available Quantity'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Available Quantity' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')), 'fr_FR', 'Y', 'Quantité disponible'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Quantité disponible' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'PO Line_293' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Purchase Order_181')),
'Available Quantity',
'Available Quantity (On Hand - Reserved)',
22,
'',
'EG23',
'Quantity available to promise = On Hand minus Reserved Quantity',
'',
210,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PO Line_293' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'PO Line_293' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Purchase Order_181')), name = 'Available Quantity', description = 'Available Quantity (On Hand - Reserved)', displaylength = 22, displaylogic = '', entitytype = 'EG23', help = 'Quantity available to promise = On Hand minus Reserved Quantity', obscuretype = '', seqno = 210, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PO Line_293' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PO Line_293' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))), 'nl_NL', 'Y', 'Available Quantity (On Hand - Reserved)','Quantity available to promise = On Hand minus Reserved Quantity','Available Quantity'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PO Line_293' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Available Quantity (On Hand - Reserved)',Help = 'Quantity available to promise = On Hand minus Reserved Quantity',Name = 'Available Quantity' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PO Line_293' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PO Line_293' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))), 'fr_FR', 'Y', 'Available Quantity (On Hand - Reserved)','Quantity available to promise = On Hand minus Reserved Quantity','Quantité disponible'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PO Line_293' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Available Quantity (On Hand - Reserved)',Help = 'Quantity available to promise = On Hand minus Reserved Quantity',Name = 'Quantité disponible' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyAvailable' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_OrderLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'PO Line_293' and ad_window_id in (select ad_window_id from ad_window where value = 'Purchase Order_181'))) and ad_language = 'fr_FR';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'DateOrdered',(select AD_Element_ID from AD_Element where ColumnName = 'DateOrdered'),
(select AD_Process_ID from AD_Process where Value = 'RV_CDEALIVRER_EC'),
(select AD_Reference_ID from AD_Reference where Name = 'Date'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'DateOrdered',
'',
'',
'',
'EG23',
0,
'',
20,
'',
'',
'',
'Y',
'Y',
'N',
'Y',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'DateOrdered'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_CDEALIVRER_EC'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'DateOrdered'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'RV_CDEALIVRER_EC'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Date'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'DateOrdered', defaultvalue = '', defaultvalue2 = '', description = '', entitytype = 'EG23', fieldlength = 0, help = '', seqno = 20, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'Y', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'DateOrdered'  and ad_process_id in (select ad_process_id from ad_process where value = 'RV_CDEALIVRER_EC');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateOrdered' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_CDEALIVRER_EC')), 'nl_NL', 'Y', '','','DateOrdered'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateOrdered' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_CDEALIVRER_EC')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'DateOrdered' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateOrdered' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_CDEALIVRER_EC')) and ad_language = 'nl_NL';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateOrdered' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_CDEALIVRER_EC')), 'fr_FR', 'Y', '','','Date Commande'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateOrdered' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_CDEALIVRER_EC')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Date Commande' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='DateOrdered' and ad_process_id in (select ad_process_id from ad_process where value = 'RV_CDEALIVRER_EC')) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG23 - SMILE-529', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG23' ;

