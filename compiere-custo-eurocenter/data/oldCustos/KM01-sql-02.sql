insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'KM01','KM01 - IsReconciled on InOutLine',
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
where not exists (select 1 from AD_EntityType where EntityType = 'KM01' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'KM01 - IsReconciled on InOutLine', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'KM01' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsReconciled',(select AD_Element_ID from AD_Element where ColumnName = 'IsReconciled'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'M_InOutLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'Payment is reconciled with bank statement',
'KM01',
1,
'',
'Reconciled',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsReconciled'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsReconciled'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'M_InOutLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = 'Payment is reconciled with bank statement', entitytype = 'KM01', fieldlength = 1, help = '', name = 'Reconciled', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsReconciled'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine')), 'fr_FR', 'Y', 'Réconcilié'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Réconcilié' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine')), 'nl_NL', 'Y', 'Reconciled'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Reconciled' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Receipt Line_297' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Material Receipt_184')),
'Reconciled',
'Payment is reconciled with bank statement',
0,
'@IsReconciled@=Y',
'KM01',
'',
'',
120,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
120
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Receipt Line_297' and ad_window_id in (select ad_window_id from ad_window where value = 'Material Receipt_184')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Receipt Line_297' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Material Receipt_184')), name = 'Reconciled', description = 'Payment is reconciled with bank statement', displaylength = 0, displaylogic = '@IsReconciled@=Y', entitytype = 'KM01', help = '', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 120 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Receipt Line_297' and ad_window_id in (select ad_window_id from ad_window where value = 'Material Receipt_184'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Receipt Line_297' and ad_window_id in (select ad_window_id from ad_window where value = 'Material Receipt_184'))), 'fr_FR', 'Y', '','Payment is reconciled with bank statement','Réconcilié'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Receipt Line_297' and ad_window_id in (select ad_window_id from ad_window where value = 'Material Receipt_184'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Payment is reconciled with bank statement',Name = 'Réconcilié' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Receipt Line_297' and ad_window_id in (select ad_window_id from ad_window where value = 'Material Receipt_184'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Receipt Line_297' and ad_window_id in (select ad_window_id from ad_window where value = 'Material Receipt_184'))), 'nl_NL', 'Y', '','Payment is reconciled with bank statement','Reconciled'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Receipt Line_297' and ad_window_id in (select ad_window_id from ad_window where value = 'Material Receipt_184'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = 'Payment is reconciled with bank statement',Name = 'Reconciled' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsReconciled' and ad_table_id in (select ad_table_id from ad_table where tablename = 'M_InOutLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Receipt Line_297' and ad_window_id in (select ad_window_id from ad_window where value = 'Material Receipt_184'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'KM01 - IsReconciled on InOutLine', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'Y', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'KM01' ;

