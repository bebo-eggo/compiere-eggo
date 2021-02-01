UPDATE AD_Process_Para
SET DefaultValue='Y'
WHERE Name = 'Financement'
AND AD_Process_ID IN (SELECT AD_Process_ID FROM AD_Process WHERE Value='Z_BalanceTiers');

insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'BB1F','BB1F - BP BankAccount on paySel',
'BP BankAccount on paySel',
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
where not exists (select 1 from AD_EntityType where EntityType = 'BB1F' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'BB1F - BP BankAccount on paySel', description = 'BP BankAccount on paySel', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'BB1F' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BP_BankAccount_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BP_BankAccount_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_PaySelectionLine'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Bank Account of the Business Partner',
'BB1F',
22,
'The Partner Bank Account identifies the bank account to be used for this Business Partner',
'Partner Bank Account',
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
'(SELECT bpba.C_BP_BankAccount_ID FROM C_BP_BankAccount bpba WHERE bpba.C_BPartner_ID=C_PaySelectionLine.C_BPartner_ID AND bpba.IsActive=''Y'' AND ROWNUM=1)',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_BP_BankAccount_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BP_BankAccount_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_PaySelectionLine'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Bank Account of the Business Partner', entitytype = 'BB1F', fieldlength = 22, help = 'The Partner Bank Account identifies the bank account to be used for this Business Partner', name = 'Partner Bank Account', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'N', columnsql = '(SELECT bpba.C_BP_BankAccount_ID FROM C_BP_BankAccount bpba WHERE bpba.C_BPartner_ID=C_PaySelectionLine.C_BPartner_ID AND bpba.IsActive=''Y'' AND ROWNUM=1)', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BP_BankAccount_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine')), 'nl_NL', 'Y', 'Partner Bank Account'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Partner Bank Account' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine')), 'fr_FR', 'Y', 'Partner Bank Account'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Partner Bank Account' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment Selection Line_353' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Payment Selection_206')),
'Partner Bank Account',
'Bank Account of the Business Partner',
22,
'',
'BB1F',
'The Partner Bank Account identifies the bank account to be used for this Business Partner',
'',
200,
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
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection Line_353' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment Selection Line_353' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Payment Selection_206')), name = 'Partner Bank Account', description = 'Bank Account of the Business Partner', displaylength = 22, displaylogic = '', entitytype = 'BB1F', help = 'The Partner Bank Account identifies the bank account to be used for this Business Partner', obscuretype = '', seqno = 200, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection Line_353' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection Line_353' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'))), 'nl_NL', 'Y', 'Bank Account of the Business Partner','The Partner Bank Account identifies the bank account to be used for this Business Partner','Partner Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection Line_353' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Bank Account of the Business Partner',Help = 'The Partner Bank Account identifies the bank account to be used for this Business Partner',Name = 'Partner Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection Line_353' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection Line_353' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'))), 'fr_FR', 'Y', 'Bank Account of the Business Partner','The Partner Bank Account identifies the bank account to be used for this Business Partner','Partner Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection Line_353' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Bank Account of the Business Partner',Help = 'The Partner Bank Account identifies the bank account to be used for this Business Partner',Name = 'Partner Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BP_BankAccount_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelectionLine')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection Line_353' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'BB1F - BP BankAccount on paySel', description = 'BP BankAccount on paySel', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'BB1F' ;


UPDATE AD_Field f1
SET SeqNo = (
	SELECT SeqNo + 2
	FROM AD_Field f2 
	WHERE f1.AD_Tab_ID = f2.AD_Tab_ID
	AND f2.AD_Column_ID=(SELECT AD_Column_ID FROM AD_Column WHERE ColumnName='C_BPartner_ID' AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='C_PaySelectionLine'))   
)
WHERE f1.AD_column_ID = (SELECT AD_Column_ID FROM AD_Column WHERE ColumnName='C_BP_BankAccount_ID' AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='C_PaySelectionLine'));

UPDATE AD_Field f1
SET SeqNo = (
	SELECT SeqNo + 2
	FROM AD_Field f2 
	WHERE f1.AD_Tab_ID = f2.AD_Tab_ID
	AND f2.AD_Column_ID=(SELECT AD_Column_ID FROM AD_Column WHERE ColumnName='Z_Com' AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='C_PaySelectionLine'))   
)
WHERE f1.AD_column_ID = (SELECT AD_Column_ID FROM AD_Column WHERE ColumnName='Processed' AND AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName='C_PaySelectionLine'));
