insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'8970','38970 - EC-SFD0023 ? SORTIE DE CAISSE POUR DEPOT BANQUE',
'',
'',
'Y',
'',
'',
'',
'N',
'1.0',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '8970' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '38970 - EC-SFD0023 ? SORTIE DE CAISSE POUR DEPOT BANQUE', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '8970' ;

insert into AD_Window (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,Value,name, ad_color_id, ad_image_id, description, entitytype, help, windowtype, winheight, winwidth, isactive, isbetafunctionality, isdefault ,ad_ctxarea_id, iscustomdefault) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Window'),'Depotenbanque','Dépôt en banque ',
(select AD_Color_ID from AD_Color where Name = ''),
(select AD_Image_ID from AD_Image where Name = ''),
'Dépôt en banque ',
'8970',
'',
'M',
0,
0,
'Y',
'N',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Window where Value = 'Depotenbanque' );

update AD_Window set Updated = sysdate, UpdatedBy = 0, name = 'Dépôt en banque ', ad_color_id = (select AD_Color_ID from AD_Color where Name = ''), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), description = 'Dépôt en banque ', entitytype = '8970', help = '', windowtype = 'M', winheight = 0, winwidth = 0, isactive = 'Y', isbetafunctionality = 'N', isdefault = 'N', ad_ctxarea_id = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), iscustomdefault = 'N' 
where Value = 'Depotenbanque' ;

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Depotenbanque'), 'nl_BE', 'Y', 'Dépôt en banque ','','Dépôt en banque '
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Depotenbanque') and ad_language = 'nl_BE');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Dépôt en banque ',Help = '',Name = 'Dépôt en banque ' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Depotenbanque') and ad_language = 'nl_BE';

insert into AD_Window_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Window_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Window_ID from AD_Window where Value='Depotenbanque'), 'fr_FR', 'Y', 'Dépôt en banque ','','Dépôt en banque '
 from dual  
where not exists (select 1 from AD_Window_Trl where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Depotenbanque') and ad_language = 'fr_FR');

update AD_Window_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Dépôt en banque ',Help = '',Name = 'Dépôt en banque ' where AD_Window_ID in (select AD_Window_ID from AD_Window where Value='Depotenbanque') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsCashDeposit','',
'8970',
'',
'Is Cash Deposit',
'',
'',
'',
'',
'Is Cash Deposit',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsCashDeposit' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '8970', help = '', name = 'Is Cash Deposit', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Is Cash Deposit', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsCashDeposit' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsCashDeposit'), 'nl_BE', 'Y', '','','Is Cash Deposit','','','','','Is Cash Deposit'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCashDeposit') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Is Cash Deposit',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Is Cash Deposit' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCashDeposit') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsCashDeposit'), 'fr_FR', 'Y', '','','Is Cash Deposit','','','','','Is Cash Deposit'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCashDeposit') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Is Cash Deposit',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Is Cash Deposit' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCashDeposit') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'Depotenbanque_Zoom',(select AD_Element_ID from AD_Element where ColumnName = 'Depotenbanque_Zoom'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'@SQL=SELECT AD_Window_ID FROM AD_Window WHERE Value LIKE ''Depotenbanque''',
'',
'8970',
22,
'',
'Dépôt en banque',
'',
0,
'',
'',
0,
'',
'Y',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'Depotenbanque_Zoom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'Depotenbanque_Zoom'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '@SQL=SELECT AD_Window_ID FROM AD_Window WHERE Value LIKE ''Depotenbanque''', description = '', entitytype = '8970', fieldlength = 22, help = '', name = 'Dépôt en banque', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'Depotenbanque_Zoom'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'nl_BE', 'Y', 'Dépôt en banque'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Dépôt en banque' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'fr_FR', 'Y', 'Dépôt en banque'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Dépôt en banque' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='Depotenbanque_Zoom' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsCashDeposit',(select AD_Element_ID from AD_Element where ColumnName = 'IsCashDeposit'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankAccountDoc'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'8970',
1,
'',
'Is Cash Deposit',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsCashDeposit'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsCashDeposit'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankAccountDoc'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = '8970', fieldlength = 1, help = '', name = 'Is Cash Deposit', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsCashDeposit'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')), 'nl_BE', 'Y', 'Is Cash Deposit'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Is Cash Deposit' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')), 'fr_FR', 'Y', 'Is Cash Deposit'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Is Cash Deposit' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_Charge_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_Charge_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'C_Charge'),
(select AD_Table_ID from AD_Table where TableName = 'ZSubPaymentRule'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Additional document charges',
'8970',
10,
'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',
'Charge',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_Charge_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_Charge_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_Charge'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'ZSubPaymentRule'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Additional document charges', entitytype = '8970', fieldlength = 10, help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)', name = 'Charge', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_Charge_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')), 'nl_BE', 'Y', 'Charge'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Charge' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')), 'fr_FR', 'Y', 'Charge'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Charge' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Dépôt en banque ','Dépôt en banque ',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'),
(select AD_Window_ID from AD_Window where Value = 'Depotenbanque'),
'',
'',
'8970',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'',
10,
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'',
'N',
'Y',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'Y',
(select AD_Tab_ID from AD_Tab where Value = '')
 from dual  
