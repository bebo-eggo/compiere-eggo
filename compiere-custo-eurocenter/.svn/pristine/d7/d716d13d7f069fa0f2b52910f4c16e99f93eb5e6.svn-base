insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'296H','296H - Empêcher une facture d''acompte après une facture de l',
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
where not exists (select 1 from AD_EntityType where EntityType = '296H' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '296H - Empêcher une facture d''acompte après une facture de l', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '296H' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsForceToInvoice','',
'296H',
'',
'Forcer la facturation',
'',
'',
'',
'',
'Forcer la facturation',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsForceToInvoice' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '296H', help = '', name = 'Forcer la facturation', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Forcer la facturation', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsForceToInvoice' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsForceToInvoice'), 'fr_FR', 'Y', '','Forcer la facturation','','','Forcer la facturation','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsForceToInvoice') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Forcer la facturation',Help = '',PO_PrintName = '',PrintName = 'Forcer la facturation',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsForceToInvoice') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,Help,PO_PrintName,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsForceToInvoice'), 'nl_NL', 'Y', '','Forcer la facturation','','','Forcer la facturation','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsForceToInvoice') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Forcer la facturation',Help = '',PO_PrintName = '',PrintName = 'Forcer la facturation',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsForceToInvoice') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsForceToInvoice',(select AD_Element_ID from AD_Element where ColumnName = 'IsForceToInvoice'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'296H',
1,
'',
'Forcer la facturation',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsForceToInvoice'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsForceToInvoice'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_OrderPaymSchedule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '296H', fieldlength = 1, help = '', name = 'Forcer la facturation', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsForceToInvoice'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'fr_FR', 'Y', 'Forcer la facturation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Forcer la facturation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')), 'nl_NL', 'Y', 'Forcer la facturation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Forcer la facturation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')),
'Forcer la facturation',
'',
0,
'@IsProm@=N',
'296H',
'',
'',
300,
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
300
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Echéancier de paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sales Order Cuis')), name = 'Forcer la facturation', description = '', displaylength = 0, displaylogic = '@IsProm@=N', entitytype = '296H', help = '', obscuretype = '', seqno = 300, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 300 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'fr_FR', 'Y', '','','Forcer la facturation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Forcer la facturation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))), 'nl_NL', 'Y', '','','Forcer la facturation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Forcer la facturation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsForceToInvoice' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_OrderPaymSchedule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Echéancier de paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sales Order Cuis'))) and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'INV_ECH_INOUT_EXISTS','296H',
'Facture d''acompte impossible, marchandise(s) déjà livrée(s).',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'INV_ECH_INOUT_EXISTS' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '296H', msgtext = 'Facture d''acompte impossible, marchandise(s) déjà livrée(s).', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'INV_ECH_INOUT_EXISTS' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='INV_ECH_INOUT_EXISTS'), 'fr_FR', 'Y', '','Facture d''acompte impossible, marchandise(s) déjà livrée(s).'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='INV_ECH_INOUT_EXISTS') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Facture d''acompte impossible, marchandise(s) déjà livrée(s).' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='INV_ECH_INOUT_EXISTS') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='INV_ECH_INOUT_EXISTS'), 'nl_NL', 'Y', '','Facture d''acompte impossible, marchandise(s) déjà livrée(s).'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='INV_ECH_INOUT_EXISTS') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Facture d''acompte impossible, marchandise(s) déjà livrée(s).' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='INV_ECH_INOUT_EXISTS') and ad_language = 'nl_NL';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'INV_TOT_ECH_TOT_CMD','296H',
'Total des échéances différent du total de la commande',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'INV_TOT_ECH_TOT_CMD' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '296H', msgtext = 'Total des échéances différent du total de la commande', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'INV_TOT_ECH_TOT_CMD' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='INV_TOT_ECH_TOT_CMD'), 'fr_FR', 'Y', '','Total des échéances différent du total de la commande'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='INV_TOT_ECH_TOT_CMD') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Total des échéances différent du total de la commande' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='INV_TOT_ECH_TOT_CMD') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgTip,MsgText) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='INV_TOT_ECH_TOT_CMD'), 'nl_NL', 'Y', '','Total des échéances différent du total de la commande'
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='INV_TOT_ECH_TOT_CMD') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgTip = '',MsgText = 'Total des échéances différent du total de la commande' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='INV_TOT_ECH_TOT_CMD') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '296H - Empêcher une facture d''acompte après une facture de l', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '296H' ;

