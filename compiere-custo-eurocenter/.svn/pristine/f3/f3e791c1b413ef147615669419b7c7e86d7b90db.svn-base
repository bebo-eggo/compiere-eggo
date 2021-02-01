ALTER TABLE M_ProductPrice ADD QtyMin NUMBER DEFAULT 0;
insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'J017','J017 - Qté mini de demande d''achat',
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
where not exists (select 1 from AD_EntityType where EntityType = 'J017' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J017 - Qté mini de demande d''achat', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J017' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'QtyMin',(select AD_Element_ID from AD_Element where ColumnName = 'Order_Min'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Quantity'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_ProductPrice'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'0',
'Minimum order quantity in UOM',
'J017',
22,
'The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.',
'Minimum Order Qty',
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
where not exists (select 1 from AD_Column where ColumnName = 'QtyMin'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Order_Min'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Quantity'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_ProductPrice'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '0', description = 'Minimum order quantity in UOM', entitytype = 'J017', fieldlength = 22, help = 'The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.', name = 'Minimum Order Qty', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'QtyMin'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')), 'nl_BE', 'Y', 'Minimum Order Qty'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Minimum Order Qty' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')), 'fr_FR', 'Y', 'Minimum Order Qty'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Minimum Order Qty' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Product Price_192' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Price List_146')),
'Minimum Order Qty',
'Minimum order quantity in UOM',
22,
'',
'J017',
'The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.',
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
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Price_192' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Product Price_192' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Price List_146')), name = 'Minimum Order Qty', description = 'Minimum order quantity in UOM', displaylength = 22, displaylogic = '', entitytype = 'J017', help = 'The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Price_192' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Price_192' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))), 'nl_BE', 'Y', 'Minimum order quantity in UOM','The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.','Minimum Order Qty'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Price_192' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Minimum order quantity in UOM',Help = 'The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.',Name = 'Minimum Order Qty' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Price_192' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Price_192' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))), 'fr_FR', 'Y', 'Minimum order quantity in UOM','The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.','Qté mini DA'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Price_192' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Minimum order quantity in UOM',Help = 'The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.',Name = 'Qté mini DA' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Product Price_192' and ad_window_id in (select ad_window_id from ad_window where value = 'Price List_146'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Price_183' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')),
'Minimum Order Qty',
'Minimum order quantity in UOM',
22,
'',
'J017',
'The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.',
'',
80,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price_183' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Price_183' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Product_140')), name = 'Minimum Order Qty', description = 'Minimum order quantity in UOM', displaylength = 22, displaylogic = '', entitytype = 'J017', help = 'The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price_183' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price_183' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'nl_BE', 'Y', 'Minimum order quantity in UOM','The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.','Minimum Order Qty'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price_183' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Minimum order quantity in UOM',Help = 'The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.',Name = 'Minimum Order Qty' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price_183' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price_183' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))), 'fr_FR', 'Y', 'Minimum order quantity in UOM','The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.','Qté min de DA'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price_183' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Minimum order quantity in UOM',Help = 'The Minimum Order Quantity indicates the smallest quantity of this product which can be ordered.',Name = 'Qté min de DA' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'QtyMin' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_ProductPrice')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Price_183' and ad_window_id in (select ad_window_id from ad_window where value = 'Product_140'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'J017 - Qté mini de demande d''achat', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'J017' ;