where not exists (select 1 from AD_Tab where Value = 'Dépôt en banque '  and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Dépôt en banque ', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_BankTransfert'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Depotenbanque'), commitwarning = '', description = '', entitytype = '8970', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), orderbyclause = '', seqno = 10, tablevel = 0, whereclause = '', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'N', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'Y', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Dépôt en banque '  and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')), 'nl_BE', 'Y', '','','','Dépôt en banque '
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')) and ad_language = 'nl_BE');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Dépôt en banque ' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')) and ad_language = 'nl_BE';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')), 'fr_FR', 'Y', '','','','Dépôt en banque '
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Dépôt en banque ' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Account Date',
'General Ledger Date',
7,
'',
'8970',
'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',
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
'@#Date@',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Account Date', description = 'General Ledger Date', displaylength = 7, displaylogic = '', entitytype = '8970', help = 'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@#Date@', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', 'General Ledger Date','The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Account Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'General Ledger Date',Help = 'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',Name = 'Account Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', 'General Ledger Date','The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Account Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'General Ledger Date',Help = 'The Account Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',Name = 'Account Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateAcct' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Bank Account',
'Account at the Bank',
22,
'',
'8970',
'The Bank Account identifies an account at this Bank.',
'',
180,
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
'@SQL=SELECT C_Bankaccount_ID FROM C_BankAccountDoc WHERE IsCashDeposit = ''Y'' AND AD_Org_ID = @AD_OrgTo_ID@',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Bank Account', description = 'Account at the Bank', displaylength = 22, displaylogic = '', entitytype = '8970', help = 'The Bank Account identifies an account at this Bank.', obscuretype = '', seqno = 180, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@SQL=SELECT C_Bankaccount_ID FROM C_BankAccountDoc WHERE IsCashDeposit = ''Y'' AND AD_Org_ID = @AD_OrgTo_ID@', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', 'Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account at the Bank',Help = 'The Bank Account identifies an account at this Bank.',Name = 'Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', 'Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account at the Bank',Help = 'The Bank Account identifies an account at this Bank.',Name = 'Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Bank Account',
'Account at the Bank',
22,
'',
'8970',
'The Bank Account identifies an account at this Bank.',
'',
130,
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
'@SQL=SELECT C_Bankaccount_ID FROM C_BankAccountDoc WHERE IsCashDeposit = ''Y'' AND AD_Org_ID = @AD_Org_ID@',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Bank Account', description = 'Account at the Bank', displaylength = 22, displaylogic = '', entitytype = '8970', help = 'The Bank Account identifies an account at this Bank.', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@SQL=SELECT C_Bankaccount_ID FROM C_BankAccountDoc WHERE IsCashDeposit = ''Y'' AND AD_Org_ID = @AD_Org_ID@', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', 'Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account at the Bank',Help = 'The Bank Account identifies an account at this Bank.',Name = 'Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', 'Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account at the Bank',Help = 'The Bank Account identifies an account at this Bank.',Name = 'Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_From_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Code d''imputation',
'Additional document charges',
22,
'',
'8970',
'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',
'',
160,
0,
'Y',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'@SQL=SELECT C_Charge_ID FROM ZSubPaymentRule WHERE C_Charge_ID=@C_Charge_ID@',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Code d''imputation', description = 'Additional document charges', displaylength = 22, displaylogic = '', entitytype = '8970', help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)', obscuretype = '', seqno = 160, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@SQL=SELECT C_Charge_ID FROM ZSubPaymentRule WHERE C_Charge_ID=@C_Charge_ID@', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', 'Additional document charges','The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)','Charge'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional document charges',Help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',Name = 'Charge' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', 'Additional document charges','The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)','Charge'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional document charges',Help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',Name = 'Charge' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Code d?imputation',
'Additional document charges',
22,
'',
'8970',
'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',
'',
210,
0,
'Y',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'@SQL=SELECT C_Charge_ID FROM ZSubPaymentRule WHERE C_Charge_ID=@C_Charge_ID@',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Code d?imputation', description = 'Additional document charges', displaylength = 22, displaylogic = '', entitytype = '8970', help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)', obscuretype = '', seqno = 210, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@SQL=SELECT C_Charge_ID FROM ZSubPaymentRule WHERE C_Charge_ID=@C_Charge_ID@', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', 'Additional document charges','The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)','Charge'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional document charges',Help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',Name = 'Charge' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', 'Additional document charges','The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)','Code d?imputation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Additional document charges',Help = 'The Charge indicates a type of Charge (e.g. Handling, Shipping or Restocking)',Name = 'Code d?imputation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ChargeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Type d''opération',
'Document type or rules',
22,
'',
'8970',
'The Document Type determines document sequence and processing rules',
'',
190,
0,
'Y',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'@SQL=SELECT C_DocType_ID FROM C_BankAccountDoc WHERE IsCashDeposit = ''Y''',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Type d''opération', description = 'Document type or rules', displaylength = 22, displaylogic = '', entitytype = '8970', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 190, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@SQL=SELECT C_DocType_ID FROM C_BankAccountDoc WHERE IsCashDeposit = ''Y''', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Document Type',
'Document type or rules',
22,
'',
'8970',
'The Document Type determines document sequence and processing rules',
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
'@SQL=SELECT to_number(MsgText) FROM AD_Message where Value like ''EC_DepotBanque_default''',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Document Type', description = 'Document type or rules', displaylength = 22, displaylogic = '', entitytype = '8970', help = 'The Document Type determines document sequence and processing rules', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@SQL=SELECT to_number(MsgText) FROM AD_Message where Value like ''EC_DepotBanque_default''', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', 'Document type or rules','The Document Type determines document sequence and processing rules','Document Type'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Document type or rules',Help = 'The Document Type determines document sequence and processing rules',Name = 'Document Type' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocType_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Due Date',
'Date when the payment is due',
7,
'',
'8970',
'Date when the payment is due without deductions or discount',
'',
60,
0,
'Y',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'@#Date@',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Due Date', description = 'Date when the payment is due', displaylength = 7, displaylogic = '', entitytype = '8970', help = 'Date when the payment is due without deductions or discount', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@#Date@', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', 'Date when the payment is due','Date when the payment is due without deductions or discount','Due Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date when the payment is due',Help = 'Date when the payment is due without deductions or discount',Name = 'Due Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', 'Date when the payment is due','Date when the payment is due without deductions or discount','Due Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Date when the payment is due',Help = 'Date when the payment is due without deductions or discount',Name = 'Due Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DueDate' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Organization',
'Organization valid for intercompany documents',
22,
'',
'8970',
'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.',
'',
170,
0,
'Y',
'N',
'Y',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'@SQL=SELECT MsgText FROM AD_Message where Value like ''EC_BankTransfertToDefault''',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Organization', description = 'Organization valid for intercompany documents', displaylength = 22, displaylogic = '', entitytype = '8970', help = 'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.', obscuretype = '', seqno = 170, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@SQL=SELECT MsgText FROM AD_Message where Value like ''EC_BankTransfertToDefault''', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', 'Organization valid for intercompany documents','The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.','Inter-Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organization valid for intercompany documents',Help = 'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.',Name = 'Inter-Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', 'Organization valid for intercompany documents','The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organization valid for intercompany documents',Help = 'The Inter Organization field identifies an Organization which can be used by this Organization for intercompany documents.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_OrgTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Organization',
'Organizational entity within Tenant',
22,
'',
'8970',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'',
120,
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
'@AD_Org_ID@',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 22, displaylogic = '', entitytype = '8970', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@AD_Org_ID@', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', 'Organizational entity within Tenant','An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Organizational entity within Tenant',Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Sub Payment Rule',
'',
22,
'',
'8970',
'',
'',
200,
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
'@SQL= SELECT spr.zsubpaymentrule_id FROM C_BankAccountDoc icd INNER JOIN ZSubPaymentRule spr ON (icd.zsubpaymentrule_id = spr.zsubpaymentrule_id) WHERE icd.IsCashDeposit    = ''Y'' AND spr.Name LIKE ''Espèces'' ',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement in'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Sub Payment Rule', description = '', displaylength = 22, displaylogic = '', entitytype = '8970', help = '', obscuretype = '', seqno = 200, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@SQL= SELECT spr.zsubpaymentrule_id FROM C_BankAccountDoc icd INNER JOIN ZSubPaymentRule spr ON (icd.zsubpaymentrule_id = spr.zsubpaymentrule_id) WHERE icd.IsCashDeposit    = ''Y'' AND spr.Name LIKE ''Espèces'' ', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', '','','Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sub Payment Rule' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', '','','Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sub Payment Rule' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRuleTo_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Sub Payment Rule',
'',
22,
'',
'8970',
'',
'',
150,
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
'@SQL= SELECT spr.zsubpaymentrule_id FROM C_BankAccountDoc icd INNER JOIN ZSubPaymentRule spr ON (icd.zsubpaymentrule_id = spr.zsubpaymentrule_id) WHERE icd.IsCashDeposit    = ''Y'' AND spr.Name LIKE ''Espèces'' ',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = 'Movement out'), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Sub Payment Rule', description = '', displaylength = 22, displaylogic = '', entitytype = '8970', help = '', obscuretype = '', seqno = 150, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@SQL= SELECT spr.zsubpaymentrule_id FROM C_BankAccountDoc icd INNER JOIN ZSubPaymentRule spr ON (icd.zsubpaymentrule_id = spr.zsubpaymentrule_id) WHERE icd.IsCashDeposit    = ''Y'' AND spr.Name LIKE ''Espèces'' ', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', '','','Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sub Payment Rule' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', '','','Sub Payment Rule'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sub Payment Rule' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'ZSubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Transaction Date',
'Transaction Date',
7,
'',
'8970',
'The Transaction Date indicates the date of the transaction.',
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
'@#Date@',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Transaction Date', description = 'Transaction Date', displaylength = 7, displaylogic = '', entitytype = '8970', help = 'The Transaction Date indicates the date of the transaction.', obscuretype = '', seqno = 40, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@#Date@', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', 'Transaction Date','The Transaction Date indicates the date of the transaction.','Transaction Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Date',Help = 'The Transaction Date indicates the date of the transaction.',Name = 'Transaction Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', 'Transaction Date','The Transaction Date indicates the date of the transaction.','Transaction Date'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Transaction Date',Help = 'The Transaction Date indicates the date of the transaction.',Name = 'Transaction Date' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'DateTrx' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')),
'Type d''Operation',
'Type d''Operation',
22,
'',
'8970',
'Type d''Operation',
'',
140,
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
'@SQL=SELECT C_DocType_ID FROM C_BankAccountDoc WHERE IsCashDeposit = ''Y''',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Dépôt en banque ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Depotenbanque')), name = 'Type d''Operation', description = 'Type d''Operation', displaylength = 22, displaylogic = '', entitytype = '8970', help = 'Type d''Operation', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '@SQL=SELECT C_DocType_ID FROM C_BankAccountDoc WHERE IsCashDeposit = ''Y''', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'nl_BE', 'Y', 'Type d''Operation','Type d''Operation','Type d''Operation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type d''Operation',Help = 'Type d''Operation',Name = 'Type d''Operation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))), 'fr_FR', 'Y', 'Type d''Operation','Type d''Operation','Type d''Operation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Type d''Operation',Help = 'Type d''Operation',Name = 'Type d''Operation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_DocTypeFrom_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_BankTransfert')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Dépôt en banque ' and ad_window_id in (select ad_window_id from ad_window where value = 'Depotenbanque'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Account Document_386' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank_158')),
'Is Cash Deposit',
'',
0,
'',
'8970',
'',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Account Document_386' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank_158')), name = 'Is Cash Deposit', description = '', displaylength = 0, displaylogic = '', entitytype = '8970', help = '', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))), 'nl_BE', 'Y', '','','Is Cash Deposit'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Is Cash Deposit' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))), 'fr_FR', 'Y', '','','Is Cash Deposit'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Is Cash Deposit' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashDeposit' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Sous méthode de paiement_Sous Methode de Paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sous méthode de paiement')),
'Code d?imputation',
'',
0,
'',
'8970',
'',
'',
70,
0,
'Y',
'N',
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Sous méthode de paiement_Sous Methode de Paiement' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sous méthode de paiement')), name = 'Code d?imputation', description = '', displaylength = 0, displaylogic = '', entitytype = '8970', help = '', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))), 'nl_BE', 'Y', '','','Code d?imputation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code d?imputation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))), 'fr_FR', 'Y', '','','Code d?imputation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Code d?imputation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Charge_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'ZSubPaymentRule')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Sous méthode de paiement_Sous Methode de Paiement' and ad_window_id in (select ad_window_id from ad_window where value = 'Sous méthode de paiement'))) and ad_language = 'fr_FR';

insert into AD_Menu (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,Value,name, action, description, entitytype, ad_form_id, ad_process_id, ad_task_id, ad_window_id, ad_workbench_id, ad_workflow_id, isactive, isreadonly, issummary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Menu'),'DepotBank','Dépôt en banque ',
'W',
'Dépôt en banque ',
'8970',
(select AD_Form_ID from AD_Form where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Task_ID from AD_Task where Name = ''),
(select AD_Window_ID from AD_Window where Value = 'Depotenbanque'),
(select AD_Workbench_ID from AD_Workbench where Name = ''),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Menu where Value = 'DepotBank' );

update AD_Menu set Updated = sysdate, UpdatedBy = 0, name = 'Dépôt en banque ', action = 'W', description = 'Dépôt en banque ', entitytype = '8970', ad_form_id = (select AD_Form_ID from AD_Form where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_task_id = (select AD_Task_ID from AD_Task where Name = ''), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Depotenbanque'), ad_workbench_id = (select AD_Workbench_ID from AD_Workbench where Name = ''), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), isactive = 'Y', isreadonly = 'N', issummary = 'N' 
where Value = 'DepotBank' ;

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='DepotBank'), 'nl_BE', 'Y', 'Dépôt en banque ','Dépôt en banque '
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='DepotBank') and ad_language = 'nl_BE');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Dépôt en banque ',Name = 'Dépôt en banque ' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='DepotBank') and ad_language = 'nl_BE';

insert into AD_Menu_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Menu_ID,AD_Language, IsTranslated,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Menu_ID from AD_Menu where Value='DepotBank'), 'fr_FR', 'Y', 'Dépôt en banque ','Dépôt en banque '
 from dual  
where not exists (select 1 from AD_Menu_Trl where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='DepotBank') and ad_language = 'fr_FR');

update AD_Menu_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Dépôt en banque ',Name = 'Dépôt en banque ' where AD_Menu_ID in (select AD_Menu_ID from AD_Menu where Value='DepotBank') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_BankTransfertToDefault','8970',
'1000000',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_BankTransfertToDefault' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '8970', msgtext = '1000000', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_BankTransfertToDefault' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_BankTransfertToDefault'), 'nl_BE', 'Y', '1000430',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BankTransfertToDefault') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '1000430',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BankTransfertToDefault') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_BankTransfertToDefault'), 'fr_FR', 'Y', '1000430',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BankTransfertToDefault') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '1000430',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_BankTransfertToDefault') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_DepotBanque_default','8970',
'1000076',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_DepotBanque_default' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '8970', msgtext = '1000076', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_DepotBanque_default' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_DepotBanque_default'), 'nl_BE', 'Y', '11111',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_DepotBanque_default') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '11111',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_DepotBanque_default') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_DepotBanque_default'), 'fr_FR', 'Y', '11111',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_DepotBanque_default') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '11111',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_DepotBanque_default') and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'TRANSFERT_PAS_POSSIBLE','8970',
'Un transfert à 0 n?est pas possible ',
'',
'E',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'TRANSFERT_PAS_POSSIBLE' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = '8970', msgtext = 'Un transfert à 0 n?est pas possible ', msgtip = '', msgtype = 'E', isactive = 'Y' 
where Value = 'TRANSFERT_PAS_POSSIBLE' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='TRANSFERT_PAS_POSSIBLE'), 'nl_BE', 'Y', 'Un transfert à 0 n?est pas possible ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='TRANSFERT_PAS_POSSIBLE') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Un transfert à 0 n?est pas possible ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='TRANSFERT_PAS_POSSIBLE') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='TRANSFERT_PAS_POSSIBLE'), 'fr_FR', 'Y', 'Un transfert à 0 n?est pas possible ',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='TRANSFERT_PAS_POSSIBLE') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Un transfert à 0 n?est pas possible ',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='TRANSFERT_PAS_POSSIBLE') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '38970 - EC-SFD0023 ? SORTIE DE CAISSE POUR DEPOT BANQUE', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1.0', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '8970' ;

INSERT INTO AD_TREENODEMM (AD_Client_ID, AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,AD_Tree_ID, Node_ID, Parent_ID, SeqNo) 
SELECT 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0, AD_Tree_ID, (select c.ad_menu_id from ad_menu c where c.value = 'DepotBank') ,0 ,999 
FROM AD_Tree t
WHERE  t.AD_Client_ID=0 AND t.IsActive='Y'  AND t.IsAllNodes='Y' AND t.TreeType='MM' 
AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND e.Node_ID=(select c.ad_menu_id from ad_menu c where c.value = 'DepotBank')); 

